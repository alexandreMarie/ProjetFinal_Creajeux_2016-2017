using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameOver : MonoBehaviour {

    public GameObject go;
	

    void ActiveButton()
    {
        go.SetActive(true);
    }

    public void RestartCurrentScene()
    {
        int scene = SceneManager.GetActiveScene().buildIndex;
        SceneManager.LoadScene(scene, LoadSceneMode.Single);
    }

    public void MainMenu()
    {
        SceneManager.LoadScene("Titles");
    }
}
