using System.Collections;
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

    private float startingX;
    private float startingZ;

    // Set in the Inspector Window
    // Let's the player know what floor script to look for
    public int currentFloor;

    // Use this for initialization
    void Start()
    {

        //floor = GameObject.Find ("Floor").GetComponent<Floor> ();

        positionOnFloorX = 0;
        positionOnFloorZ = 0;
        yPosition = this.transform.position.y;
        startingX = this.transform.position.x;
        startingZ = this.transform.position.z;
        moved = false;
        moving = false;
        startPos = Vector3.zero;
        endPos = Vector3.zero;
        newXPos = 0;
        newZPos = 0;
        speed = 2f;

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
                }
                else if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == true && newXPos + 1 < floor.length && floor.spaces[newXPos + 1, positionOnFloorZ].GetComponent<Space>().occupied == false && floor.spaces[newXPos + 1, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == false && newXPos < floor.length - 1)
                {
                    moved = true;
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
                }
                else if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == true && newXPos - 1 >= 0 && floor.spaces[newXPos - 1, positionOnFloorZ].GetComponent<Space>().occupied == false && floor.spaces[newXPos - 1, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == false && newXPos > 0)
                {
                    moved = true;
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
                }
                else if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().isMovableObstacle == true && newZPos - 1 >= 0 && floor.spaces[positionOnFloorX, newZPos - 1].GetComponent<Space>().occupied == false && floor.spaces[positionOnFloorX, newZPos - 1].GetComponent<Space>().isMovableObstacle == false && newZPos > 0)
                {
                    moved = true;
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
                }
                else if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().isMovableObstacle == true && newZPos + 1 < floor.width && floor.spaces[positionOnFloorX, newZPos + 1].GetComponent<Space>().occupied == false && floor.spaces[positionOnFloorX, newZPos + 1].GetComponent<Space>().isMovableObstacle == false && newZPos < floor.width - 1)
                {
                    moved = true;
                    foreach (GameObject movObstc in floor.movableObjects)
                    {
                        Debug.Log("Object moving");
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
        }

        // If a key was pressed to move the player
        if (moved)
        {
            // Set the start and end position of the movement for the lerp
            startPos = floor.spaces[positionOnFloorX, positionOnFloorZ].transform.position;
            endPos = floor.spaces[newXPos, newZPos].transform.position;
            startPos.y = 0.5f;
            endPos.y = 0.5f;

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

        /*
		// Open new scene/puzzle when player reaches end position
		if (floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().isEndPosition == true) {
			Debug.Log ("You win!");
			currentFloor++;
			PlayerPrefs.SetInt ("currentFloor", currentFloor);
			//Application.LoadLevel ("Level" + 2 + "");

		}
		*/

		if (Input.GetKey (KeyCode.R)) {
			ResetPlayer ();
		}
    }

	void ResetPlayer(){
		
		floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().occupied = false;
		positionOnFloorX = 0;
		positionOnFloorZ = 0;
		newXPos = 0;
		newZPos = 0;
		this.transform.position = new Vector3(positionOnFloorX + 0.5f, 0.5f, positionOnFloorZ + 0.5f);
	}
}
