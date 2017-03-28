using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuButton : MonoBehaviour
{
    public void Load_Scene(int stateButton)
    {
        SceneManager.LoadScene(stateButton);
    }
}