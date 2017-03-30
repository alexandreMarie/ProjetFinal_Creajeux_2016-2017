using UnityEngine;
using System.Collections;
using XInputDotNetPure;
using UnityEngine.SceneManagement;
public class Arena_Selection : MonoBehaviour {

    GameManager GM;

    [SerializeField]
    PlayerIndex test;

    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;

    bool Button_is_releasd;
    bool Button_is_releasd_A;
    int Arena_ID;
    [SerializeField]
    Animator[] Arenas;
    float Actual_Rotation = 0;
    float Rotation_Targeted = 0;
    float Step_of_rotation;
    [SerializeField]
    bool Arena_is_locked;
	// Use this for initialization
	void Start () {
        GM = GameManager.Instance;
        Arenas = GetComponentsInChildren<Animator>();

        Step_of_rotation = 360 / Arenas.Length;

        Arena_is_locked = true;
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

        if (prevState.Buttons.A == ButtonState.Released && prevState.Buttons.A == ButtonState.Released)
        {
            Button_is_releasd_A = true;
        }

        if (prevState.Buttons.A == ButtonState.Pressed && Button_is_releasd_A == true)
        {
            Debug.Log("Test");
            Button_is_releasd_A = false;
            GM.ID_arena = Arena_ID;
            SceneManager.LoadScene(3);
        }

        if (Button_is_releasd == true && Arena_is_locked == true)
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
            Arena_is_locked = false;
            Actual_Rotation++;
            transform.eulerAngles = new Vector3(0.0f, Actual_Rotation, 0.0f);
        }
        if (Actual_Rotation > Rotation_Targeted)
        {
            Arena_is_locked = false;
            Actual_Rotation--;
            transform.eulerAngles = new Vector3(0.0f, Actual_Rotation, 0.0f);
        }

        if(Actual_Rotation >Rotation_Targeted - 1 && Actual_Rotation < Rotation_Targeted +1)
        {
            Arena_is_locked = true;
        }
    }
}
