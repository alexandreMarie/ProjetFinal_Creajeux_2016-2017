using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameOver : MonoBehaviour {

    public GameObject go;
    public Text txt;
    
    void Update()
    {
       if(GameManager.Instance.LifeBoss <=0)
        {
            txt.text = "WIN !!!!";
        }
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
