using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
public class All_player_selected : MonoBehaviour {

    bool Loading_Ok;
    [SerializeField]
    Character_Selection[] Players;
    GameManager GM;
    XInputManager XIM;
    MenuManager MManag;
    // Use this for initialization
    void Start () {
        GM = GameManager.Instance;
        XIM = XInputManager.Instance;
        MManag = MenuManager.Instance;
        Loading_Ok = false;
        
	}
	
	// Update is called once per frame
	void Update () {
        Players = GetComponentsInChildren<Character_Selection>();
        Debug.Log(Players.Length);
        for (int i = 0; i < Players.Length; i++)
        {
            if (Players[i].Return_Boolen() == true)
            {
                Loading_Ok = true;
            }
            else
            {
                Loading_Ok = false;
                i = Players.Length;
            }
        }
	if(Loading_Ok == true)
        {
            Debug.Log("Ca marche! putain pour une fois t'es compétant fete ca enculé !");
           for(int i = 0; i < XIM.NumControllers;i++)
            {
                GM.Set_Stat_Player(Players[i].Return_Stats(i), i, XIM.NumControllers);
            }
            Debug.Log(MManag.GetLoadState());
           switch(MManag.GetLoadState())
            {
                case (MenuManager.load_mode.New_Game)://NewGame
                    SceneManager.LoadScene(3);
                    break;
                case (MenuManager.load_mode.Continue)://Continue
                    SceneManager.LoadScene(3);
                    break;
                case (MenuManager.load_mode.Battle)://Battle
                    SceneManager.LoadScene(6);
                    break;
            }
        }
	}
}
