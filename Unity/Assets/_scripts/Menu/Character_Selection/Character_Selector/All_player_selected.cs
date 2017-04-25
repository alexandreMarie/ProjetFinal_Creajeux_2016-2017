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
            if (SC.Return_Bool[0] == true)
            {
            Change_Menu();
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
        Players = new Selection_of_character[2, 4];
        for (int i = 0; i < XIM.NumControllers; i++)
        {
            for(int j=0; j < 4;j++)
            {
               // Players[i,j] = NB.Character_liste[i,j].GetComponent<Selection_of_character>();
            }
        }
        Validation_all_player();


        //for (int j = 0; j < 2; j++)
        //{
        //    for (int i = 0; i < Players.Length; i++)
        //    {
        //        Players[j,i].GetComponent<Character_Selection>().Set_SM(SM);
        //    }
        //    //Debug.Log(Players.Length);
        //    for (int i = 0; i < Players.Length; i++)
        //    {
        //        if (Players[j,i].Return_Boolen() == true)
        //        {
        //            Loading_Ok = true;
        //        }
        //        else
        //        {
        //            Loading_Ok = false;
        //            i = Players.Length;
        //        }
        //    }
        //}
    }

}
