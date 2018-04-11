using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour {
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

	// Use this for initialization
	void Start () {
		player = GameObject.Find ("Player");
		floor = player.GetComponent<Player>().floor;
        play = player.GetComponent<Player>();
		moved = false;
		moving = false;
		startPos = Vector3.zero;
		endPos = Vector3.zero;
		speed = 2f;
	}
	
	// Update is called once per frame
	void Update () {
		// Check if the player has moved and if the enemy is not currently moving
		// If so, choose a movement for the enemy
		if (moving == false && player.GetComponent<Player> ().moving == true) {
			Moved ();
		}

		// If the enemy has chosen to make a movement, call Moving to update position
		if (moving) {
			Moving ();
		}

		if (positionOnFloorX == player.GetComponent<Player> ().positionOnFloorX && positionOnFloorZ == player.GetComponent<Player> ().positionOnFloorZ) {
			player.GetComponent<Player> ().ResetPlayer ();
		}

        //if (Mathf.Abs(positionOnFloorX - play.positionOnFloorX) <= 5 && Mathf.Abs(positionOnFloorZ - play.positionOnFloorZ) <= 5)
        //    chase = true;
	}

	public void Moved(){
		// Set the newX and newZ Positions to the current positions
		newXPos = positionOnFloorX;
		newZPos = positionOnFloorZ;

		// bool to keep loop going until a valid movement is found
		// Only move to space that is: not occupied, inside the bounderies
		bool findValidMovement = false;

        // Loop to create movement
        while (findValidMovement == false)
        {

            if (!chase)
            {
                // Random int: 0, 1, 2, or 3 (forward, left, backward, and right directions)
                int rand = Random.Range(0, 4);

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

            if (chase)
            {
                if (positionOnFloorZ < floor.length - 1 && positionOnFloorZ < 0)
                {
                    // Update enemy's grid position based on where player is
                    if (Mathf.Abs(positionOnFloorZ - play.positionOnFloorZ) < Mathf.Abs(positionOnFloorX - play.positionOnFloorX))      // If the Z distance of enemy and player is less than X distance,
                    {                                                                                                                   // move in the Z direction
                        if (positionOnFloorZ < play.positionOnFloorZ)   // If player is below enemy, enemy will move down. Otherwise, move up
                            newZPos--;
                        else
                            newZPos++;
                    }
                    else
                    {
                        if (positionOnFloorX < play.positionOnFloorX)
                            newXPos--;
                        else
                            newXPos++;
                    }
                    // If the new grid position is occupied, reset newPos and don't move
                    if (floor.spaces[newXPos, positionOnFloorZ].GetComponent<Space>().occupied == false)
                    {
                        // Keep new position and exit loop
                        findValidMovement = true;
                    }
                }
                else
                {
                    // Can't move
                }
            }
        }

		// Set up for Lerp
		startPos = floor.spaces [positionOnFloorX, positionOnFloorZ].transform.position;
		endPos = floor.spaces [newXPos, newZPos].transform.position;
		startPos.y = 0.5f;
		endPos.y = 0.5f;

		// Set the start time and length of the travel distance
		startTime = Time.time;
		journeyLength = Vector3.Distance (startPos, endPos);

		// Now need to update lerp in Moving function
		moved = false;
		moving = true;
	}

	public void Moving(){
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

			// Make the enemy's current position unoccupied
			floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().occupied = false;

			// Set the enemy's current position to the new position
			positionOnFloorX = newXPos;
			positionOnFloorZ = newZPos;

			// Make enemy's new position occupied
			floor.spaces [positionOnFloorX, positionOnFloorZ].GetComponent<Space> ().occupied = true;
		}
	}
}
