using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using XInputDotNetPure;
public class MainMenu_Button : MonoBehaviour {

    bool playerIndexSet = false;
    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;
     
    private MenuManager.StateMenu Id_Seleted_menu;

    // Use this for initialization
    void Start()
    {
    }
   public void Load_Scene(int State_Button)
    {
        SceneManager.LoadScene(State_Button);
    }
}
