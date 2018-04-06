using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Floor : MonoBehaviour {
	public GameObject[,] spaces;
	public int length;
	public int width;
	public GameObject obstaclePrefab;
	public GameObject endSpacePrefab;

	// Use this for initialization
	void Start () {
		length = 10;
		width = 10;
		spaces = new GameObject[length, width];

		for (int i = 0; i < length; i++) {
			for (int j = 0; j < width; j++) {
				GameObject newSpace;
				float rand = Random.Range (0f, 100f);

				if (rand < 15f && i > 1 && i < 8 && j > 1 && j < 8) {
					newSpace = GameObject.Instantiate (obstaclePrefab, new Vector3 (j + 0.5f, 0.5f, i + 0.5f), Quaternion.identity);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = true;
				} else if (i == length - 1 && j == width - 1){
					newSpace = GameObject.Instantiate (endSpacePrefab, new Vector3 (j + 0.5f, 0.5f, i + 0.5f), Quaternion.identity);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = false;
				} else {
					newSpace = new GameObject("Space " + i + "," + j + "");
					newSpace.transform.position = new Vector3 (j + 0.5f, 0f, i + 0.5f);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = false;
				}

				// Start Space
				if (i == 0 && j == 0) {
					newSpace.GetComponent<Space> ().occupied = true;
					newSpace.GetComponent<Space> ().isStartPosition = true;
					newSpace.GetComponent<Space> ().isEndPosition = false;
				} 
				// End Space
				else if (i == length - 1 && j == width - 1) {
					newSpace.GetComponent<Space> ().occupied = false;
					newSpace.GetComponent<Space> ().isStartPosition = false;
					newSpace.GetComponent<Space> ().isEndPosition = true;
				}
				// Other Space
				else {
					if (newSpace.GetComponent<Space> ().isObstacle == true) {
						newSpace.GetComponent<Space> ().occupied = true;
					} else {
						newSpace.GetComponent<Space> ().occupied = false;
					}

					newSpace.GetComponent<Space> ().isStartPosition = false;
					newSpace.GetComponent<Space> ().isEndPosition = false;
				}

				spaces [i, j] = newSpace;
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
