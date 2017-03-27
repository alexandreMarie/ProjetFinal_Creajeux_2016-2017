using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class Character_Selection : MonoBehaviour {

    bool Button_is_releasd;
    bool playerIndexSet = false;
    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;


    Transform[] Perso;
    Vector3[] Position;
    [SerializeField]
    int ID_Player;

    [SerializeField]
    int ID_Perso;

	// Use this for initialization
	void Start () {
        Perso = GetComponentsInChildren<Transform>();
        Position = new Vector3[5];
        for(int i = 1; i < Perso.Length;i++)
        {
            Position[i] = Perso[i].position;
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
            }
            else
            {
                Perso[i].position = Position[i];
            }
        }
    }
}
