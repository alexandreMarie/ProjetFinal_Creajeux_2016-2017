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
    [SerializeField]
    SoundsManager SM;
    // Use this for initialization
    void Start () {
        GM = GameManager.Instance;
        XIM = XInputManager.Instance;
        MManag = MenuManager.Instance;
        Loading_Ok = false;
        SM.Play_Selector(1);
        
	}
	
	// Update is called once per frame
	void Update () {
        Players = GetComponentsInChildren<Character_Selection>();
        for (int i = 0; i < Players.Length; i++)
        {
            Players[i].GetComponent<Character_Selection>().Set_SM(SM);
        }
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
            //First : Create Structure
            GM.CreateStrucCharact(XIM.NumControllers);
            //Second : Add variable
            for(int i = 0; i < XIM.NumControllers;i++)
            {
                GM.Set_Stat_Player(Players[i].Return_Stats(Players[i].Return_Id_Player()-1), i);
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
