using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class Rotate_Camera : MonoBehaviour {

    [SerializeField]
    PlayerIndex test;

    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;

    bool Rotation_Targeted;
    bool Button_is_releasd;
    bool Arena_is_locked;

    int Arena_ID;


    Camera _camera;
    [SerializeField]
    float Distance_Cam;//Distance, the camera need to make
    float Rot_Cam;//Rotation of the camera
    [SerializeField]
    float Rot_Trav_Cam;//Rotation the camera need to add
    float Moving_Cam;//actualle position of the camera
    bool Travel_Back;
    bool Rotate;
    bool Travel_front;
	// Use this for initialization
	void Start () {
        _camera = GetComponent<Camera>();
	}
	
	// Update is called once per frame
	void Update () {


        if (prevState.DPad.Right == ButtonState.Released && prevState.DPad.Left == ButtonState.Released)
        {
            Debug.Log("Test");
            Button_is_releasd = true;
        }

        if (Button_is_releasd == true && Arena_is_locked == true)
        {
            ID_Perso_Selector();
        }
        Moving_Camera();
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
            Rot_Cam += Rot_Trav_Cam;
            Button_is_releasd = false;
            Travel_Back = true;
            Moving_Cam = 0;
            Distance_Cam += 90;
            Debug.Log(Arena_ID);

        }

        if (prevState.DPad.Left == ButtonState.Pressed)
        {

            Arena_ID--;
            if (Arena_ID < 1)
            {
                Arena_ID = 4;
            }
            Rot_Cam -= Rot_Trav_Cam;
            Button_is_releasd = false;
            Travel_Back = true;
            Debug.Log(Arena_ID);
            Distance_Cam += 90;
            Moving_Cam = 0;
        }



        if (Button_is_releasd == true && Arena_is_locked == true)
        {
            ID_Perso_Selector();
        }


    }

    void Moving_Camera()
    {
        Debug.Log("Moving_Cam : " + Moving_Cam + " | Distance_Cam : " + Distance_Cam);
        Debug.Log("Travel_back : " + Travel_Back);
        if (Travel_Back == true)
        {
            Debug.Log(Moving_Cam);
            if (Moving_Cam < Distance_Cam)
            {
                _camera.transform.position -= _camera.transform.forward;
                Moving_Cam++;
            }
            if (Moving_Cam == Distance_Cam)
            {
                Travel_Back = false;
                Rotate = true;
            }
        }

        if(Rotate == false)
        {
            if(Rot_Cam <= Rot_Trav_Cam)
            {
                transform.eulerAngles += new Vector3(0.0f, 1.0f, 0.0f);
            }
            if(Rot_Cam == Rot_Trav_Cam)
            {
                Rotate = false;
                Travel_front = true;
                Moving_Cam = 0;
            }
        }

        if(Rotate == true)
        {
            if(Moving_Cam < Distance_Cam)
            {
                _camera.transform.position += _camera.transform.forward;
                Moving_Cam++;
            }

            if (Moving_Cam == Distance_Cam)
            {
                Travel_front = false;
            }
        }

    }
}
