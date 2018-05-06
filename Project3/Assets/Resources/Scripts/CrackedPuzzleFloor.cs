using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CrackedPuzzleFloor : Floor {

    Player player;
    private int endI, endJ;
    public override void CreateLevel()
    {
        normalTileNum = 6;
        doorTileNum = 4;
        movementSound = (AudioClip)Resources.Load("Sounds/Sound_Effects/Ice-Crack");

        Debug.Log("Create Level Called");
        for (int i = 0; i < puzzle.GetLength(0); i++)
        {
            for (int j = 0; j < puzzle.GetLength(1); j++)
            {
                switch (puzzle[i, j])
                {
                    case 0: // Crackable tiles
					CreateTile(breakableSpacePrefab, j, 0, i, false, false, true, false, false, false, false, false, false, -1);
                        break;
                    case 1: // Cracked tiles SHOULD NEVER BE INITALIZED
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, false, false, -1);
                        break;
                    case 2: // Jester location
					CreateTile(jesterSpacePrefab, j, 0, i, true, false, false, true, false, false, false, false, true, -1);
						break;
                    case 3: // Player location
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, true, false, false, false, true, false, -1);
						break;
                    case 4: // Ending location
					CreateTile(endSpacePrefab, j, 0.5f, i, true, false, false, true, false, false, true, false, false, -1);
                        endI = i;
                        endJ = j;
						break;
                    case 5: // Obstacle location
					CreateTile(obstaclePrefab, j, 0.5f, i, true, false, false, true, false, false, false, false, false, -1);
                        break;
                    default: // Non-crackable tiles
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, false, false, -1);
                        break;
                }
            }
        }

		player = GameObject.FindGameObjectWithTag("Player").GetComponent<Player>();
    }

    public override int[,] GetTutorialPuzzle()
    {
        return new int[,] {
            { 5, 3, 2, 5 },
            { 5, 0, 0, 5 },
            { 5, 0, 0, 5 },
            { 5, 4, 6, 5 },
        };
    }

    public override int[,] GetEasyPuzzle()
    {
        // 0 - crackable, 1 - cracked, 2 - Jester, 3 - Player, 4 - End, 5 - Crates
        return new int[,] {
            { 2, 3, 5, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 0, 5, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 0, 5, 0, 0, 0, 5, 0, 0, 5 },
            { 5, 0, 5, 0, 5, 5, 5, 0, 0, 5 },
            { 5, 0, 5, 0, 5, 0, 0, 0, 0, 5 },
            { 5, 0, 5, 0, 5, 0, 0, 0, 0, 0 },
            { 0, 0, 5, 0, 5, 0, 0, 0, 0, 0 },
            { 0, 0, 5, 0, 5, 0, 0, 0, 5, 5 },
            { 0, 0, 0, 0, 5, 0, 0, 0, 5, 5 },
            { 0, 0, 0, 5, 4, 0, 0, 0, 5, 5 }
        };
    }

    public override int[,] GetMediumPuzzle()
    {
        // 0 - crackable, 1 - cracked, 2 - Jester, 3 - Player, 4 - End, 5 - Crates
        return new int[,]
        {
            { 5, 5, 5, 5, 3, 2, 5, 5, 5, 5 },
            { 5, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 0, 0, 0, 0, 0, 0, 0, 5, 0 },
            { 0, 0, 0, 6, 6, 6, 0, 0, 5, 0 },
            { 0, 5, 0, 6, 6, 6, 0, 0, 5, 0 },
            { 0, 5, 0, 6, 6, 6, 0, 0, 5, 0 },
            { 0, 5, 0, 0, 0, 0, 0, 0, 5, 0 },
            { 0, 5, 0, 0, 0, 0, 0, 0, 5, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 5, 5, 5, 4, 5, 5, 5, 5, 5 }
        };
    }

    public override int[,] GetHardPuzzle()
    {
        return new int[,] {
            { 2, 3, 5, 5, 5, 5, 5, 5, 5, 5 },
            { 5, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 0, 0, 6, 6, 6, 0, 0, 0, 0 },
            { 5, 0, 0, 6, 6, 6, 0, 0, 0, 0 },
            { 5, 0, 0, 6, 6, 6, 0, 0, 0, 0 },
            { 5, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 5, 0, 0, 0, 4, 0, 0, 0, 0, 0 }
        };
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
                // Check to see if we are complete (open end tile)
                IsComplete();
            }
            else
            {
                ResetPuzzle();
            }
        }
    }

	// Send Game to next level, from Player class
	public override void NextLevel(){
		// If all crackable spaces were visited, move to next level
		if (IsComplete()) {
            StartCoroutine(LoadScene(victory, "PushLevel_1", false));
            //SceneManager.LoadScene ("MovingLevel_1", LoadSceneMode.Single);
        }

    }

    /// <summary>
    /// Checks to see if every ice tile has been cracked,
    /// If all tiles are cracked, the end may now be walked on
    /// </summary>
    /// <returns>True if all ice is cracked, false if at least one isn't cracked</returns>
    private bool IsComplete()
    {
        // Loop through breakable spaces to see if all have been visited first
        for (int i = 0; i < puzzle.GetLength(0); i++)
        {
            for (int j = 0; j < puzzle.GetLength(1); j++)
            {
                if (spaces[i, j].GetComponent<Space>().isBreakableSpace)
                {
                    if (!spaces[i, j].GetComponent<Space>().wasVisited)
                    {
                        return false;
                    }
                }
            }
        }

        // If we make it here it is complete, open the end to be walkable
        spaces[endI, endJ].GetComponent<Space>().isObstacle = false;
        spaces[endI, endJ].GetComponent<Space>().occupied = false;
        return true;
    }

    /// <summary>
    /// Resets the puzzle because the player stepped on a 
    /// breakable tile twice
    /// </summary>
	public override void ResetPuzzle()
    {
        StartCoroutine(LoadScene(failure, "CrackableLevel_1", true));
        resetLevel = true;
        //source.PlayOneShot(failure);
        //resetLevel = true;
        //SceneManager.LoadScene("CrackableLevel_1");
    }
}
