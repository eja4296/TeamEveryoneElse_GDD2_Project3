using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    public Animator knightAnimator;
    private float stopTimer;
    
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

	public List<MovableObstacle> movingObjects = new List<MovableObstacle> ();

    // Use this for initialization
    void Start()
    {
        stopTimer = .1f;
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
        speed = 1.25f;
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
                }
				// check if new space is a moveable object, check if space on the other side is occupied, check if space on other side is a moveable obstacle, check if space on other side is in bounds
                else if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == true)
                {
					direction = 0;
					movingObjects = new List<MovableObstacle> ();
					// Recursive push
					moved = MovableRecusionCheck (newXPos, direction);
                    
					if (!moved) {
						newXPos -= 1;
					} else {
						for(int i = movingObjects.Count - 1; i >= 0; i--){
							movingObjects[i].moved = true;
							movingObjects[i].direction = 0;
							floor.spaces [movingObjects[i].positionOnFloorX, movingObjects[i].positionOnFloorZ].GetComponent<Space> ().isMovableObstacle = false;
							floor.spaces [movingObjects[i].positionOnFloorX + 1, movingObjects[i].positionOnFloorZ].GetComponent<Space> ().isMovableObstacle = true;
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
                else if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().isMovableObstacle == true)
                {
					direction = 2;
					movingObjects = new List<MovableObstacle> ();
					// Recursive push
					moved = MovableRecusionCheck (newXPos, direction);

					if (!moved) {
						newXPos += 1;
					} else {
						for(int i = movingObjects.Count - 1; i >= 0; i--){
							movingObjects[i].moved = true;
							movingObjects[i].direction = 2;
							floor.spaces [movingObjects[i].positionOnFloorX, movingObjects[i].positionOnFloorZ].GetComponent<Space> ().isMovableObstacle = false;
							floor.spaces [movingObjects[i].positionOnFloorX - 1, movingObjects[i].positionOnFloorZ].GetComponent<Space> ().isMovableObstacle = true;
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
                else if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().isMovableObstacle == true)
                {
					direction = 3;
					movingObjects = new List<MovableObstacle> ();
					// Recursive push
					moved = MovableRecusionCheck (newZPos, direction);

					if (!moved) {
						newZPos += 1;
					} else {
						for(int i = movingObjects.Count - 1; i >= 0; i--){
							movingObjects[i].moved = true;
							movingObjects[i].direction = 1;
							floor.spaces [movingObjects[i].positionOnFloorX, movingObjects[i].positionOnFloorZ].GetComponent<Space> ().isMovableObstacle = false;
							floor.spaces [movingObjects[i].positionOnFloorX, movingObjects[i].positionOnFloorZ - 1].GetComponent<Space> ().isMovableObstacle = true;
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
                else if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().isMovableObstacle == true)
                {
					direction = 1;
					movingObjects = new List<MovableObstacle> ();
					// Recursive push
					moved = MovableRecusionCheck (newZPos, direction);

					if (!moved) {
						newZPos -= 1;
					} else {
						for(int i = movingObjects.Count - 1; i >= 0; i--){
							movingObjects[i].moved = true;
							movingObjects[i].direction = 3;
							floor.spaces [movingObjects[i].positionOnFloorX, movingObjects[i].positionOnFloorZ].GetComponent<Space> ().isMovableObstacle = false;
							floor.spaces [movingObjects[i].positionOnFloorX, movingObjects[i].positionOnFloorZ + 1].GetComponent<Space> ().isMovableObstacle = true;
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

			if (floor.spaces [newXPos, newZPos].GetComponent<Space> ().isMovingSpace) {
				floor.spaces [newXPos, newZPos].GetComponent<Space> ().EnableHalo ();
			}
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

				if (floor.spaces [prevXPos, prevZPos].GetComponent<Space> ().isMovingSpace) {
					floor.spaces [prevXPos, prevZPos].GetComponent<Space> ().DisableHalo ();
				}

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
        //animate
        if (moving && !knightAnimator.GetCurrentAnimatorStateInfo(0).IsName("Run") && !knightAnimator.GetCurrentAnimatorStateInfo(0).IsName("Start Run")) {
            knightAnimator.Play("Start Run");
            knightAnimator.SetBool("StoppedRunning", false);
        } else if (!moving && !knightAnimator.GetCurrentAnimatorStateInfo(0).IsName("Idle") && !knightAnimator.GetCurrentAnimatorStateInfo(0).IsName("Stop Run")) {
            stopTimer -= Time.deltaTime;
        }

        if (stopTimer <= 0f) {
            stopTimer = .1f;
            knightAnimator.SetBool("StoppedRunning", true);
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

	public bool MovableRecusionCheck(int index, int direction){
		bool canMove = false;
		switch (direction) {
		// up, +x
		case 0:
			// Check if space on other side of movable object is in bounds, occupied, or another obstacle
			if (index + 1 < floor.length && floor.spaces [index + 1, positionOnFloorZ].GetComponent<Space> ().occupied == false) {
				// The current obstacle can move, add it to the List
				foreach (GameObject movObstc in floor.movableObjects)
				{
					if (movObstc.GetComponent<MovableObstacle>().positionOnFloorX == index && movObstc.GetComponent<MovableObstacle>().positionOnFloorZ == positionOnFloorZ)
					{
						movingObjects.Add (movObstc.GetComponent<MovableObstacle>());
					}
				}
				// If the space on the other side is not another movable object, done recusing
				if (floor.spaces [index + 1, positionOnFloorZ].GetComponent<Space> ().isMovableObstacle == false) {
					canMove = true;
				} 
				// If the space on the other side does have another movable object, recurse
				else {
					canMove = MovableRecusionCheck (index + 1, direction);
				}
			}
			// If the space on the other side is out of bounds or occupied, can't move
			else{
				canMove = false;
			}
			break;

		// right, +z
		case 1:
			// Check if space on other side of movable object is in bounds, occupied, or another obstacle
			if (index + 1 < floor.width && floor.spaces [positionOnFloorX, index + 1].GetComponent<Space> ().occupied == false) {
				// The current obstacle can move, add it to the List
				foreach (GameObject movObstc in floor.movableObjects)
				{
					if (movObstc.GetComponent<MovableObstacle>().positionOnFloorX == positionOnFloorX && movObstc.GetComponent<MovableObstacle>().positionOnFloorZ == index)
					{
						movingObjects.Add (movObstc.GetComponent<MovableObstacle>());
					}
				}
				// If the space on the other side is not another movable object, done recusing
				if (floor.spaces [positionOnFloorX, index + 1].GetComponent<Space> ().isMovableObstacle == false) {
					canMove = true;
				} 
				// If the space on the other side does have another movable object, recurse
				else {
					canMove = MovableRecusionCheck (index + 1, direction);
				}
			}
			// If the space on the other side is out of bounds or occupied, can't move
			else{
				canMove = false;
			}
			break;
		// down, -x
		case 2:
			// Check if space on other side of movable object is in bounds, occupied, or another obstacle
			if (index - 1 >= 0 && floor.spaces [index - 1, positionOnFloorZ].GetComponent<Space> ().occupied == false) {
				// The current obstacle can move, add it to the List
				foreach (GameObject movObstc in floor.movableObjects)
				{
					if (movObstc.GetComponent<MovableObstacle>().positionOnFloorX == index && movObstc.GetComponent<MovableObstacle>().positionOnFloorZ == positionOnFloorZ)
					{
						movingObjects.Add (movObstc.GetComponent<MovableObstacle>());
					}
				}
				// If the space on the other side is not another movable object, done recusing
				if (floor.spaces [index - 1, positionOnFloorZ].GetComponent<Space> ().isMovableObstacle == false) {
					canMove = true;
				} 
				// If the space on the other side does have another movable object, recurse
				else {
					canMove = MovableRecusionCheck (index - 1, direction);
				}
			}
			// If the space on the other side is out of bounds or occupied, can't move
			else{
				canMove = false;
			}
			break;
		// left, -z
		case 3:
			// Check if space on other side of movable object is in bounds, occupied, or another obstacle
			if (index - 1 >= 0 && floor.spaces [positionOnFloorX, index - 1].GetComponent<Space> ().occupied == false) {
				// The current obstacle can move, add it to the List
				foreach (GameObject movObstc in floor.movableObjects)
				{
					if (movObstc.GetComponent<MovableObstacle>().positionOnFloorX == positionOnFloorX && movObstc.GetComponent<MovableObstacle>().positionOnFloorZ == index)
					{
						movingObjects.Add (movObstc.GetComponent<MovableObstacle>());
					}
				}
				// If the space on the other side is not another movable object, done recusing
				if (floor.spaces [positionOnFloorX, index - 1].GetComponent<Space> ().isMovableObstacle == false) {
					canMove = true;
				} 
				// If the space on the other side does have another movable object, recurse
				else {
					canMove = MovableRecusionCheck (index - 1, direction);
				}
			}
			// If the space on the other side is out of bounds or occupied, can't move
			else{
				canMove = false;
			}
			break;

		default:
			canMove = false;
			break;
		}
        
        return canMove;

	}
}
