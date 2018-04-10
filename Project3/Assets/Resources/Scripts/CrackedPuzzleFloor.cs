using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CrackedPuzzleFloor : Floor {

    // 0 - crackable, 1 - cracked, 2 - Jester, 3 - Player, 4 - End
    private int[,] puzzle =
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
        {0, 0, 0, 0, 4, 0, 0, 0, 0, 0 }
    };

    public override void CreateLevel()
    {
        Debug.Log("Create Level Called");
        for (int i = 0; i < puzzle.GetLength(0); i++)
        {
            for (int j = 0; j < puzzle.GetLength(1); j++)
            {
                switch (puzzle[i, j])
                {
                    case 0: // Crackable tiles
						CreateTile(breakableSpacePrefab, j, 0, i, false, false, true, false, false, false, false, -1);
                        break;
                    case 1: // Cracked tiles SHOULD NEVER BE INITALIZED
						CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, -1);
                        break;
                    case 2: // Jester location
					CreateTile(jesterPrefab, j, 0.5f, i, true, false, false, true, false, false, false, -1);
						break;
                    case 3: // Player location
						CreateTile(normalSpacePrefab, j, 0, i, false, false, false, true, false, false, false, -1);
						break;
                    case 4: // Ending location
						CreateTile(endSpacePrefab, j, 0.5f, i, false, false, false, false, false, false, true, -1);
						break;
                    default: // Non-crackable tiles
						CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, -1);
                        break;
                }
            }
        }
    }

    public override void PuzzleCheck()
    {
        Debug.Log("Puzzle Check");
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
    }

	// Send Game to next level, from Player class
	public override void NextLevel(){
		bool allVisited = true;

		// Loop through breakable spaces to see if all have been visited first
		for (int i = 0; i < puzzle.GetLength(0); i++)
		{
			if (allVisited == false) {
				break;
			}
			for (int j = 0; j < puzzle.GetLength(1); j++)
			{
				if (allVisited == false) {
					break;
				}
				if (spaces [i, j].GetComponent<Space> ().isBreakableSpace) {
					if (spaces [i, j].GetComponent<Space> ().wasVisited) {
						allVisited = true;
					} else {
						allVisited = false;
					}
				}

	
			}
		}

		// If all crackable spaces were visited, move to next level
		if (allVisited) {
			SceneManager.LoadScene ("MovingLevel_1", LoadSceneMode.Single);
		}

	}

    /// <summary>
    /// Resets the puzzle because the player stepped on a 
    /// breakable tile twice
    /// </summary>
	public override void ResetPuzzle()
    {
        resetLevel = true;

        for (int i = 0; i < puzzle.GetLength(0); i++)
        {
            for (int j = 0; j < puzzle.GetLength(1); j++)
            {
                if (spaces[i, j].GetComponent<Space>().wasVisited)
                {
                    spaces[i, j].GetComponent<Space>().wasVisited = false;
                    spaces[i, j].GetComponent<MeshRenderer>().material = unbrokenSpaceMat;
                }
            }
        }
    }
}
