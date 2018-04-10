using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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
						CreateTile(breakableSpacePrefab, j, 0, i, false, false, true, false, false, false, -1);
                        break;
                    case 1: // Cracked tiles SHOULD NEVER BE INITALIZED
						CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, -1);
                        break;
                    case 2: // Jester location
						CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, -1);
						break;
                    case 3: // Player location
						CreateTile(normalSpacePrefab, j, 0, i, false, false, false, true, false, false, -1);
						break;
                    case 4: // Ending location
						CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, -1);
						break;
                    default: // Non-crackable tiles
						CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, -1);
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

    /// <summary>
    /// Resets the puzzle because the player stepped on a 
    /// breakable tile twice
    /// </summary>
    private void ResetPuzzle()
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
