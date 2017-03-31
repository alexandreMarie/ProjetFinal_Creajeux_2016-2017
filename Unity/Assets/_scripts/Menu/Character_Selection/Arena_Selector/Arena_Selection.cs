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
    [SerializeField]
    Camera _cam;
    float Target_cam;//Target the camera need to go

    float Actual_pos_cam;//Actualle position of the camera
    [SerializeField]
    int Speed_of_cam;//Rotation of the camera
    [SerializeField]
    float value_of_target_cam;//Value of the camera target


    bool Button_is_releasd;
    bool Button_is_releasd_A;
    int Arena_ID;//Identifiant of the arnea
    [SerializeField]
    Animator[] Arenas;//Liste of the arena
    float Actual_Rotation = 0;
    float Rotation_Targeted = 0;
    float Step_of_rotation;// = 360 / Number of arena
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

        if (Move_Camera())
        {
            Rotate_Arena();
        }
    }

    public int Get_ID()
    {
        return Arena_ID;
    }


    bool Move_Camera()
    {
        if(Actual_pos_cam < Target_cam)
        {
            _cam.transform.localPosition -= _cam.transform.forward * (Time.deltaTime * Speed_of_cam);
            Actual_pos_cam++;
        }

        if (Actual_pos_cam > Target_cam)
        {
            _cam.transform.localPosition += _cam.transform.forward * (Time.deltaTime* Speed_of_cam);
            Actual_pos_cam--;
        }

        if (Actual_pos_cam == Target_cam)
        {
            return true;
        }
        else return false;
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
            Target_cam = value_of_target_cam;
            Button_is_releasd = false;
            Arena_is_locked = false;
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
            Target_cam = value_of_target_cam;
            Button_is_releasd = false;
            Arena_is_locked = false;
            Debug.Log(Arena_ID);

        }
    }
    void Rotate_Arena()
    {
        if(Actual_Rotation < Rotation_Targeted)
        {
            Arena_is_locked = false;
            Actual_Rotation += 2;
            transform.eulerAngles = new Vector3(0.0f, Actual_Rotation, 0.0f);
        }
        if (Actual_Rotation > Rotation_Targeted)
        {
            Arena_is_locked = false;
            Actual_Rotation-= 2;
            transform.eulerAngles = new Vector3(0.0f, Actual_Rotation, 0.0f);
        }

        if(Actual_Rotation >Rotation_Targeted - 1 && Actual_Rotation < Rotation_Targeted +1)
        {
            Arena_is_locked = true;
        }
        if(Arena_is_locked == true)
        {
            Target_cam = 0;
        }
    }
}
