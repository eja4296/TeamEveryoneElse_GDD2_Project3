﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    // Attributes
    public int positionOnFloorX;
    public int positionOnFloorZ;
    public float yPosition;
    public Floor floor;
    public bool moved;
    public bool moving;
    Vector3 startPos;
    Vector3 endPos;
    public int newXPos;
    public int newZPos;
    public float fracJourney;
    public float speed;
    public float startTime;
    public float journeyLength;
    public float rotateSpeed;

	public int startingXIndex;
	public int startingZIndex;

    private float startingX;
    private float startingZ;

	public int direction;
	public GameObject knightModel;

    // Set in the Inspector Window
    // Let's the player know what floor script to look for
    public int currentFloor;

    // Use this for initialization
    void Start()
    {

        //floor = GameObject.Find ("Floor").GetComponent<Floor> ();

        //positionOnFloorX = 0;
        //positionOnFloorZ = 0;
        yPosition = this.transform.position.y;
        startingX = this.transform.position.x;
        startingZ = this.transform.position.z;
        moved = false;
        moving = false;
        startPos = Vector3.zero;
        endPos = Vector3.zero;
        //newXPos = 0;
        //newZPos = 0;
        speed = 2f;
		direction = 0;

        if (PlayerPrefs.GetInt("currentFloor") != null)
        {
            currentFloor = PlayerPrefs.GetInt("currentFloor");
        }
        else
        {
            currentFloor = 1;
            PlayerPrefs.SetInt("currentFloor", currentFloor);
        }

    }

    // Update is called once per frame
    void Update()
    {
        // Not currently used, but may need to be at some point
        int prevXPos = positionOnFloorX;
        int prevZPos = positionOnFloorZ;

        // Check 'wasd' keys for movement
        // Forward movement with 'W'
        // Only move if player is not already moving
        if (Input.GetKey(KeyCode.W) && moved == false && moving == false && fracJourney == 0f)
        {
            // Check if player is at edge of floor
            if (positionOnFloorX < floor.length - 1)
            {
                // Update player's grid position
                newXPos += 1;
                // If the new grid position is occupied, reset newPos and don't move
                if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().occupied == false && floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == false)
                {
                    moved = true;

					direction = 0;

					//knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
                }
                else if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == true && newXPos + 1 < floor.length && floor.spaces[newXPos + 1, positionOnFloorZ].GetComponent<Space>().occupied == false && floor.spaces[newXPos + 1, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == false && newXPos < floor.length - 1)
                {
                    moved = true;
					direction = 0;

					//knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);

                    foreach (GameObject movObstc in floor.movableObjects)
                    {
                        Debug.Log("Object moving");
                        if (movObstc.GetComponent<MovableObstacle>().positionOnFloorX == newXPos && movObstc.GetComponent<MovableObstacle>().positionOnFloorZ == positionOnFloorZ)
                        {

                            movObstc.GetComponent<MovableObstacle>().moved = true;
                            movObstc.GetComponent<MovableObstacle>().direction = 0;
                        }
                    }
                }
                else
                {
                    newXPos -= 1;
                }
            }
            else
            {
                // Can't move
            }
			direction = 0;

			//knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);

        }
        // Backward movement with 'S'
        // Only move if player is not already moving
        else if (Input.GetKey(KeyCode.S) && moved == false && moving == false && fracJourney == 0f)
        {
            // Check if player is at edge of floor
            if (positionOnFloorX > 0)
            {
                // Update player's grid position
                newXPos -= 1;
                // If the new grid position is occupied, reset newPos and don't move
                if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().occupied == false && floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == false)
                {
                    //newXPos -= 1;
                    moved = true;
					direction = 2;

					//knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
                }
                else if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == true && newXPos - 1 >= 0 && floor.spaces[newXPos - 1, positionOnFloorZ].GetComponent<Space>().occupied == false && floor.spaces[newXPos - 1, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == false && newXPos > 0)
                {
                    moved = true;
					direction = 2;

					//knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
                    foreach (GameObject movObstc in floor.movableObjects)
                    {
                        Debug.Log("Object moving");
                        if (movObstc.GetComponent<MovableObstacle>().positionOnFloorX == newXPos && movObstc.GetComponent<MovableObstacle>().positionOnFloorZ == positionOnFloorZ)
                        {

                            movObstc.GetComponent<MovableObstacle>().moved = true;
                            movObstc.GetComponent<MovableObstacle>().direction = 2;
                        }
                    }
                }
                else
                {
                    newXPos += 1;
                }
            }
            else
            {
                // Can't move
            }
			//direction = 3;
			//knightModel.transform.rotation = new Quaternion (0f, (90f * direction), 0f, 1f);
			direction = 2;

			//knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
        }
        // Left movement with 'A'
        // Only move if player is not already moving
        else if (Input.GetKey(KeyCode.A) && moved == false && moving == false && fracJourney == 0f)
        {
            // Check if player is at edge of floor
            if (positionOnFloorZ > 0)
            {
                // Update player's grid position
                newZPos -= 1;
                // If the new grid position is occupied, reset newPos and don't move
                if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().occupied == false && floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().isMovableObstacle == false)
                {
                    //newZPos -= 1;
                    moved = true;
					direction = 3;

					//knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
                }
                else if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().isMovableObstacle == true && newZPos - 1 >= 0 && floor.spaces[positionOnFloorX, newZPos - 1].GetComponent<Space>().occupied == false && floor.spaces[positionOnFloorX, newZPos - 1].GetComponent<Space>().isMovableObstacle == false && newZPos > 0)
                {
                    moved = true;
					direction = 3;

					//knightModel.transform.eulerAngles = new Vector3 (0f, (90f * direction), 0f);
                    foreach (GameObject movObstc in floor.movableObjects)
                    {
                        Debug.Log("Object moving");
                        if (movObstc.GetComponent<MovableObstacle>().positionOnFloorX == positionOnFloorX && movObstc.GetComponent<MovableObstacle>().positionOnFloorZ == newZPos)
                        {

                            movObstc.GetComponent<MovableObstacle>().moved = true;
                            movObstc.GetComponent<MovableObstacle>().direction = 1;
                        }
                    }
                }
                else
                {
                    newZPos += 1;
                }
            }
            else
            {
                // Can't move
            }
			//direction = 2;
			//knightModel.transform.rotation = new Quaternion (0f, (90f * direction), 0f, 1f);
			direction = 3;

			//knightModel.transform.eulerAngles = Vector3.Lerp(knightModel.transform.eulerAngles, new Vector3 (0f, (90f * direction), 0f), Time.deltaTime);
        }
        // Right movement with 'D'
        // Only move if player is not already moving
        else if (Input.GetKey(KeyCode.D) && moved == false && moving == false && fracJourney == 0f)
        {
            // Check if player is at edge of floor
            if (positionOnFloorZ < floor.width - 1)
            {
                // Update player's grid position
                newZPos += 1;
                // If the new grid position is occupied, reset newPos and don't move
                if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().occupied == false && floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().isMovableObstacle == false)
                {
                    //newZPos += 1;
                    moved = true;
					direction = 1;

                   // knightModel.transform.eulerAngles = Vector3.Lerp(knightModel.transform.eulerAngles, new Vector3(0f, (90f * direction), 0f), Time.deltaTime);
                }
                else if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().isMovableObstacle == true && newZPos + 1 < floor.width && floor.spaces[positionOnFloorX, newZPos + 1].GetComponent<Space>().occupied == false && floor.spaces[positionOnFloorX, newZPos + 1].GetComponent<Space>().isMovableObstacle == false && newZPos < floor.width - 1)
                {
                    moved = true;
                    foreach (GameObject movObstc in floor.movableObjects)
                    {
                        Debug.Log("Object moving");
						direction = 1;
                        //knightModel.transform.eulerAngles = Vector3.Lerp(knightModel.transform.eulerAngles, new Vector3(0f, (90f * direction), 0f), Time.deltaTime);
                        if (movObstc.GetComponent<MovableObstacle>().positionOnFloorX == positionOnFloorX && movObstc.GetComponent<MovableObstacle>().positionOnFloorZ == newZPos)
                        {

                            movObstc.GetComponent<MovableObstacle>().moved = true;
                            movObstc.GetComponent<MovableObstacle>().direction = 3;
                        }
                    }
                }
                else
                {
                    newZPos -= 1;
                }// If the new grid position is occupied, reset newPos and don't move
            }
            else
            {
                // Can't move
            }
			direction = 1;
            
            //direction = 4;
        }
        //Debug.LogError("Direction: " + direction + " , Delta: " + delta);
        switch (direction) {
            case 0:
                Quaternion oldRot = knightModel.transform.rotation;
                knightModel.transform.LookAt(knightModel.transform.position + new Vector3(0f, 0f, 10f));
                Quaternion newRot = knightModel.transform.rotation;
                knightModel.transform.rotation = Quaternion.Lerp(oldRot, newRot, Time.deltaTime * rotateSpeed);
                break;
            case 1:
                Quaternion oldRot1 = knightModel.transform.rotation;
                knightModel.transform.LookAt(knightModel.transform.position + new Vector3(10f, 0f, 0f));
                Quaternion newRot1 = knightModel.transform.rotation;
                knightModel.transform.rotation = Quaternion.Lerp(oldRot1, newRot1, Time.deltaTime * rotateSpeed);
                break;
            case 2:
                Quaternion oldRot2 = knightModel.transform.rotation;
                knightModel.transform.LookAt(knightModel.transform.position + new Vector3(0f, 0f, -10f));
                Quaternion newRot2 = knightModel.transform.rotation;
                knightModel.transform.rotation = Quaternion.Lerp(oldRot2, newRot2, Time.deltaTime * rotateSpeed);
                break;
            case 3:
                Quaternion oldRot3 = knightModel.transform.rotation;
                knightModel.transform.LookAt(knightModel.transform.position + new Vector3(-10f, 0f, 0f));
                Quaternion newRot3 = knightModel.transform.rotation;
                knightModel.transform.rotation = Quaternion.Lerp(oldRot3, newRot3, Time.deltaTime * rotateSpeed);
                break;
        }

        // If a key was pressed to move the player
        if (moved)
        {
            // Set the start and end position of the movement for the lerp
            startPos = floor.spaces[positionOnFloorX, positionOnFloorZ].transform.position;
            endPos = floor.spaces[newXPos, newZPos].transform.position;
            startPos.y = 0f;
            endPos.y = 0f;

			startPos.x -= 0.25f;
			startPos.z += 0.25f;
			endPos.x -= 0.25f;
			endPos.z += 0.25f;
            // Set the start time and length of the travel distance
            startTime = Time.time;
            journeyLength = Vector3.Distance(startPos, endPos);

            // Set moving to true
            moving = true;
            moved = false;
        }

        // Lerp if player is moving
        if (moving)
        {
            // set up lerp
            float distCovered = (Time.time - startTime) * speed;
            fracJourney = distCovered / journeyLength;

            // Lerp if the player has not reached the endPos (when fracJourney reaches 1)
            if (fracJourney <= 1)
            {
                this.transform.position = Vector3.Lerp(startPos, endPos, fracJourney);
            }
            else
            {
                // Update player's position to the new one it has reached
                fracJourney = 0f;
                moving = false;

                // Make the player's current position unoccupied
                floor.spaces[positionOnFloorX, positionOnFloorZ].GetComponent<Space>().occupied = false;

                // Set the player's previous position to the current position
                prevXPos = positionOnFloorX;
                prevZPos = positionOnFloorZ;

                // Set the player's current position to the new position
                positionOnFloorX = newXPos;
                positionOnFloorZ = newZPos;

                floor.playerPosX = positionOnFloorX;
                floor.playerPosZ = positionOnFloorZ;

                floor.spaces[positionOnFloorX, positionOnFloorZ].GetComponent<Space>().occupied = true;

                // Checks the puzzle to verify our move was valid
                floor.PuzzleCheck();
                //if (floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().isBreakableSpace) {
                //	if (floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().wasVisited == false) {
                //		floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<MeshRenderer> ().material = floor.breakableSpaceMat;
                //		floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().wasVisited = true;
                //	} else {
                //		Debug.Log ("Floor Breaks...");
                //	}

                //}
            }
        }

        
		// Open new scene/puzzle when player reaches end position
		if (floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().isEndPosition == true) {
			
			floor.NextLevel();

		}


		if (Input.GetKey (KeyCode.R)) {
			ResetPlayer ();
			floor.ResetPuzzle ();
		}
    }

	public void ResetPlayer(){
		
		floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().occupied = false;
		positionOnFloorX = startingXIndex;
		positionOnFloorZ = startingZIndex;
		newXPos = startingXIndex;
		newZPos = startingZIndex;
		this.transform.position = new Vector3(positionOnFloorZ + floor.xOffset - 0.25f, 0f, positionOnFloorX + floor.zOffset + 0.25f);

		floor.resetLevel = true;
	}
}
