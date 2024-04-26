#ifndef __LoopSubdivision_h__
#define __LoopSubdivision_h__
#include <unordered_map>
#include <vector>
#include "Mesh.h"

inline void LoopSubdivision(TriangleMesh<3>& mesh)
{
	std::vector<Vector3>& old_vtx=mesh.Vertices();
	std::vector<Vector3i>& old_tri=mesh.Elements();
	std::vector<Vector3> new_vtx;		////vertex array for the new mesh, initially the same as old vertices
	std::vector<Vector3i> new_tri;		////element array for the new mesh, initially empty
	
	new_vtx=old_vtx;	////copy all the old vertices to the new_vtx array

	// making edge_odd_vtx_map to avoid duplicate odd vertices and to find the new odd vertex on each edge when updating their positions

	std::unordered_map<Vector2i, int> edge_odd_vtx_map;

	// making vertex-vertex map to find even neighbors when updating even vertices' positions. This doesn't change after initilization,
	// since it's only for the pre-existing vertices.

	std::unordered_map<int, std::vector<int>> vtx_vtx_map; // maps vertices to neighbors

	std::vector<Vector3>& vtx = mesh.Vertices();
	std::vector<Vector3i>& tri = mesh.Elements();

	for (int i = 0; i < tri.size(); i++){ // for each triangle
		Vector3i& t = tri[i];
		for(int j = 0; j < 3; j++) { // for each vertex of the triangle
			if (vtx_vtx_map.find(t[j]) == vtx_vtx_map.end()) { // if vertex not in map, add to map
				vtx_vtx_map[t[j]] = std::vector<int>();
			}
			std::vector<int>& nbs = vtx_vtx_map[t[j]]; // get current array of neighbors of vertex
			for (int k = 0; k < 3; k++) { // add other 2 vertices to array, skipping itself and duplicates
				if (t[k] == t[j]) continue;
				if (std::find(nbs.begin(), nbs.end(), t[k]) != nbs.end()) continue;
				nbs.push_back(t[k]);
			}
		}
	}

	// making edge-triangle map to find opposite vertices when updating odd vertices' positions

	std::unordered_map<Vector2i, Vector2i> edge_tri_map;

	for (int i = 0; i < tri.size(); i++){ // for each triangle
		Vector3i& t = tri[i];
		for(int j = 0; j < 3; j++) { // for each edge of the triangle
			Vector2i edge = Vector2i(t[j], t[(j+1) % 3]); // make an edge using 2 vertices
			if (edge[0] > edge[1]) { // sort
				int tmp = edge[0];
				edge[0] = edge[1];
				edge[1] = tmp;
			}
			if (edge_tri_map.find(edge) == edge_tri_map.end()) { // add triangle index
				edge_tri_map[edge] = Vector2i(i, -1); // add to index 0 if edge is new
			} else {
				edge_tri_map[edge][1] = i; // add to index 1 if edge already exists
			}
		}
	}


	////step 1: add mid-point vertices and triangles
	////for each old triangle, 
	////add three new vertices (in the middle of each edge) to new_vtx 
	////add four new triangles to new_tri

	for (Vector3i& t: old_tri) {
		Vector3i mids = Vector3i(); // track the odd vertices

		for(int i = 0; i < 3; i++) { // for each edge of the triangle
			Vector2i edge = Vector2i(t[i], t[(i+1) % 3]);
			if (edge[0] > edge[1]) { // sort
				int tmp = edge[0];
				edge[0] = edge[1];
				edge[1] = tmp;
			}
			if (edge_odd_vtx_map.find(edge) != edge_odd_vtx_map.end()) { // if odd vertex already exists at this edge
				mids[i] = edge_odd_vtx_map[edge]; // track the existing odd vertex, continue
				continue;
			}
			Vector3 mid = (old_vtx[edge[0]] + old_vtx[edge[1]]) / 2.0; // if odd vertex does not exist yet, put it in middle of edge
			new_vtx.push_back(mid); // add to new vertex array
			edge_odd_vtx_map[edge] = new_vtx.size() - 1; // map edge to vertex index (size - 1)
			mids[i] = new_vtx.size() - 1; // track new odd vertex
		}

		// create and add 4 new triangles
		Vector3i Triangle1 = Vector3i(t[0], mids[0], mids[2]);
		Vector3i Triangle2 = Vector3i(mids[0], t[1], mids[1]);
		Vector3i Triangle3 = Vector3i(mids[2], mids[1], t[2]);
		Vector3i Triangle4 = Vector3i(mids[0], mids[1], mids[2]);

		new_tri.push_back(Triangle1);
		new_tri.push_back(Triangle2);
		new_tri.push_back(Triangle3);
		new_tri.push_back(Triangle4);
	}

	////step 2: update the position for each new mid-point vertex: 
	////for each mid-point vertex, find its two end-point vertices A and B, 
	////and find the two opposite-side vertices on the two incident triangles C and D,
	////then update the new position as .375*(A+B)+.125*(C+D)

	for (auto& e: edge_tri_map) { // for each edge
		Vector2i edge = e.first; // edge
		Vector2i triangles = e.second; // 2 neighboring triangles

		int odd_v = edge_odd_vtx_map[edge]; // odd vertex on this edge
		int t0 = triangles[0];
		int t1 = triangles[1];
		int opp_v0;
		int opp_v1;

		for (int i = 0; i < 3; i++) {
			if (old_tri[t0][i] != edge[0] && old_tri[t0][i] != edge[1]) {
				opp_v0 = old_tri[t0][i]; // opposite (3rd) vertex of triangle 0
				break;
			}
		}

		for (int i = 0; i < 3; i++) {
			if (old_tri[t1][i] != edge[0] && old_tri[t1][i] != edge[1]) {
				opp_v1 = old_tri[t1][i]; // opposite (3rd) vertex of triangle 1
				break;
			}
		}

		// take weighted average of vertices on same edge and opposite vertices
		new_vtx[odd_v] = 3./8. * old_vtx[edge[0]] + 3./8. * old_vtx[edge[1]]
						+ 1./8. * old_vtx[opp_v0] + 1./8. * old_vtx[opp_v1]; // less weight on opposite vertices
	}

	////step 3: update vertices of each old vertex
	////for each old vertex, find its incident old vertices, and update its position according its incident vertices

	std::vector<Vector3> updated = new_vtx; // track updated vertices separately so they dont mess up future updates

	for (int i = 0; i < old_vtx.size(); i++) { // for each even vertex
		std::vector<int> nbs = vtx_vtx_map[i]; 
		int n = nbs.size(); // number of neighbors
		double b; // weight

		if (n > 3) { // if more than 3 neighbors, weight = 3/(8n)
			b = 3. / (8. * n);
		} else { // if <= 3 neighbors, weight = 3/16
			b = 3. / 16.;
		}

		// update vertex to weighted average of itself and its even neighbors
		updated[i] = old_vtx[i] * (1 - n * b);
		for (int nb: nbs) {
			updated[i] += old_vtx[nb] * b;
		}
		
	}

	new_vtx = updated;

	////update subdivided vertices and triangles onto the input mesh
	old_vtx=new_vtx;
	old_tri=new_tri;
}

#endif