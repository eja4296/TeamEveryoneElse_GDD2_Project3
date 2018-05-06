using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public enum Difficulty
{
    TUTORIAL,
    EASY,
    MEDIUM,
    HARD
}

public class DifficultyClass
{
    public static Difficulty CurrentDifficulty = Difficulty.TUTORIAL;
}

public abstract class Floor : MonoBehaviour
{

    public GameObject[,] spaces;
    public int length;
    public int width;

    public Material breakableSpaceMat;
    public Material unbrokenSpaceMat;

    public GameObject enemyPrefab;
    //public int currentFloor;

    public List<GameObject> movableObjects;

    // The x & z offset from the script's gameObject loc to the castle start
    public float xOffset;
    public float zOffset;

    // Types of tiles and obstacles
    public GameObject normalSpacePrefab;
    public GameObject obstaclePrefab;
    public GameObject endSpacePrefab;
    public GameObject forwardSpacePrefab;
    public GameObject backwardSpacePrefab;
    public GameObject rightSpacePrefab;
    public GameObject leftSpacePrefab;
    public GameObject movableObstaclePrefab;
    public GameObject breakableSpacePrefab;
    public GameObject jesterSpacePrefab;
	public GameObject jesterPrefab;
    public GameObject playerPrefab;
    public GameObject wallPrefab;

    public Animator knightAnimator;

    // Player positions in relation to the grid
    public int playerPosX = 0;
    public int playerPosZ = 0;

    // The difficult of the puzzles
    protected Difficulty difficulty = Difficulty.EASY;

    // Empty arrays of puzzles
    public int[,] puzzle;

    public bool resetLevel = false;
    public bool paused = false;

    public Camera mainCam;
    public Camera orthoCam;

    public AudioClip movementSound;
    protected AudioClip victory;
    protected AudioClip failure;
    protected AudioSource source;
    public int normalTileNum = 0; // This should be equal to whatever the normal, empty tile is for your floor
    public int doorTileNum = 4; // This should be equal to whatever the end space is for your floor

