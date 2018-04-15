﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuManager : MonoBehaviour {
    public GameObject ControlsPanel;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    public void Exit() {
        Application.Quit();
    }
    public void StartGame() {
        SceneManager.LoadScene("EnemyLevel");
    }
    public void ShowControls() {
        ControlsPanel.SetActive(!ControlsPanel.activeSelf);
    }
    public void HideControls() {
        ControlsPanel.SetActive(false);
    }
}
