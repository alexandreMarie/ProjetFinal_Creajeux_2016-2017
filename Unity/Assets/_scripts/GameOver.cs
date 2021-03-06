﻿using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameOver : MonoBehaviour {

    public GameObject go;
    public Text txt;

     void ActiveButton()
     {
         go.SetActive(true);
     }

     public void RestartCurrentScene()
     {
         int scene = SceneManager.GetActiveScene().buildIndex;
         SoundsManager.Instance.SourceMusic.Stop();
         SceneManager.LoadScene(scene, LoadSceneMode.Single);
     }

     public void MainMenu()
     {
         SceneManager.LoadScene((int)MenuManager.StateMenu.MainMenu);
     }
    
}