using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Enemy : MonoBehaviour
{
    // Attributes
    public int positionOnFloorX;
    public int positionOnFloorZ;
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
    public GameObject player;
    public Player play;
    public bool chase = false;

	public Animator knightAnimator;
	private float stopTimer;
	public float rotateSpeed;
	public int direction = 0;

    public GameObject knightModel;

    // Use this for initialization
    void Start()
    {
        
		player = GameObject.Find("Player(Clone)");
        floor = player.GetComponent<Player>().floor;
        play = player.GetComponent<Player>();
        moved = false;
        moving = false;
        startPos = Vector3.zero;
        endPos = Vector3.zero;
		speed = 1.25f;
		stopTimer = .1f;

    }

    // Update is called once per frame
    void Update()
    {
        if(!player) {
            player = GameObject.Find("Player(Clone)");
            floor = player.GetComponent<Player>().floor;
            play = player.GetComponent<Player>();
        }

        // Check if the player has moved and if the enemy is not currently moving
        // If so, choose a movement for the enemy
        if (moving == false && player.GetComponent<Player>().moving == true)
        {
            Moved();
        }

        // If the enemy has chosen to make a movement, call Moving to update position
        if (moving)
        {
            Moving();
        }
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
    }

    public void Moved()
    {
        // Set the newX and newZ Positions to the current positions
        newXPos = positionOnFloorX;
        newZPos = positionOnFloorZ;

        // bool to keep loop going until a valid movement is found
        // Only move to space that is: not occupied, inside the bounderies
        bool findValidMovement = false;

        // Uncomment to enable Enemy Chase

        if (Mathf.Abs(positionOnFloorX - play.positionOnFloorX) <= 3 && Mathf.Abs(positionOnFloorZ - play.positionOnFloorZ) <= 3)
        {
            chase = true;
        }
        else
        {
            chase = false;
        }


        // Loop to create movement
        if (!chase)
        {

            while (findValidMovement == false)
            {
                // Random int: 0, 1, 2, or 3 (forward, left, backward, and right directions)
                int rand = Random.Range(0, 4);
                switch (rand) {
                    case 0:
                        direction = 0;
                        break;
                    case 1:
                        direction = 3;
                        break;
                    case 2:
                        direction = 2;
                        break;
                    case 3:
                        direction = 1;
                        break;

                }
                // Move forward
                if (rand == 0)
                {
                    if (positionOnFloorX < floor.length - 1)
                    {
                        // Update enemy's grid position
                        newXPos += 1;
                        // If the new grid position is occupied, reset newPos and don't move
                        if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().occupied == false)
                        {
                            // Keep new position and exit loop
                            findValidMovement = true;
							direction = 0;
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
                // Move left
                else if (rand == 1)
                {
                    if (positionOnFloorZ > 0)
                    {
                        // Update enemy's grid position
                        newZPos -= 1;
                        // If the new grid position is occupied, reset newPos and don't move
                        if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().occupied == false)
                        {
                            // Keep new position and exit loop
                            findValidMovement = true;
							direction = 3;
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
                // Move backward
                else if (rand == 2)
                {
                    if (positionOnFloorX > 0)
                    {
                        // Update enemy's grid position
                        newXPos -= 1;
                        // If the new grid position is occupied, reset newPos and don't move
                        if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().occupied == false)
                        {
                            // Keep new position and exit loop
                            findValidMovement = true;
							direction = 2;
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
                // move right
                else if (rand == 3)
                {
                    if (positionOnFloorZ < floor.width - 1)
                    {
                        // Update enemy's grid position
                        newZPos += 1;
                        // If the new grid position is occupied, reset newPos and don't move
                        if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().occupied == false)
                        {
                            // Keep new position and exit loop
                            findValidMovement = true;
							direction = 1;
                        }
                        else
                        {
                            newZPos -= 1;
                        }
                    }
                    else
                    {
                        // Can't move
                    }
                }
            }
        }
        else
        { // Chasing
            while (findValidMovement == false)
            {
                // Same X or Z distance is greater than x distance, move Z
                if (play.positionOnFloorX == positionOnFloorX || Mathf.Abs(positionOnFloorZ - play.positionOnFloorZ) > Mathf.Abs(positionOnFloorX - play.positionOnFloorX))
                {
                    if (positionOnFloorZ < floor.width - 1 && positionOnFloorZ < play.positionOnFloorZ)         // Z is horizontal and X is Vertical
                    {                                               // add another condition check to each of the conditions (whether enemy position is less than or greater than player position and check
                        // Update enemy's grid position
                        newZPos += 1;
                        // If the new grid position is occupied, reset newPos and don't move
                        if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().occupied == false)
                        {
                            // Keep new position and exit loop
                            findValidMovement = true;
							direction = 1;
                        }
                        else
                        {
                            newZPos -= 1;
                            findValidMovement = true;
                        }
                    }

                    else if (positionOnFloorZ > 0 && positionOnFloorZ > play.positionOnFloorZ)
                    {
                        // Update enemy's grid position
                        newZPos -= 1;
                        // If the new grid position is occupied, reset newPos and don't move
                        if (floor.spaces[positionOnFloorX, newZPos].GetComponent<Space>().occupied == false)
                        {
                            // Keep new position and exit loop
                            findValidMovement = true;
							direction = 3;
                        }
                        else
                        {
                            newZPos += 1;
                            findValidMovement = true;
                        }
                    }
                    else
                    {
                        findValidMovement = true;
                    }
                }
                // Same Z or X distance is greater than Z distance, Move X
                if (play.positionOnFloorZ == positionOnFloorZ || Mathf.Abs(positionOnFloorZ - play.positionOnFloorZ) < Mathf.Abs(positionOnFloorX - play.positionOnFloorX))
                {
                    if (positionOnFloorX < floor.length - 1 && positionOnFloorX < play.positionOnFloorX)
                    {
                        // Update enemy's grid position
                        newXPos += 1;
                        // If the new grid position is occupied, reset newPos and don't move
                        if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().occupied == false)
                        {
                            // Keep new position and exit loop
                            findValidMovement = true;
							direction = 0;
                        }
                        else
                        {
                            newXPos -= 1;
                            findValidMovement = true;
                        }
                    }
                    else if (positionOnFloorX > 0 && positionOnFloorX > play.positionOnFloorX)
                    {
                        // Update enemy's grid position
                        newXPos -= 1;
                        // If the new grid position is occupied, reset newPos and don't move
                        if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().occupied == false)
                        {
                            // Keep new position and exit loop
                            findValidMovement = true;
							direction = 2;
                        }
                        else
                        {
                            newXPos += 1;
                            findValidMovement = true;
                        }
                    }
                    else
                    {
                        findValidMovement = true;
                    }
                }
                else
                    findValidMovement = true;
            }
        }

        // Set up for Lerp
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

        // Now need to update lerp in Moving function
        moved = false;
        moving = true;
    }

    public void Moving()
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

            // Make the enemy's current position unoccupied
            floor.spaces[positionOnFloorX, positionOnFloorZ].GetComponent<Space>().occupied = false;

            // Set the enemy's current position to the new position
            positionOnFloorX = newXPos;
            positionOnFloorZ = newZPos;

            if (Mathf.Abs(positionOnFloorX - play.positionOnFloorX) <= 1 && Mathf.Abs(positionOnFloorZ - play.positionOnFloorZ) <= 1)
            {
                //player.GetComponent<Player>().ResetPlayer();
                floor.ResetPuzzle();
                
            }

            /*
			if (positionOnFloorX == player.GetComponent<Player> ().positionOnFloorX && positionOnFloorZ == player.GetComponent<Player> ().positionOnFloorZ) {
				
			}
			*/

			

            // Make enemy's new position occupied
            floor.spaces[positionOnFloorX, positionOnFloorZ].GetComponent<Space>().occupied = true;
        }
    }
}
