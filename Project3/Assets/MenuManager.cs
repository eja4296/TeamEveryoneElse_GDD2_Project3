using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour {
    public GameObject MenuContainer;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.Escape)) {
            MenuContainer.SetActive(!MenuContainer.activeSelf);
            if (MenuContainer.activeSelf) {
                Time.timeScale = 0f;
            }else {
                Time.timeScale = 1f;
            }
            
        }
        
	}
    public void Resume() {
        MenuContainer.SetActive(false);
        Time.timeScale = 1f;
    }
    public void MainMenu() {
        SceneManager.LoadScene("Main Menu");
    }
    public void Exit() {
        Application.Quit();
    }
}