    // Use this for initialization
    void Start()
    {
        victory = (AudioClip)Resources.Load("Sounds/Sound_Effects/Ta-Da-Level-Beat");
        failure = (AudioClip)Resources.Load("Sounds/Sound_Effects/Sad-Trumbone-Restart");
        source = GetComponent<AudioSource>();

        difficulty = DifficultyClass.CurrentDifficulty;

        switch (difficulty)
        {
            case Difficulty.TUTORIAL:
                puzzle = GetTutorialPuzzle();
                break;
            case Difficulty.EASY:
                puzzle = GetEasyPuzzle();
                break;
            case Difficulty.MEDIUM:
                puzzle = GetMediumPuzzle();
                break;
            case Difficulty.HARD:
                puzzle = GetHardPuzzle();
                break;

        }

        length = puzzle.GetLength(0);
        width = puzzle.GetLength(1);
        spaces = new GameObject[length, width];
        xOffset = this.transform.position.x + 0.5f - (width / 2);
        zOffset = this.transform.position.z + 0.5f - (length / 2);
        movableObjects = new List<GameObject>();
        CreateLevel();
        CreateWalls();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.C))
        {
            mainCam.enabled = !mainCam.enabled;
			orthoCam.orthographicSize = (length > width) ? length / 2f : width / 2f;
            orthoCam.enabled = !orthoCam.enabled;

        }
    }

    // Will check the progress of the respective child puzzle
    public abstract void PuzzleCheck();

    // Will be created in children classes to initalize the respective puzzle
    public abstract void CreateLevel();

    public abstract void NextLevel();

    public abstract void ResetPuzzle();

    // Will return the puzzle for the respective difficulty
    public abstract int[,] GetTutorialPuzzle();
    public abstract int[,] GetEasyPuzzle();
    public abstract int[,] GetMediumPuzzle();
    public abstract int[,] GetHardPuzzle();

    /// <summary>
    /// Creates a tile Game Object with the given information
    /// </summary>
    /// <param name="prefab">The type of tile we are making</param>
    /// <param name="x">X location in spaces (j)</param>
    /// <param name="y">Y location in the Unity world</param>
    /// <param name="z">Z location in spaces (i)</param>
    /// <param name="isObstacle">If this object is an obstacle</param>
    /// <param name="isMovingSpace">If this object can move</param>
    /// <param name="isBreakable">If this is a breakable tile</param>
    /// <param name="direction">Direction this tile would move us in (-1 default)</param>
	public void CreateTile(GameObject prefab, int x, float y, int z, bool isObstacle, bool isMovingSpace, bool isBreakable, bool occupied, bool isEnemy, bool isMovable, bool isEndSpace, bool isPlayer, bool isJester, int direction)
    {

        GameObject newSpace = GameObject.Instantiate(prefab, new Vector3(x + xOffset, y, z + zOffset), Quaternion.identity);
        newSpace.AddComponent<Space>();
        newSpace.GetComponent<Space>().isObstacle = isObstacle;
        newSpace.GetComponent<Space>().isMovingSpace = isMovingSpace;
        newSpace.GetComponent<Space>().isBreakableSpace = isBreakable;
        newSpace.GetComponent<Space>().direction = direction;
        newSpace.GetComponent<Space>().wasVisited = false;
        newSpace.GetComponent<Space>().occupied = occupied;
        newSpace.GetComponent<Space>().isMovableObstacle = isMovable;
        newSpace.GetComponent<Space>().isEndPosition = isEndSpace;
        /*
		if (isMovingSpace == true) {
			newSpace.transform.Rotate(new Vector3 (0f, (90f * direction), 0f));

		}
		*/
        if (isEnemy)
        {
            GameObject enemy = GameObject.Instantiate(enemyPrefab, new Vector3(x + xOffset - 0.25f, 0f, z + zOffset + 0.25f), Quaternion.identity);
            enemy.AddComponent<Enemy>();
            enemy.GetComponent<Enemy>().positionOnFloorX = z;
            enemy.GetComponent<Enemy>().positionOnFloorZ = x;
            enemy.GetComponent<Enemy>().knightAnimator = knightAnimator;

        }
        if (isMovable)
        {
            GameObject movableObstacleObj = GameObject.Instantiate(movableObstaclePrefab, new Vector3(x + xOffset, 0.5f, z + zOffset), Quaternion.identity);
            movableObstacleObj.AddComponent<MovableObstacle>();
            movableObstacleObj.GetComponent<MovableObstacle>().positionOnFloorX = z;
            movableObstacleObj.GetComponent<MovableObstacle>().positionOnFloorZ = x;
            movableObjects.Add(movableObstacleObj);
        }
        if (isPlayer)
        {
            GameObject newPlayer = GameObject.Instantiate(playerPrefab, new Vector3(x + xOffset - 0.25f, 0f, z + zOffset + 0.25f), Quaternion.identity);
            newPlayer.GetComponent<Player>().floor = this.gameObject.GetComponent<Floor>();
            newPlayer.GetComponent<Player>().positionOnFloorX = z;
            newPlayer.GetComponent<Player>().positionOnFloorZ = x;
            newPlayer.GetComponent<Player>().newXPos = z;
            newPlayer.GetComponent<Player>().newZPos = x;
            newPlayer.GetComponent<Player>().startingXIndex = z;
            newPlayer.GetComponent<Player>().startingZIndex = x;
        }
		if (isJester) {
			GameObject newJester = GameObject.Instantiate(jesterPrefab, new Vector3(x + xOffset, 0.5f, z + zOffset), Quaternion.identity);
		}
		if (!isEndSpace && isObstacle)
        {
            int randNum = Random.Range(0, 3);

            newSpace.transform.Rotate(new Vector3(0f, randNum * 90f, 0f));
        }

        spaces[z, x] = newSpace;
    }

    void CreateWalls()
    {
        GameObject rightWall = GameObject.Instantiate(wallPrefab, new Vector3(width / 2f, 0f, 0f), Quaternion.identity);
        rightWall.transform.Rotate(90f, 0f, 90f);
        rightWall.transform.localScale = new Vector3(length / 10f * 2f, 1f, 1f);
        GameObject backWall = GameObject.Instantiate(wallPrefab, new Vector3(0f, 0f, length / 2f), Quaternion.identity);
        backWall.transform.Rotate(90f, 0f, 180f);
        backWall.transform.localScale = new Vector3(length / 10f * 2f, 1f, 1f);
        GameObject leftWall = GameObject.Instantiate(wallPrefab, new Vector3(-width / 2f, 0f, 0f), Quaternion.identity);
        leftWall.transform.Rotate(90f, 0f, 270f);
        leftWall.transform.localScale = new Vector3(length / 10f * 2f, 1f, 1f);

        int camOffset = (length - 10) / 2;
        mainCam.transform.position = new Vector3(mainCam.transform.position.x, mainCam.transform.position.y, mainCam.transform.position.z - camOffset);
    }

    protected IEnumerator LoadScene(AudioClip audio, string scene, bool resetLevel)
    {
        Debug.Log("Play audio");
        source.PlayOneShot(audio);
        paused = true;
        yield return new WaitForSeconds(2.0f);
        SceneManager.LoadScene(scene, LoadSceneMode.Single);
        paused = false;
        this.resetLevel = resetLevel;
    }

}
