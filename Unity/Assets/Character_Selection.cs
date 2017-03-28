using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using XInputDotNetPure;
public class Character_Selection : MonoBehaviour {
    //24 25 26 avril Alpha
    //9 10 mai Beta
    //23 24 34 mais Milestone final
    //29 30 31 Final Milestone

   public struct Info_Perso
    {
      public  float Speed;
      public int attack;
       public int ID_mesh;//1 - War, 2 - Death,3 - Fury,4 - Strife  
    }
    /*RAJOUTE UN STICK ABRUTIT DE PROG STEAMPUNK*/

    /* Changer le personnage dans le menu de selection

    Quand le joueur appuye sur la fleche de droite, ou la fleche de gauche
    le modéle du personnage change

    */


    Info_Perso struct_Info_Perso;
   
    bool Button_is_releasd;
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
 
	}
	
	// Update is called once per frame
	void Update () {


       
            if (!playerIndexSet || !prevState.IsConnected)
            {

                PlayerIndex testPlayerIndex = (PlayerIndex)test;
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
            Button_is_releasd = true;
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
