using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class DialogueManager : MonoBehaviour {
    public Text dialogueBox;
    public List<string> dialogue;
    public GameObject background;
    int dialogueIndex;
    
	// Use this for initialization
	void Start () {
        SetText(dialogue[dialogueIndex]);
	}
	
	// Update is called once per frame
	void Update () {
        if(gameObject.activeSelf && (Input.GetKeyDown(KeyCode.W)|| Input.GetKeyDown(KeyCode.A)|| Input.GetKeyDown(KeyCode.S)|| Input.GetKeyDown(KeyCode.D)))
        {
            dialogueIndex = 0;
            dialogueBox.enabled = false;
            background.SetActive(false);
        }
		if(dialogueBox.enabled && (Input.GetKeyDown(KeyCode.Return) || Input.GetKeyDown(KeyCode.Space)))
        {
            Next();
        }
        
        if (Vector3.Distance(GameObject.Find("Jester(Clone)").transform.position, GameObject.Find("Player(Clone)").transform.Find("GameObject").transform.position) < 1.5f && Input.GetKeyDown(KeyCode.F))
        {
            dialogueIndex = 0;
            dialogueBox.enabled = true;
            background.SetActive(true);
        }
	}
    void SetText(string text)
    {
        dialogueBox.text = text;
    }
    public void Next()
    {
        if(dialogueIndex < dialogue.Count-1)
        {
            dialogueIndex++;
        }
        else
        {
            dialogueIndex = 0;
            dialogueBox.enabled = false;
            background.SetActive(false);
        }
        
        SetText(dialogue[dialogueIndex]);
    }
}
