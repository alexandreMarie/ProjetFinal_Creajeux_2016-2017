using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using XInputDotNetPure;
public class Character_Selection : MonoBehaviour {
    //24 25 26 avril Alpha
    //9 10 mai Beta
    //23 24 34 mais Milestone final
    //29 30 31 Final Milestone

    public struct Stats_Character
    {
        public float speed;
        public int attack;
        public float PDV;
    }
    /*RAJOUTE UN STICK ABRUTIT DE PROG STEAMPUNK*/

    /* Changer le personnage dans le menu de selection

    Quand le joueur appuye sur la fleche de droite, ou la fleche de gauche
    le modéle du personnage change

    */


    Stats_Character [] Characters;

    bool Selection_Validate = false;
    bool Button_is_releasd;
    bool Button_is_releasd_A = false;
    bool playerIndexSet = false;
    [SerializeField]
    PlayerIndex test;

    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;

    Canvas Canevas_State;

    [SerializeField]
    GameObject[] Player;


    [SerializeField]
    int ID_Player;

    [SerializeField]
    int ID_Perso;

	// Use this for initialization
	void Start () {
    
        Canevas_State = GetComponentInChildren<Canvas>();
        Characters = new Stats_Character[4];
        for (int i = 0; i < Characters.Length; i++)
        {
            Characters[i].attack = (int)Random.Range(1.0f, 50.0f);
            Characters[i].speed = Random.Range(1.0f, 50.0f);
            Characters[i].PDV = Random.Range(1.0f, 50.0f);
        }
    }
	
	// Update is called once per frame
	void Update () {


       
            if (!playerIndexSet || !prevState.IsConnected)
            {

                PlayerIndex testPlayerIndex = test;
                GamePadState testState = GamePad.GetState(testPlayerIndex);
                if (testState.IsConnected)
                {
                    Debug.Log(string.Format("GamePad found {0}", testPlayerIndex));
                    playerIndex = testPlayerIndex;
                    playerIndexSet = true;
                }

            }
        prevState = state;
        state = GamePad.GetState(test);


        if(prevState.DPad.Right == ButtonState.Released && prevState.DPad.Left == ButtonState.Released)
        {
            Debug.Log("Test");
            Button_is_releasd = true;
        }

        if (prevState.Buttons.A == ButtonState.Released && prevState.Buttons.A == ButtonState.Released)
        {
            Button_is_releasd_A = true;
        }

        if (prevState.Buttons.A == ButtonState.Pressed && Button_is_releasd_A == true)
        {
            Debug.Log("Test");
            Button_is_releasd_A = false;
            Selection_Validate = true;
        }

        if (Button_is_releasd == true)
        {
            ID_Perso_Selector();
        }
        Perso_Selector();
    }

    void ID_Perso_Selector()
    {
        if (prevState.DPad.Right == ButtonState.Pressed)
        {
           
                ID_Perso++;
                if (ID_Perso > 4)
                {
                    ID_Perso = 1;
                }
                Button_is_releasd = false;
                Debug.Log(ID_Perso);
            
        }

        if (prevState.DPad.Left == ButtonState.Pressed)
        {
          
                ID_Perso--;
                if (ID_Perso < 1)
                {
                    ID_Perso = 4;
                }
                Button_is_releasd = false;
                Debug.Log(ID_Perso);
            
        }
    }

    public bool Return_Boolen()
    {
       
     return Selection_Validate;
     
    }
    public Stats_Character Return_Stats(int ID_Player)
    {
        return Characters[ID_Player];
    }
   public int Return_Id_Player()
    {
        return ID_Perso;
    }
    void Perso_Selector()
    {
        //Debug.Log(playerIndex);

            for (int i = 0; i< Player.Length; i++)
            {
                if (i == ID_Perso - 1)
                { 
                    Player[i].transform.position = new Vector3(Player[i].transform.position.x, 0.0f, Player[i].transform.position.z);
                }
                else
                    Player[i].transform.position = new Vector3(Player[i].transform.position.x, 10.0f, Player[i].transform.position.z);
            }
        

    }
}
