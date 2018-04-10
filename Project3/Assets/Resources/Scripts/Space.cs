using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Space : MonoBehaviour {
	// Attributes
	//public Vector3 position;
	public bool occupied;
	public bool isStartPosition;
	public bool isEndPosition;
	public bool isObstacle;

	public bool isMovingSpace;
	public int direction;

	public bool isMovableObstacle;

	public bool isBreakableSpace;
	public bool wasVisited;



	// Use this for initialization
	void Start () {
		//position = this.transform.position;

	}
	
	// Update is called once per frame
	void Update () {
		if (isMovingSpace && occupied) {
			MovingSpace ();
		}
	}

	public void MovingSpace(){
		Debug.Log("moving player");
		Player plyr = GameObject.Find("Player").GetComponent<Player>();
		Floor flr = plyr.floor;

		// Check if player is at edge of floor
		// Forward, direction = 0
		if (direction == 0 && plyr.positionOnFloorX < flr.length - 1) {
			// Update player's grid position
			plyr.newXPos += 1;
			// If the new grid position is occupied, reset newPos and don't move
			if (flr.spaces [plyr.newXPos, plyr.positionOnFloorZ].GetComponent<Space> ().occupied == false) {
				plyr.moved = true;
			} else {
				plyr.newXPos -= 1;
			}
		}
		// Backward, direction = 2
		else if (direction == 2 && plyr.positionOnFloorX > 0) {
			// Update player's grid position
			plyr.newXPos -= 1;
			// If the new grid position is occupied, reset newPos and don't move
			if (flr.spaces [plyr.newXPos, plyr.positionOnFloorZ].GetComponent<Space> ().occupied == false) {
				plyr.moved = true;
			} else {
				plyr.newXPos += 1;
			}
		}
		// Left, direction = 1
		else if (direction == 1 && plyr.positionOnFloorZ > 0) {
			// Update player's grid position
			plyr.newZPos -= 1;
			// If the new grid position is occupied, reset newPos and don't move
			if (flr.spaces [plyr.positionOnFloorX, plyr.newZPos].GetComponent<Space> ().occupied == false) {
				plyr.moved = true;
			} else {
				plyr.newZPos += 1;
			}
		}
		// Right, direction = 3
		else if (direction == 3 && plyr.positionOnFloorZ < flr.width -1) {
			// Update player's grid position
			plyr.newZPos += 1;
			// If the new grid position is occupied, reset newPos and don't move
			if (flr.spaces [plyr.positionOnFloorX, plyr.newZPos].GetComponent<Space> ().occupied == false) {
				plyr.moved = true;
			} else {
				plyr.newZPos -= 1;
			}
		}

		occupied = false;
	}
}
