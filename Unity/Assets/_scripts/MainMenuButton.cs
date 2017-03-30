using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuButton : MonoBehaviour
{
    MenuManager MManag;

    public void Set_LoadMode(int Mode_Chargement)
    {
        MManag.SetLoadState((MenuManager.load_mode)Mode_Chargement);
    }

    public void Load_Scene(int stateButton)
    {
        MManag = MenuManager.Instance;
        SceneManager.LoadScene(stateButton);
    }
}