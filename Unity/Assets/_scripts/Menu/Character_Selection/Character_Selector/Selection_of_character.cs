using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using XInputDotNetPure;
public class Selection_of_character : MonoBehaviour {

    //public enum SelectCharact { Null, Death, Pestilence, Famine, War };
    //public struct Stats_Character
    //{
    //    public float speed;
    //    public int attack;
    //    public int PDV;
    //    public SelectCharact selectCharact;
    //}
    GameManager GM;
    XInputManager XIM;
    GameObject[,] charac_tab;	// Use this for initialization
    [SerializeField]
    GameManager.Stats_Character[] Characters;
    [SerializeField]
    Number_Of_Player NB;

    int Number_of_payers;
    int Last_Number_of_Player;
    bool[] Bool_player;
    [SerializeField]
    int[] ID_Player;
    bool[] YSticks_Realeas;



    void Start () {
        XIM = XInputManager.Instance;
        ID_Player = new int[2];
        GM = GameManager.Instance;
        Bool_player = new bool[XIM.NumControllers];
        ID_Player = new int[XIM.NumControllers];
        for (int i = 0; i < XIM.NumControllers; i++)
        {
            ID_Player[i] = 3;
        }
        YSticks_Realeas = new bool[XIM.NumControllers];
        
    }


	// Update is called once per frame
	void Update () {
        Number_of_payers = XIM.NumControllers;


        if (Number_of_payers != Last_Number_of_Player)
        {
            Bool_player = new bool[XIM.NumControllers];
            ID_Player = new int[XIM.NumControllers];
            for (int i = 0; i < XIM.NumControllers; i++)
            {
                ID_Player[i] = 3;
            }
            YSticks_Realeas = new bool[XIM.NumControllers];
            Get_Conneccted_Player();
        }
        Select_character();
        //Placement_Character();

        Last_Number_of_Player = Number_of_payers;
    }


    void Get_Conneccted_Player()
    {

            charac_tab = new GameObject[Number_of_payers, 4];
            for (int j = 0; j < Number_of_payers; j++)
            {
                for (int i = 0; i < 4; i++)
                {
                    charac_tab[j, i] = NB.Character_liste[i];
                }
            }
     
    }

    public GameManager.Stats_Character [] Return_State
    {
        get
        {
            return Characters;
        }
    }

   public bool [] Return_Bool
    {
        get
        {
            return Bool_player;
        }
    }

    public int [] Return_ID_player
    {
        get
        {
            return ID_Player;
        }
    }

    public GameObject [,] Return_list_players
    {
        get
        {
            return charac_tab;
        }
    }

    void Select_character()
    {
        for(int i = 0; i < XIM.NumControllers; i++)
        {


            if (XIM.CurrState[i].ThumbSticks.Left.Y == 0.0f)
            {
                YSticks_Realeas[i] = true;
            }

            if (XIM.CurrState[i].ThumbSticks.Left.Y > 0.5f && YSticks_Realeas[i] == true)
            {
                ID_Player[i]++;
                if(ID_Player[i] > 3)
                {
                    ID_Player[i] = 0;
                }

                YSticks_Realeas[i] = false;
            }

            if (XIM.CurrState[i].ThumbSticks.Left.Y < -0.5f && YSticks_Realeas[i] == true)
            {
                ID_Player[i]--;

                if (ID_Player[i] < 0)
                {
                    ID_Player[i] = 3;
                }
                YSticks_Realeas[i] = false;
            }


            if (XIM.CurrState[i].Buttons.A == ButtonState.Pressed)
            {
                Bool_player[i] = true;
            }

            if (XIM.CurrState[i].Buttons.B == ButtonState.Pressed)
            {
                SceneManager.LoadScene("MainMenu");
            }
        }
    }
    

}
