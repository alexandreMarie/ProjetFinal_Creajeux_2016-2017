using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameOver : MonoBehaviour {

    public GameObject go;
    
    void Start()
    {
       
    }
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
        SceneManager.LoadScene("Titles");
    }

    
}
