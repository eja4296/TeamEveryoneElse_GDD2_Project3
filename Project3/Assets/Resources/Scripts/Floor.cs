using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Floor : MonoBehaviour {
	public GameObject[,] spaces;
	public int length;
	public int width;
	public GameObject normalSpacePrefab;
	public GameObject obstaclePrefab;
	public GameObject endSpacePrefab;
	public GameObject forwardSpacePrefab;
	public GameObject movableObstaclePrefab;
	public GameObject breakableSpacePrefab;
	public Material breakableSpaceMat;
	public List<GameObject> movableObjects;
	public float xOffset;
	public float zOffset;
	public GameObject enemyPrefab;

	// Use this for initialization
	void Start () {
		length = 10;
		width = 10;
		spaces = new GameObject[length, width];
		xOffset = this.transform.position.x + 0.5f - (width/2);
		zOffset = this.transform.position.z + 0.5f - (length/2);
		movableObjects = new List<GameObject> ();
		CreateLevel1 ();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void CreateLevel1(){

		for (int i = 0; i < length; i++) {
			for (int j = 0; j < width; j++) {
				GameObject newSpace;
				float rand = Random.Range (0f, 100f);
				// Obstacle Space
				if (rand < 10f && i > 1 && i < 8 && j > 1 && j < 8) {
					newSpace = GameObject.Instantiate (obstaclePrefab, new Vector3 (j + xOffset, 0.5f, i + zOffset), Quaternion.identity);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = true;
					newSpace.GetComponent<Space> ().isMovingSpace = false;
					newSpace.GetComponent<Space> ().direction = -1;
					newSpace.GetComponent<Space> ().isMovableObstacle = false;
					newSpace.GetComponent<Space> ().isBreakableSpace = false;
					newSpace.GetComponent<Space> ().wasVisited = false;
				} 
				// End Space
				else if (i == length - 1 && j == width - 1) {
					newSpace = GameObject.Instantiate (endSpacePrefab, new Vector3 (j + xOffset, 0.5f, i + zOffset), Quaternion.identity);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = false;
					newSpace.GetComponent<Space> ().isMovingSpace = false;
					newSpace.GetComponent<Space> ().direction = -1;
					newSpace.GetComponent<Space> ().isMovableObstacle = false;
					newSpace.GetComponent<Space> ().isBreakableSpace = false;
					newSpace.GetComponent<Space> ().wasVisited = false;
				} 
				// Forward Moving Space
				else if (rand > 20f && rand < 30f && i > 1 && i < 8 && j > 1 && j < 8) {
					newSpace = GameObject.Instantiate (forwardSpacePrefab, new Vector3 (j + xOffset, 0f, i + zOffset), Quaternion.identity);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = false;
					newSpace.GetComponent<Space> ().isMovingSpace = true;
					newSpace.GetComponent<Space> ().direction = 0;
					newSpace.transform.Rotate (new Vector3 (0f, 180f, 0f));
					newSpace.GetComponent<Space> ().isMovableObstacle = false;
					newSpace.GetComponent<Space> ().isBreakableSpace = false;
					newSpace.GetComponent<Space> ().wasVisited = false;
				}
				// Movable Obstalce
				else if (rand > 40f && rand < 50f && i > 1 && i < 8 && j > 1 && j < 8) {
					newSpace = GameObject.Instantiate (normalSpacePrefab, new Vector3 (j + xOffset, 0f, i + zOffset), Quaternion.identity);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = false;
					newSpace.GetComponent<Space> ().isMovingSpace = false;
					newSpace.GetComponent<Space> ().isMovableObstacle = true;
					newSpace.GetComponent<Space> ().direction = -1;
					GameObject movableObstacleObj = GameObject.Instantiate (movableObstaclePrefab, new Vector3 (j + xOffset, 0.5f, i + zOffset), Quaternion.identity);
					movableObstacleObj.AddComponent<MovableObstacle> ();
					movableObstacleObj.GetComponent<MovableObstacle> ().positionOnFloorX = i;
					movableObstacleObj.GetComponent<MovableObstacle> ().positionOnFloorZ = j;
					movableObjects.Add (movableObstacleObj);
					newSpace.GetComponent<Space> ().isBreakableSpace = false;
					newSpace.GetComponent<Space> ().wasVisited = false;
				}
				// Breakable Spaces
				else if (rand > 60f && rand < 70f && i > 1 && i < 8 && j > 1 && j < 8) {
					newSpace = GameObject.Instantiate (breakableSpacePrefab, new Vector3 (j + xOffset, 0f, i + zOffset), Quaternion.identity);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = false;
					newSpace.GetComponent<Space> ().isMovingSpace = false;
					newSpace.GetComponent<Space> ().isMovableObstacle = false;
					newSpace.GetComponent<Space> ().direction = -1;
					newSpace.GetComponent<Space> ().isBreakableSpace = true;
					newSpace.GetComponent<Space> ().wasVisited = false;
				}
				// Normal Space
				else {
					//newSpace = new GameObject("Space " + i + "," + j + "");
					newSpace = GameObject.Instantiate (normalSpacePrefab, new Vector3 (j + xOffset, 0f, i + zOffset), Quaternion.identity);
					//newSpace.transform.position = new Vector3 (j + xOffset, 0.5f, i + zOffset);
					newSpace.AddComponent<Space> ();
					newSpace.GetComponent<Space> ().isObstacle = false;
					newSpace.GetComponent<Space> ().isMovingSpace = false;
					newSpace.GetComponent<Space> ().direction = -1;
					newSpace.GetComponent<Space> ().isMovableObstacle = false;
					newSpace.GetComponent<Space> ().isBreakableSpace = false;
					newSpace.GetComponent<Space> ().wasVisited = false;
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

				// create an enemy
				if (i == 9 && j == 0) {
					GameObject enemy = GameObject.Instantiate(enemyPrefab, new Vector3 (j + xOffset, 0.5f, i + zOffset), Quaternion.identity);
					enemy.AddComponent<Enemy> ();

					Debug.Log ("adding enemy script");
					enemy.GetComponent<Enemy> ().positionOnFloorX = i;
					enemy.GetComponent<Enemy> ().positionOnFloorZ = j;
					newSpace.GetComponent<Space> ().occupied = true;
				}

				spaces [i, j] = newSpace;
			}
		}
	}
}
