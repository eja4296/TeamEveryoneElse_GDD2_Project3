using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PushPuzzleFloor : Floor {

    public GameObject[] pushableObjects;

	// 0 - crackable, 1 - cracked, 2 - Jester, 3 - Player, 4 - End
	//private int[,] puzzle =
	//{
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	//	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
	//};

	public override void CreateLevel()
	{
		Debug.Log("Create Level Called");
		for (int i = 0; i < puzzle.GetLength(0); i++)
		{
			for (int j = 0; j < puzzle.GetLength(1); j++)
			{
				switch (puzzle[i, j])
				{
				case 0: //Regular tile
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, false, -1);
					break;
				case 2: // Jester location
					CreateTile(jesterPrefab, j, 0.5f, i, true, false, false, true, false, false, false, false, -1);
					break;
				case 3: // Player location
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, true, false, false, false, true, -1);
					break;
				case 4: // Ending location
					CreateTile(endSpacePrefab, j, 0.5f, i, false, false, false, false, false, false, true, false, -1);
					break;
				case 5: // Obstacle
					CreateTile (obstaclePrefab, j, 0.5f, i, false, false, false, true, false, false, false, false, -1);
					break;
				case 6: // Pushable/Movable Object
					CreateTile (normalSpacePrefab, j, 0, i, false, false, false, false, false, true, false, false, -1);
					break;
				default: // Non-crackable tiles
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, false, -1);
					break;
				}
			}
		}

        pushableObjects = GameObject.FindGameObjectsWithTag("object");

    }

    public override int[,] GetMediumPuzzle()
    {
        // 2 - Jester, 3 - Player, 4 - End
        return new int[,] {
            {3, 2, 0, 6, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 6, 0, 6, 0, 0 },
            {0, 0, 0, 0, 0, 0, 5, 0, 0, 0 },
            {6, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {6, 0, 6, 0, 5, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 6, 0, 0, 6 },
            {6, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 6, 6, 6, 6, 6, 6, 6, 0, 0 },
            {0, 6, 0, 0, 0, 0, 0, 6, 5, 0 },
            {0, 6, 0, 0, 4, 0, 0, 6, 0, 0 }
        };
    }

    public override int[,] GetTutorialPuzzle()
    {
        return GetEasyPuzzle();
    }

    public override int[,] GetEasyPuzzle()
    {
        return new int[,]
        {
        	{3, 2, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
        	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
        	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
        	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
        	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
        	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
        	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 4}
        };
    }

    public override int[,] GetHardPuzzle()
    {
        return new int[,]
{
            {3, 2, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        };
    }


    public override void PuzzleCheck()
	{
		/*
		if (spaces[playerPosX, playerPosZ].GetComponent<Space>().isBreakableSpace)
		{
			if (spaces[playerPosX, playerPosZ].GetComponent<Space>().wasVisited == false)
			{
				spaces[playerPosX, playerPosZ].GetComponent<MeshRenderer>().material = breakableSpaceMat;
				spaces[playerPosX, playerPosZ].GetComponent<Space>().wasVisited = true;
			}
			else
			{
				ResetPuzzle();
			}
		}
		*/
	}

	public override void NextLevel(){
		SceneManager.LoadScene ("CrackableLevel_1", LoadSceneMode.Single);
	}


	/// <summary>
	/// Resets the puzzle because the player stepped on a 
	/// breakable tile twice
	/// </summary>
	public override void ResetPuzzle()
	{
		resetLevel = true;

        // Need to reset the positions of the pushable objects
        // Called in Player class with 'R' key press

        // Can't do this, have to destroy other objects first, or find some way to reset everything that 

        for (int i = 0; i < pushableObjects.Length; i++)
        {
            Destroy(pushableObjects[i]);
            SceneManager.LoadScene("PushLevel_1");
        }

        CreateLevel ();
    }
}
