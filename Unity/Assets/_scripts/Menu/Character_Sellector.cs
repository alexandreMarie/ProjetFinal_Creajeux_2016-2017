using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class Character_Sellector : MonoBehaviour {
   
    //bool playerIndexSet = false;
    PlayerIndex playerIndex;
    GamePadState [] state;
    GamePadState [] prevState;

    [SerializeField]
    GameObject[]Pod_of_Character;

    enum List_of_character
    {
        War =0,
        death,
        Famine,
        pestilence
    }

    List_of_character[] Choosen_Character;
    int Id_Player;
	// Use this for initialization
	void Start () {

        state = new GamePadState[2];
        prevState = new GamePadState[2];

        Choosen_Character = new List_of_character[2];
        for (int i = 0; i < Choosen_Character.Length; i++)
        {
            Choosen_Character[i] = 0;
        }

        state[0] = GamePad.GetState(PlayerIndex.One);
        state[1] = GamePad.GetState(PlayerIndex.Two);

        //Pod_of_Character = new GameObject[2];

    }
	
	// Update is called once per frame
	void Update () {

        prevState = state;
        state[0] = GamePad.GetState(PlayerIndex.One);
        state[1] = GamePad.GetState(PlayerIndex.Two);




        Choose_Id_Character();
        Moving_Charater();

    }

    void Moving_Charater()
    {
        for (int i = 0; i < 2; i++)
        {
            if (Pod_of_Character[(int)Choosen_Character[i]].transform.position.z > -3)
                Pod_of_Character[(int)Choosen_Character[i]].transform.position += new Vector3(0.0f, 0.0f, -1.0f);

            else if (Pod_of_Character[(int)Choosen_Character[i]].transform.position.z < 0)
                Pod_of_Character[(int)Choosen_Character[i]].transform.position += new Vector3(0.0f, 0.0f, 1.0f);
        }
    }

    void Choose_Id_Character()
    {
        for (int i = 0; i < 2; i++)
        {









            if (prevState[i].Buttons.LeftShoulder == ButtonState.Pressed)
            {

                if (Choosen_Character[i] < (List_of_character)3)
                {
                    Choosen_Character[i]++;
                    Debug.Log("Player 1 :" + Choosen_Character[0]);
                    Debug.Log("Player 2 :" + Choosen_Character[1]);
                }
                else
                {
                    Choosen_Character[i] = 0;
                }

                if (Choosen_Character[i] > (List_of_character)0)
                {
                    Choosen_Character[i]--;
                    Debug.Log("Player 1 :" + Choosen_Character[0]);
                    Debug.Log("Player 2 :" + Choosen_Character[1]);
                }
                else
                {
                    Choosen_Character[i] = (List_of_character)3;
                }

            }










            if (prevState[i].Buttons.RightShoulder == ButtonState.Pressed)
            {


                if ((int)Choosen_Character[i] < 4)
                {
                    Choosen_Character[i]++;
                    Debug.Log("Player 1 :" + Choosen_Character[0]);
                    Debug.Log("Player 2 :" + Choosen_Character[1]);
                }
                else
                {
                    Choosen_Character[i] = 0;
                }

                if ((int)Choosen_Character[i] > 0)
                {
                    Choosen_Character[i]--;
                    Debug.Log("Player 1 :" + Choosen_Character[0]);
                    Debug.Log("Player 2 :" + Choosen_Character[1]);
                }
                else
                {
                    Choosen_Character[i] = (List_of_character)3;
                }










            }
        }
    }


}
