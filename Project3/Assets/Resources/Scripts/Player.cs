using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {
	public int positionOnFloorX;
	public int positionOnFloorZ;
	public float yPosition;
	public Floor floor;
	public bool moved;
	public int currentFloor;
	//public bool movingForward;
	//public bool movingBackward;
	//public bool movingLeft;
	//public bool movingRight;
	public Rigidbody rb;



	static float t = 0f;

	// Use this for initialization
	void Start () {
		floor = GameObject.Find ("Floor").GetComponent<Floor> ();
		positionOnFloorX = 0;
		positionOnFloorZ = 0;
		yPosition = this.transform.position.y;
		moved = false;
		//movingForward = false;
		//movingBackward = false;
		//movingLeft = false;
		//movingRight = false;
		rb = this.GetComponent<Rigidbody> ();

		if (PlayerPrefs.GetInt ("currentFloor") != null) {
			currentFloor = PlayerPrefs.GetInt ("currentFloor");
		} else{
			currentFloor = 1;
			PlayerPrefs.SetInt ("currentFloor", currentFloor);
		}

	}
	
	// Update is called once per frame
	void Update () {
		int newXPos = positionOnFloorX;
		int newZPos = positionOnFloorZ;
		int prevXPos = positionOnFloorX;
		int prevZPos = positionOnFloorZ;

		if (Input.GetKeyDown (KeyCode.W) && moved == false && rb.velocity.magnitude == 0) {
			
			if (positionOnFloorX < floor.length - 1) {
				newXPos += 1;
				moved = true;
				//movingForward = true;
			} else {
				// Can't move
			}
		}
		else if (Input.GetKeyDown (KeyCode.S) && moved == false && rb.velocity.magnitude == 0) {

			if (positionOnFloorX > 0) {
				newXPos -= 1;
				moved = true;
				//movingBackward = true;
			} else {
				// Can't move
			}
		}
		else if (Input.GetKeyDown (KeyCode.A) && moved == false && rb.velocity.magnitude == 0) {

			if (positionOnFloorZ > 0) {
				newZPos -= 1;
				moved = true;
				//movingLeft = true;
			} else {
				// Can't move
			}
		}
		else if (Input.GetKeyDown (KeyCode.D) && moved == false && rb.velocity.magnitude == 0) {

			if (positionOnFloorZ < floor.width - 1) {
				newZPos += 1;
				moved = true;
				//movingRight = true;
			} else {
				// Can't move
			}
		}

		if (moved && floor.spaces [newXPos, newZPos].GetComponent<Space> ().occupied == false) {
			floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().occupied = false;
			prevXPos = positionOnFloorX;
			prevZPos = positionOnFloorZ;
			positionOnFloorX = newXPos;
			positionOnFloorZ = newZPos;

			Vector3 distance = floor.spaces[positionOnFloorX, positionOnFloorZ].transform.position - floor.spaces[prevXPos, prevZPos].transform.position;
			distance.Normalize ();
			//rb.rotation = new Quaternion (distance.x, distance.y, distance.z, 0);
			rb.velocity = distance * 5;

			floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().occupied = true;
			moved = false;
		} else {
			moved = false;
		}

		if (floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().isEndPosition == true) {
			Debug.Log ("You win!");
			currentFloor++;
			PlayerPrefs.SetInt ("currentFloor", currentFloor);
			Application.LoadLevel ("Level" + 2 + "");
		}

		/*
		if (rb.velocity.magnitude != 0) {
			if (movingForward && this.transform.position.x - 0.5 > floor.spaces [positionOnFloorX, positionOnFloorZ].transform.position.x) {
				rb.velocity = Vector3.zero;
				movingForward = false;
			} else if (movingBackward && this.transform.position.x - 0.5 < floor.spaces [positionOnFloorX, positionOnFloorZ].transform.position.x) {
				rb.velocity = Vector3.zero;
				movingBackward = false;
			} else if (movingLeft && this.transform.position.z - 0.5 > floor.spaces [positionOnFloorX, positionOnFloorZ].transform.position.z) {
				rb.velocity = Vector3.zero;
				movingLeft = false;
			} else if (movingRight && this.transform.position.z - 0.5 > floor.spaces [positionOnFloorX, positionOnFloorZ].transform.position.z) {
				rb.velocity = Vector3.zero;
				movingRight = false;
			}
		} else {
			movingForward = false;
			movingForward = false;
			movingLeft = false;
			movingRight = false;
		}
		*/
	}
}
