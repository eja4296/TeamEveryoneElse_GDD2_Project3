using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {
	// Attributes
	public int positionOnFloorX;
	public int positionOnFloorZ;
	public float yPosition;
	public Floor floor;
	public bool moved;
	public bool moving;
	Vector3 startPos;
	Vector3 endPos;
	public int currentFloor;
	public int newXPos;
	public int newZPos;
	public float fracJourney;
	public float speed;
	public float startTime;
	public float journeyLength;

	// Use this for initialization
	void Start () {
		floor = GameObject.Find ("Floor").GetComponent<Floor> ();
		positionOnFloorX = 0;
		positionOnFloorZ = 0;
		yPosition = this.transform.position.y;
		moved = false;
		moving = false;
		startPos = Vector3.zero;
		endPos = Vector3.zero;
		newXPos = 0;
		newZPos = 0;
		speed = 2f;

		if (PlayerPrefs.GetInt ("currentFloor") != null) {
			currentFloor = PlayerPrefs.GetInt ("currentFloor");
		} else{
			currentFloor = 1;
			PlayerPrefs.SetInt ("currentFloor", currentFloor);
		}

	}
	
	// Update is called once per frame
	void Update () {
		// Not currently used, but may need to be at some point
		int prevXPos = positionOnFloorX;
		int prevZPos = positionOnFloorZ;

		// Check 'wasd' keys for movement
		// Forward movement with 'W'
		// Only move if player is not already moving
		if (Input.GetKey (KeyCode.W) && moved == false && moving == false && fracJourney == 0f) {
			// Check if player is at edge of floor
			if (positionOnFloorX < floor.length - 1) {
				// Update player's grid position
				newXPos += 1;
				// If the new grid position is occupied, reset newPos and don't move
				if (floor.spaces [newXPos, positionOnFloorZ].GetComponent<Space> ().occupied == false) {
					moved = true;
				} else {
					newXPos -= 1;
				}
			} else {
				// Can't move
			}
		}
		// Backward movement with 'S'
		// Only move if player is not already moving
		else if (Input.GetKey (KeyCode.S) && moved == false && moving == false && fracJourney == 0f) {
			// Check if player is at edge of floor
			if (positionOnFloorX > 0) {
				// Update player's grid position
				newXPos -= 1;
				// If the new grid position is occupied, reset newPos and don't move
				if (floor.spaces [newXPos, positionOnFloorZ].GetComponent<Space> ().occupied == false) {
					//newXPos -= 1;
					moved = true;
				} else {
					newXPos += 1;
				}
			} else {
				// Can't move
			}
		}
		// Left movement with 'A'
		// Only move if player is not already moving
		else if (Input.GetKey (KeyCode.A) && moved == false && moving == false && fracJourney == 0f) {
			// Check if player is at edge of floor
			if (positionOnFloorZ > 0) {
				// Update player's grid position
				newZPos -= 1;
				// If the new grid position is occupied, reset newPos and don't move
				if (floor.spaces [positionOnFloorX, newZPos].GetComponent<Space> ().occupied == false) {
					//newZPos -= 1;
					moved = true;
				} else {
					newZPos += 1;
				}
			} else {
				// Can't move
			}
		}
		// Right movement with 'D'
		// Only move if player is not already moving
		else if (Input.GetKey (KeyCode.D) && moved == false && moving == false && fracJourney == 0f) {
			// Check if player is at edge of floor
			if (positionOnFloorZ < floor.width - 1) {
				// Update player's grid position
				newZPos += 1;
				// If the new grid position is occupied, reset newPos and don't move
				if (floor.spaces [positionOnFloorX, newZPos].GetComponent<Space> ().occupied == false) {
					//newZPos += 1;
					moved = true;
				} else {
					newZPos -= 1;
				}// If the new grid position is occupied, reset newPos and don't move
			} else {
				// Can't move
			}
		}

		// If a key was pressed to move the player
		if (moved) {
			// Set the start and end position of the movement for the lerp
			startPos = floor.spaces [positionOnFloorX, positionOnFloorZ].transform.position;
			endPos = floor.spaces [newXPos, newZPos].transform.position;

			// Set the start time and length of the travel distance
			startTime = Time.time;
			journeyLength = Vector3.Distance (startPos, endPos);

			// Set moving to true
			moving = true;
			moved = false;
		}

		// Lerp if player is moving
		if (moving) {
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
				floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().occupied = false;

				// Set the player's previous position to the current position
				prevXPos = positionOnFloorX;
				prevZPos = positionOnFloorZ;

				// Set the player's current position to the new position
				positionOnFloorX = newXPos;
				positionOnFloorZ = newZPos;

				floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().occupied = true;
			}
		}

		// Open new scene/puzzle when player reaches end position
		if (floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().isEndPosition == true) {
			Debug.Log ("You win!");
			currentFloor++;
			PlayerPrefs.SetInt ("currentFloor", currentFloor);
			Application.LoadLevel ("Level" + 2 + "");
		}
	}
}
