using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using XInputDotNetPure;
public class Character_Selection : MonoBehaviour {


   public struct Info_Perso
    {
      public  float Speed;
      public int attack;
       public int ID_mesh;//1 - War, 2 - Death,3 - Fury,4 - Strife  
    }
    /*RAJOUTE UN STICK ABRUTIT DE PROG STEAMPUNK*/
    bool Button_is_releasd;
    bool playerIndexSet = false;
    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;
    Info_Perso [] sinfo_perso;

    Transform[] Perso;
    Vector3[] Position;

    Canvas Canevas_State;

    


    [SerializeField]
    int ID_Player;

    [SerializeField]
    int ID_Perso;

	// Use this for initialization
	void Start () {
        Perso = GetComponentsInChildren<Transform>();
        Canevas_State = GetComponentInChildren<Canvas>();
        sinfo_perso = new Info_Perso[4];
        Position = new Vector3[5];
        for(int i = 1; i < Perso.Length;i++)
        {
            Position[i] = Perso[i].position;
            sinfo_perso[i - 1].attack = 10 * i;
            sinfo_perso[i - 1].Speed = 10 * i;
        }
        Debug.Log(Perso.Length);
	}
	
	// Update is called once per frame
	void Update () {

        

        if (!playerIndexSet || !prevState.IsConnected)
        {

            PlayerIndex testPlayerIndex = (PlayerIndex)ID_Player;
            GamePadState testState = GamePad.GetState(testPlayerIndex);
            if (testState.IsConnected)
            {
                Debug.Log(string.Format("GamePad found {0}", testPlayerIndex));
                playerIndex = testPlayerIndex;
                playerIndexSet = true;
            }

        }

        prevState = state;
        state = GamePad.GetState(playerIndex);


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


    void Perso_Selector()
    {
        for (int i = 1; i < Perso.Length; i++)
        {
            if (i == ID_Perso)
            {
                Perso[i].position = new Vector3(Perso[i].position.x, Perso[i].position.y,-6.5f);
                Canevas_State.GetComponentInChildren<Text>().text = "Vie : " + 20  + " Speed : " + sinfo_perso[i-1].Speed  + " Attaque : " + sinfo_perso[i - 1].attack;
                if (prevState.Buttons.X == ButtonState.Pressed)
                {

                }
            }
            else
            {
                Perso[i].position = Position[i];
            }
        }
    }
}
