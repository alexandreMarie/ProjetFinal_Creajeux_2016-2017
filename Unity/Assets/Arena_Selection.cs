using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class Arena_Selection : MonoBehaviour {
    //En route pour aller niquer des méres
    // Use this for initialization
    [SerializeField]
    GameObject[] Arena;
    [SerializeField]
    float Speed;
    [SerializeField]
    PlayerIndex test;

    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;
    [SerializeField]
    int ID_arena;
    float Anguar_Set;
    //float Angular_Set = 360;
    [SerializeField]
    float Actual_Angle;
    bool Button_is_releasd;
    bool Button_is_releasd_A;
    [SerializeField]
    bool Arena_is_locked;

    void Start () {
        Anguar_Set = 0;
       // Angular_Set = Angular_Set / Arena.Length;
	}
	
	// Update is called once per frame
	void Update () {
        prevState = state;
        state = GamePad.GetState(PlayerIndex.One);
        if (prevState.DPad.Right == ButtonState.Released && prevState.DPad.Left == ButtonState.Released)
        {
            Debug.Log("Test");
            Button_is_releasd = true;
        }

        if (prevState.Buttons.A == ButtonState.Released && prevState.Buttons.A == ButtonState.Released)
        {
            Button_is_releasd_A = true;
        }

        if(Button_is_releasd_A == true)
        {
            if(prevState.Buttons.A == ButtonState.Pressed)
            {
                GameManager.Instance.Set_ID_Arena(ID_arena);
            }    
        }


        if (Button_is_releasd == true)
        {
            ID_Perso_Selector();
        }
        Perso_Selector();
    }




    void ID_Perso_Selector()
    {
        if (prevState.DPad.Right == ButtonState.Pressed && Arena_is_locked == true)
        {

            ID_arena++;
            if (ID_arena > 4)
            {
                ID_arena = 1;
              
            }

            Anguar_Set += 90;
            Button_is_releasd = false;
            Arena_is_locked = false;
            Debug.Log(ID_arena);

        }

        if (prevState.DPad.Left == ButtonState.Pressed && Arena_is_locked == true)
        {

            ID_arena--;
            if (ID_arena < 1)
            {
                ID_arena = 4;
               
            }

            Anguar_Set -= 90;
            Button_is_releasd = false;
            Arena_is_locked = false;
            Debug.Log(ID_arena);

        }
    }

    public int Get_ID_Arena()
    {
        return ID_arena;
    }

    void Perso_Selector()
    {
        //Debug.Log(playerIndex);

      

          
                if(Actual_Angle < (Anguar_Set))
                {
                    Actual_Angle += Time.deltaTime * Speed;
                    transform.eulerAngles = new Vector3(0.0f, Actual_Angle, 0.0f);
                }

                if (Actual_Angle > (Anguar_Set))
                {
                    Actual_Angle -= Time.deltaTime * Speed;
                    transform.eulerAngles = new Vector3(0.0f, Actual_Angle, 0.0f);
              }

        Debug.Log((int)Actual_Angle + " : " + (int)Anguar_Set);
                if((Actual_Angle <= Anguar_Set +1 && Actual_Angle >= Anguar_Set -1))
                { 
                    Arena_is_locked = true;
                }
   

            //Code a conserver pour un autre projet
            //for(int i = 0; i < Arena.lenght;i++)
            //if (i == ID_arena)
            //{
            //    Debug.Log(i * Angular_Set);
            //    if (Actual_Angle < i * Angular_Set)
            //    {
            //        Actual_Angle += Time.deltaTime * Speed;
            //        transform.eulerAngles = new Vector3(0.0f, Actual_Angle, 0.0f);
            //    }
            //     if (Actual_Angle > i * Angular_Set)
            //    {
            //        Actual_Angle -= Time.deltaTime * Speed;
            //        transform.eulerAngles = new Vector3(0.0f, Actual_Angle, 0.0f);
            //    }
            //}
        }

        //for (int i = 0; i < Arena.Length; i++)
        //{
        //    if (i == ID_arena - 1)
        //    {
        //        Arena[i].transform.position = new Vector3(Arena[i].transform.position.x, 0.0f, Arena[i].transform.position.z);
        //    }
        //    else
        //        Arena[i].transform.position = new Vector3(Arena[i].transform.position.x, 300.0f, Arena[i].transform.position.z);
        //}

}
