using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class Arena_Selection : MonoBehaviour {

    [SerializeField]
    PlayerIndex test;

    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;

    bool Button_is_releasd;
    int Arena_ID;
    [SerializeField]
    GameObject[] Arenas;
    float Actual_Rotation = 0;
    float Rotation_Targeted = 0;
    float Step_of_rotation;
	// Use this for initialization
	void Start () {
        Arenas = GetComponentsInChildren<GameObject>();
        Step_of_rotation = 360 / Arenas.Length;
	}
	
	// Update is called once per frame
	void Update () {
        prevState = state;
        state = GamePad.GetState(test);

        if (prevState.DPad.Right == ButtonState.Released && prevState.DPad.Left == ButtonState.Released)
        {
            Debug.Log("Test");
            Button_is_releasd = true;
        }


        if (Button_is_releasd == true)
        {
            ID_Perso_Selector();
        }
      Rotate_Arena();
    }

    void ID_Perso_Selector()
    {
        if (prevState.DPad.Right == ButtonState.Pressed)
        {

            Arena_ID++;
            if (Arena_ID > 4)
            {
                Arena_ID = 1;
            }
            Rotation_Targeted += Step_of_rotation;
            Button_is_releasd = false;
            Debug.Log(Arena_ID);

        }

        if (prevState.DPad.Left == ButtonState.Pressed)
        {

            Arena_ID--;
            if (Arena_ID < 1)
            {
                Arena_ID = 4;
            }
            Rotation_Targeted -= Step_of_rotation;
            Button_is_releasd = false;
            Debug.Log(Arena_ID);

        }
    }
    void Rotate_Arena()
    {
        if(Actual_Rotation < Rotation_Targeted)
        {
            Actual_Rotation++;
            transform.eulerAngles = new Vector3(0.0f, Actual_Rotation, 0.0f);
        }
        if (Actual_Rotation > Rotation_Targeted)
        {
            Actual_Rotation--;
            transform.eulerAngles = new Vector3(0.0f, Actual_Rotation, 0.0f);
        }
    }
}
