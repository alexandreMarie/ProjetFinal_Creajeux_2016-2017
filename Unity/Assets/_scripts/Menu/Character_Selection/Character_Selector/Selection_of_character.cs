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
    [SerializeField]
    bool[] Bool_player;
    [SerializeField]
    int[] ID_Player;
    [SerializeField]
    bool[] YSticks_Realeas;
    bool[] XSticks_Realeas;
    bool[] Bbutton_Realeas;
    bool[] Abutton_Realeas;
    [SerializeField]
    bool Debug_Clavier;
    [SerializeField]
    bool Debug_Mode;


    void Start () {
        XIM = XInputManager.Instance;
        ID_Player = new int[2];
        GM = GameManager.Instance;



        Bool_player = new bool[2];
        Bbutton_Realeas = new bool[2];
        Abutton_Realeas = new bool[2];
        if (Debug_Mode == true)
        {
            for (int i = 0; i < 2; i++)
            {
                ID_Player[i] = Random.Range(0, 3);
                Bbutton_Realeas[i] = false;
                Abutton_Realeas[i] = false;
                Bool_player[i] = false;
            }
        }
        else
        {
            for (int i = 0; i < XIM.NumControllers; i++)
            {
                ID_Player[i] = Random.Range(0, 3);
                Bbutton_Realeas[i] = false;
                Abutton_Realeas[i] = false;
                Bool_player[i] = false;
            }
        }
        YSticks_Realeas = new bool[2];
        XSticks_Realeas = new bool[2];
    }


	// Update is called once per frame
	void Update () {
        Number_of_payers = XIM.NumControllers;


        if (Number_of_payers != Last_Number_of_Player)
        {
            for (int i = 0; i < Number_of_payers; i++)
            {
                //ID_Player[i] = 0;
                Bbutton_Realeas[i] = false;
                Abutton_Realeas[i] = false;
                Bool_player[i] = false;
            }
            //Get_Conneccted_Player();
        }


      
        Select_character();
        //Placement_Character();

        Last_Number_of_Player = Number_of_payers;
    }


    //void Get_Conneccted_Player()
    //{

    //        charac_tab = new GameObject[Number_of_payers, 4];
    //        for (int j = 0; j < Number_of_payers; j++)
    //        {
    //            for (int i = 0; i < 4; i++)
    //            {
    //                //charac_tab[j, i] = NB.Character_liste[i];
    //            }
    //        }
     
    //}

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
        if(Debug_Clavier == true)
        {
        
            for (int i = 0; i < 2; i++)
            {
                
                if ((Input.GetKeyUp(KeyCode.Space)) && XSticks_Realeas[i] == true  && Abutton_Realeas[i] == false)
                {
                    Abutton_Realeas[i] = true;
                }

                if ((Input.GetKeyUp(KeyCode.Escape)) && XSticks_Realeas[i] == true && Bbutton_Realeas[i] == false)
                {
                    Bbutton_Realeas[i] = true;
                }

                if (Input.GetKeyUp(KeyCode.LeftArrow) || Input.GetKeyUp(KeyCode.RightArrow))
                {

                    XSticks_Realeas[i] = true;
                }

                if ((Input.GetKeyDown(KeyCode.RightArrow)) && XSticks_Realeas[i] == true && Return_Bool[i] == false)
                {
                    ID_Player[i]++;
                    if (ID_Player[i] > 3)
                    {
                        ID_Player[i] = 0;
                    }

                    XSticks_Realeas[i] = false;
                }

                if (Input.GetKeyDown(KeyCode.LeftArrow) && XSticks_Realeas[i] == true  && Return_Bool[i] == false)
                {
                
                    ID_Player[i]--;

                    if (ID_Player[i] < 0)
                    {
                        ID_Player[i] = 3;
                    }
                    XSticks_Realeas[i] = false;
                }


                if (Input.GetKeyDown(KeyCode.Space) && Abutton_Realeas[i] == true)
                {
                    Bool_player[i] = true;
                    Abutton_Realeas[i] = false;
                }

                if (Input.GetKeyDown(KeyCode.Escape) && Bbutton_Realeas[i] == true)
                {
                    SceneManager.LoadScene("MainMenu");
                    Bbutton_Realeas[i] = false;
                }

            }
        }

       else if (Debug_Clavier == false)
        {
            for (int i = 0; i < XIM.NumControllers; i++)
            {

                if (XIM.CurrState[i].Buttons.A == ButtonState.Released  && Abutton_Realeas[i] == false)
                {
                    Abutton_Realeas[i] = true;
                }

                if (XIM.CurrState[i].Buttons.B == ButtonState.Released && Bbutton_Realeas[i] == false)
                {
                    Bbutton_Realeas[i] = true;
                }

                if (XIM.CurrState[i].ThumbSticks.Left.X == 0.0f)
                {
                    XSticks_Realeas[i] = true;
                }

                if (XIM.CurrState[i].ThumbSticks.Left.X > 0.5f && XSticks_Realeas[i] == true && Return_Bool[i] == false)
                {
                    ID_Player[i]++;
                    if (ID_Player[i] > 3)
                    {
                        ID_Player[i] = 0;
                    }

                    XSticks_Realeas[i] = false;
                }

                if (XIM.CurrState[i].ThumbSticks.Left.X < -0.5f && XSticks_Realeas[i] == true  && Return_Bool[i] == false)
                {
                    ID_Player[i]--;

                    if (ID_Player[i] < 0)
                    {
                        ID_Player[i] = 3;
                    }
                    XSticks_Realeas[i] = false;
                }


                if (XIM.CurrState[i].Buttons.A == ButtonState.Pressed && Abutton_Realeas[i] == true)
                {
                    Bool_player[i] = true;
                    Abutton_Realeas[i] = false;
                }

                if (XIM.CurrState[i].Buttons.B == ButtonState.Pressed && Bbutton_Realeas[i] == true)
                {
                    SceneManager.LoadScene("MainMenu");
                    Bbutton_Realeas[i] = false;
                }

            }

        }
    }
    

}
