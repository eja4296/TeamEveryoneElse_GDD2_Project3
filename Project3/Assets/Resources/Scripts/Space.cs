﻿using System.Collections;
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

	Component halo;


	// Use this for initialization
	void Start () {
		//position = this.transform.position;
		halo = this.gameObject.GetComponent("Halo");
	}
	
	// Update is called once per frame
	void Update () {
		if (isMovingSpace && occupied) {
			MovingSpace ();


			/*
			if(turnOn)
			{
				halo.GetType().GetProperty("enabled").SetValue(halo, true, null);
			}
			else
			{
				halo.GetType().GetProperty("enabled").SetValue(halo, false, null);
			*/
		} else if (isMovingSpace && !occupied){
			
		}
	}

	public void MovingSpace(){
		Debug.Log("moving player");
		Player plyr = GameObject.Find("Player(Clone)").GetComponent<Player>();
		Floor flr = plyr.floor;

		// Check if player is at edge of floor
		// Forward, direction = 2
		if (direction == 2 && plyr.positionOnFloorX < flr.length - 1) {
			// Update player's grid position
			plyr.newXPos += 1;
			// If the new grid position is occupied, reset newPos and don't move
			if (flr.spaces [plyr.newXPos, plyr.positionOnFloorZ].GetComponent<Space> ().occupied == false) {
				plyr.moved = true;
				plyr.direction = 0;
				//plyr.knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
			} else {
				plyr.newXPos -= 1;
			}
		}
		// Backward, direction = 0
		else if (direction == 0 && plyr.positionOnFloorX > 0) {
			// Update player's grid position
			plyr.newXPos -= 1;
			// If the new grid position is occupied, reset newPos and don't move
			if (flr.spaces [plyr.newXPos, plyr.positionOnFloorZ].GetComponent<Space> ().occupied == false) {
				plyr.moved = true;
				plyr.direction = 2;
				//plyr.knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
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
				plyr.direction = 3;
				//plyr.knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
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
				plyr.direction = 1;
				//plyr.knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
			} else {
				plyr.newZPos -= 1;
			}
		}

		occupied = false;

	}

	public void EnableHalo(){
		halo.GetType ().GetProperty ("enabled").SetValue (halo, true, null);
		//halo.GetType ().GetProperty ("size").SetValue (halo, 2, null);

	}

	public void DisableHalo(){
		halo.GetType ().GetProperty ("enabled").SetValue (halo, false, null);
	}
}
