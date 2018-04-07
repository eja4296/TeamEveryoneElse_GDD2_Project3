using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovableObstacle : MonoBehaviour {
	// Attributes
	public int positionOnFloorX;
	public int positionOnFloorZ;
	public Floor floor;
	public int newXPos;
	public int newZPos;
	public bool moved;
	public bool moving;
	public int direction;
	public Vector3 startPos;
	public Vector3 endPos;
	public float fracJourney;
	public float speed;
	public float startTime;
	public float journeyLength;


	// Use this for initialization
	void Start () {
		floor = GameObject.Find ("Floor").GetComponent<Floor> ();
		moving = false;
		moved = false;
		direction = -1;
		startPos = Vector3.zero;
		endPos = Vector3.zero;
		speed = 2f;
	}
	
	// Update is called once per frame
	void Update () {
		if (moved) {
			Moved ();
		}
		if (moving) {
			Moving ();
		}

	}

	void Moved(){
		newXPos = positionOnFloorX;
		newZPos = positionOnFloorZ;

		// Forward
		if (direction == 0) {
			newXPos += 1;

		} 
		// Left
		else if (direction == 1) {
			newZPos -= 1;
	
		} 
		// Backward
		else if (direction == 2) {
			newXPos -= 1;
		
		} 
		// Right
		else if (direction == 3) {
			newZPos += 1;
		
		}

		startPos = floor.spaces [positionOnFloorX, positionOnFloorZ].transform.position;
		endPos = floor.spaces [newXPos, newZPos].transform.position;
		startPos.y = 0.5f;
		endPos.y = 0.5f;

		// Set the start time and length of the travel distance
		startTime = Time.time;
		journeyLength = Vector3.Distance (startPos, endPos);

		// Set moving to true
		moving = true;
		moved = false;

	}

	void Moving(){
		// set up lerp
		float distCovered = (Time.time - startTime) * speed;
		fracJourney = distCovered / journeyLength;

		// Lerp if the player has not reached the endPos (when fracJourney reaches 1)
		if (fracJourney <= 1) {
			this.transform.position = Vector3.Lerp (startPos, endPos, fracJourney);
		} else {
			// Update player's position to the new one it has reached
			fracJourney = 0f;
			moving = false;

			// Make the player's current position unoccupied
			floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().isMovableObstacle = false;

			// Set the player's current position to the new position
			positionOnFloorX = newXPos;
			positionOnFloorZ = newZPos;

			floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().isMovableObstacle = true;
		}
	}
}
