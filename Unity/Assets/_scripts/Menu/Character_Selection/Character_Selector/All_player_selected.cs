using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
public class All_player_selected : MonoBehaviour {

    bool Loading_Ok;
    Selection_of_character[,] Players;
    GameManager GM;
    XInputManager XIM;
    MenuManager MManag;
    [SerializeField]
    SoundsManager SM;
    [SerializeField]
    Number_Of_Player NB;
    [SerializeField]
    Selection_of_character SC;
    int Number_of_Player;
    // Use this for initialization
    void Start () {
        GM = GameManager.Instance;
        XIM = XInputManager.Instance;
        MManag = MenuManager.Instance;
        Loading_Ok = false;
        SM.Play_Selector(1);
        
	}
	/*Donc, on peut recuperé l'ID des joueurs et leur booléen
    maintenant il faut réussire a changer leur position en temps réel
        */
        
        void Validation_all_player()
        {
        int j = 0;
             for (int i = 0; i < Number_of_Player;i++)
            {
           
                    if(SC.Return_Bool[i] == true)
                {
                   j++;
                }
                  if(j == Number_of_Player)
                    {
                Change_Menu();
                    }
            }
      
        }


    void Change_Menu()
    {
        GM.CreateStrucCharact(XIM.NumControllers);
        //Second : Add variable
        for (int j = 0; j < XIM.NumControllers; j++)
        {
            GM.Set_Stat_Player(SC.Return_ID_player[j], j);
        }
        //Debug.Log(MManag.GetLoadState());
        switch (MManag.GetLoadState())
        {
            case (MenuManager.load_mode.New_Game)://NewGame
                SceneManager.LoadScene("LilithFight");
                break;
            case (MenuManager.load_mode.Continue)://Continue
                SceneManager.LoadScene("LilithFight");
                break;
            case (MenuManager.load_mode.Battle)://Battle
                SceneManager.LoadScene("Arena_Selector");
                break;
        }
    }
        // Update is called once per frame
	void Update () {
        Number_of_Player = XIM.NumControllers;
        Players = new Selection_of_character[2, 4];
        Validation_all_player();
    }

}
