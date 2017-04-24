using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class Selection_of_character : MonoBehaviour {

    public enum SelectCharact { Null, Death, Pestilence, Famine, War };
    public struct Stats_Character
    {
        public float speed;
        public int attack;
        public int PDV;
        public SelectCharact selectCharact;
    }

    XInputManager XIM;
    GameObject[,] charac_tab;	// Use this for initialization
    Stats_Character[] Characters;
    [SerializeField]
    Number_Of_Player NB;
    int Number_of_payers;
    int Last_Number_of_Player;
    bool[] Bool_player;
    int[] ID_Player;
    bool[] YSticks_Realeas;



    void Start () {
        XIM = XInputManager.Instance;
        ID_Player = new int[2];
        Characters = new Stats_Character[4];
	}
	

    void Init_Character()
    {
        Characters[0].attack = 20;
        Characters[0].PDV = 200;
        Characters[0].speed = 05;
        Characters[0].selectCharact = SelectCharact.War;

        Characters[1].attack = 10;
        Characters[1].PDV = 100;
        Characters[1].speed = 10;
        Characters[1].selectCharact = SelectCharact.Famine;

        Characters[2].attack = 15;
        Characters[2].PDV = 150;
        Characters[2].speed = 15;
        Characters[2].selectCharact = SelectCharact.Pestilence;

        Characters[3].attack = 25;
        Characters[3].PDV = 050;
        Characters[3].speed = 05;
        Characters[3].selectCharact = SelectCharact.Death;
    }

	// Update is called once per frame
	void Update () {
        Bool_player = new bool[XIM.NumControllers];
        Get_Conneccted_Player();
        Select_character();

    }


    void Get_Conneccted_Player()
    {
        Number_of_payers = XIM.NumControllers;

        if (Number_of_payers != Last_Number_of_Player)
        {
            charac_tab = new GameObject[Number_of_payers, 4];
            for (int j = 0; j < Number_of_payers; j++)
            {
                for (int i = 0; i < 4; i++)
                {
                    charac_tab[j, i] = NB.Character_liste[j, i];
                }
            }
        }

        Last_Number_of_Player = Number_of_payers;
    }

    Stats_Character [] Return_State
    {
        get
        {
            return Characters;
        }
    }

    bool [] Return_Bool
    {
        get
        {
            return Bool_player;
        }
    }

    int [] Return_ID_player
    {
        get
        {
            return ID_Player;
        }
    }

    void Select_character()
    {
        for(int i = 0; i < 2; i++)
        {

            if(XIM.CurrState[i].ThumbSticks.Left.Y > 0.5f && YSticks_Realeas[i] == true)
            {
                ID_Player[i]++;
            }

            if (XIM.CurrState[i].ThumbSticks.Left.Y < -0.5f && YSticks_Realeas[i] == true)
            {
                ID_Player[i]--;
            }

            if(XIM.CurrState[i].ThumbSticks.Left.Y == 0.0f)
            {
                YSticks_Realeas[i] = true;
            }

            if (XIM.CurrState[i].Buttons.A == ButtonState.Pressed)
            {
                Bool_player[i] = true;
            }
        }
    }

}
