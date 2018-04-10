using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MovingPuzzleFloor : Floor {

	// 0 - crackable, 1 - cracked, 2 - Jester, 3 - Player, 4 - End
	// --> Left
	// <-- Right
	private int[,] puzzle =
	{
		{4, 6, 7, 1, 1, 1, 1, 1, 2, 3 },
		{7, 7, 7, 2, 1, 2, 1, 7, 3, 0 },
		{2, 2, 0, 1, 0, 1, 0, 7, 8, 0 },
		{2, 3, 0, 2, 3, 3, 3, 7, 7, 0 },
		{2, 8, 0, 7, 2, 1, 2, 8, 2, 0 },
		{2, 8, 0, 8, 2, 0, 1, 7, 1, 0 },
		{7, 2, 0, 2, 3, 0, 8, 2, 1, 0 },
		{7, 2, 0, 1, 1, 0, 8, 1, 7, 0 },
		{8, 1, 0, 7, 7, 7, 3, 2, 7, 0 },
		{8, 8, 0, 7, 5, 7, 0, 3, 8, 8 }
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
				case 0: // Moving Tile - Downward
					CreateTile(forwardSpacePrefab, j, 0, i, false, true, false, false, false, false, false, 0);
					break;
				case 1: // Moving Tile - Left
					CreateTile(forwardSpacePrefab, j, 0, i, false, true, false, false, false, false, false, 3);
					break;
				case 2: // Moving Tile - Forward
					CreateTile(forwardSpacePrefab, j, 0, i, false, true, false, false, false, false, false, 2);
					break;
				case 3: // Moving Tile - Right
					CreateTile(forwardSpacePrefab, j, 0, i, false, true, false, false, false, false, false, 1);
					break;
				case 4: // Player/Start Location 
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, -1);
					break;
				case 5: // Ending location
					CreateTile (endSpacePrefab, j, 0.5f, i, false, false, false, false, false, false, true, -1);
					break;
				case 6: // Jester Location
					CreateTile (jesterPrefab, j, 0.5f, i, true, false, false, true, false, false, false, -1);
					break;
				case 7: // Normal Space
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, -1);
					break;
				case 8: // Obstacle Spcae
					CreateTile(obstaclePrefab, j, 0.5f, i, true, false, false, true, false, false, false, -1);
					break;
				default: 
					CreateTile(normalSpacePrefab, j, 0, i, false, false, false, false, false, false, false, -1);
					break;
				}
			}
		}
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
		SceneManager.LoadScene ("EnemyLevel_1", LoadSceneMode.Single);
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
