using UnityEngine;
using UnityEngine.SceneManagement;


public class MainMenuButton : MonoBehaviour
{
    [SerializeField]
    SoundsManager SM;
    MenuManager MManag;

    public void Set_LoadMode(int Mode_Chargement)
    {
        SM.Play_Selector(1);
        MManag.SetLoadState((MenuManager.load_mode)Mode_Chargement);
    }

    public void Load_Scene(string stateButton)
    {
        MManag = MenuManager.Instance;
        SceneManager.LoadScene(stateButton);
    }

    public void Exite_Game()
    {
        Application.Quit();
    }
}