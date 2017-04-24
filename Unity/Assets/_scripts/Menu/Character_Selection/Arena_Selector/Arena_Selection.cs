using UnityEngine;
using System.Collections;
using XInputDotNetPure;
using UnityEngine.SceneManagement;
public class Arena_Selection : MonoBehaviour {

    GameManager GM;
    [SerializeField]
    SoundsManager SM;
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
    bool Button_is_releasd_B;
    [SerializeField]
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
        Arena_ID = 0;
        GM = GameManager.Instance;
        Arenas = GetComponentsInChildren<Animator>();

        Step_of_rotation = 360 / Arenas.Length;

        Arena_is_locked = true;

        SM.Play_Selector(1);

    }
	
	// Update is called once per frame
	void Update () {
        prevState = state;
        state = GamePad.GetState(test);

        if (prevState.ThumbSticks.Left.X == 0)
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
            switch(Arena_ID)
            {
                case 0:
                    //First Arena
                    SceneManager.LoadScene(3);
                    break;
                case 1:
                    //Second Arena
                    SceneManager.LoadScene(3);
                    break;
                case 2:
                    //Third Arena
                    SceneManager.LoadScene(3);
                    break;
                case 3:
                    //Fourth Arena
                    SceneManager.LoadScene(3);
                    break;
            }
            SM.Play_Selector(1);
        }


        if (prevState.Buttons.B == ButtonState.Released && prevState.Buttons.B == ButtonState.Released)
        {
            Button_is_releasd_B = true;
        }

        if (prevState.Buttons.B == ButtonState.Pressed && Button_is_releasd_B == true)
        {
            Debug.Log("Test");
            Button_is_releasd_B = false;
            GM.ID_arena = Arena_ID;
            SceneManager.LoadScene(5);
            SM.Play_Selector(1);
        }

        if (Button_is_releasd == true && Arena_is_locked == true)
        {
            ID_Perso_Selector();
        }

        if (Move_Camera())
        {
            Rotate_Arena();
            Rotate_One_Arena();
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
        if (prevState.ThumbSticks.Left.X >= 0.5 || Input.GetKeyUp(KeyCode.Q))
        {

          
            Arena_ID++;
            if (Arena_ID > 3)
            {
                Arena_ID = 0;
            }
            //Arenas[Arena_ID].transform.eulerAngles = new Vector3(0.0f, 90.0f, 0.0f);
            Rotation_Targeted -= Step_of_rotation;
            Target_cam = value_of_target_cam;
            Button_is_releasd = false;
            Arena_is_locked = false;
            SM.Play_Selector(0);
            Debug.Log(Arena_ID);

        }

        if (prevState.ThumbSticks.Left.X <= -0.5 || Input.GetKeyUp(KeyCode.D))
        {
            //SM.SourceMusic.clip = SM.Sfx_Menu[0];
            Arena_ID--;
            if (Arena_ID < 0)
            {
                Arena_ID = 3;
            }
           // Arenas[Arena_ID].transform.eulerAngles = new Vector3(0.0f, 90.0f, 0.0f);
            Rotation_Targeted += Step_of_rotation;
            Target_cam = value_of_target_cam;
            Button_is_releasd = false;
            Arena_is_locked = false;
            SM.Play_Selector(0);
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
    void Rotate_One_Arena()
    {
        if (prevState.ThumbSticks.Right.X >= 0.5 || Input.GetKeyUp(KeyCode.RightArrow))
        {
      
            Arenas[Arena_ID].transform.eulerAngles += new Vector3(0.0f, 1.0f, 0.0f);
        }

        if (prevState.ThumbSticks.Right.X <= -0.5 || Input.GetKeyUp(KeyCode.LeftArrow))
        {
            //SM.SourceMusic.clip = SM.Sfx_Menu[0];
            Arenas[Arena_ID].transform.eulerAngles -= new Vector3(0.0f, 1.0f, 0.0f);

        }
    }
}
/*
- Inferno's examen
- four test of hell
- Apocalypse arena 
*/