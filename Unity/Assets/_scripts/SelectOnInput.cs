 using UnityEngine;
using UnityEngine.EventSystems;
using XInputDotNetPure;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class SelectOnInput : MonoBehaviour
{
    XInputManager XIM;
 

    [SerializeField]
    Text _text;

    [SerializeField]
    Slider[] sliders;

    [SerializeField]
    Button[] Button_Menu;

    [SerializeField]
    SoundsManager SM;

    [SerializeField]
    EventSystem eventSystem = null;

    [SerializeField]
    MainMenuButton main_menu_button;

    [SerializeField]
    GameObject goSelected = null; // the actually selected game object

    [SerializeField]
    int ID_button;

    bool Stick_Realeas;
    int Value_Sliders;
    int Value_Sliders_Max;

    bool buttonSelected = false; // to activate the right panel to navigate
    bool A_pressed = true;


    void Start()
    {
        Button_Menu = GetComponentsInChildren<Button>();
        sliders = GetComponentsInChildren<Slider>();
        //eventSystem.SetSelectedGameObject(goSelected);
        if (XIM == null)
        {
            XIM = XInputManager.Instance;
        }
    }

    void Update()
    {

        //prevState = state;
        //state = GamePad.GetState(test);

      

        
                    switch (SceneManager.GetActiveScene().name)
                {
                    case ("MainMenu"):
            
                    Mainmenu();
                    break;

                    case ("LilithFightTest"):
                        LFT();
                    break;
                    case ("Menu_Option"):
                        Option_Menu();
                        break;
                    }
        if (A_pressed == true)
        {
            if (XIM.CurrState[0].Buttons.A == ButtonState.Pressed)
            {
                A_pressed = true;
            }
            else
            {
                A_pressed = false;
            }
        }
        //Debug.Log(buttonSelected);

        //if (Input.GetAxisRaw("Vertical") != 0 && buttonSelected == false)
        //{
        //    eventSystem.SetSelectedGameObject(goSelected);
        //    buttonSelected = true;

        //}
    }


    private void Mainmenu()
    {
        if (A_pressed == false)
        {
            if (XIM.PrevState[0].ThumbSticks.Left.Y < -0.8 && Stick_Realeas == true)
            {
                ID_button++;
                if (ID_button > Button_Menu.Length - 1)
                {
                    ID_button = 0;
                }
                Stick_Realeas = false;
            }


            if (XIM.PrevState[0].ThumbSticks.Left.Y > 0.8 && Stick_Realeas == true)
            {
                ID_button--;
                if (ID_button < 0)
                {
                    ID_button = 4;
                }
                Stick_Realeas = false;
            }

            if (XIM.PrevState[0].ThumbSticks.Left.Y == 0.0f)
            {
                Stick_Realeas = true;
            }

            for (int i = 0; i < Button_Menu.Length; i++)
            {
                if (i == ID_button)
                {
                    _text = Button_Menu[i].GetComponentInChildren<Text>();
                    _text.color = Color.red;
                }
                else
                {
                    _text = Button_Menu[i].GetComponentInChildren<Text>();
                    _text.color = Color.white;
                }

            }

            if (XIM.PrevState[0].Buttons.A == ButtonState.Pressed)
            {
                switch (ID_button)
                {
                    case (0):
                        main_menu_button.Load_Scene(5);

                        main_menu_button.Set_LoadMode(1);
                        break;

                    case (1):
                        main_menu_button.Load_Scene(3);

                        main_menu_button.Set_LoadMode(2);
                        break;

                    case (2):
                        main_menu_button.Load_Scene(5);

                        main_menu_button.Set_LoadMode(3);
                        break;

                    case (3):
                        //main_menu_button.Load_Scene(4);

                        break;
                    case (4):
                        Application.Quit();

                        break;
                    case (5):

                        break;
                }


            }
        }
     

    }
    private void LFT()
    {
        if (XIM.PrevState[0].ThumbSticks.Left.X < -0.8 && Stick_Realeas == true)
        {
            ID_button++;
            if (ID_button > Button_Menu.Length - 1)
            {
                ID_button = 0;
            }
            Stick_Realeas = false;
        }


        if (XIM.PrevState[0].ThumbSticks.Left.X > 0.8 && Stick_Realeas == true)
        {
            ID_button--;
            if (ID_button < 0)
            {
                ID_button = Button_Menu.Length-1;
            }
            Stick_Realeas = false;
        }

        if (XIM.PrevState[0].ThumbSticks.Left.X == 0.0f)
        {
            Stick_Realeas = true;
        }



        for (int i = 0; i < Button_Menu.Length; i++)
        {
            if (i == ID_button)
            {
                _text = Button_Menu[i].GetComponentInChildren<Text>();
                _text.color = Color.red;
            }
            else
            {
                _text = Button_Menu[i].GetComponentInChildren<Text>();
                _text.color = Color.white;
            }

        }



        if (XIM.PrevState[0].Buttons.A == ButtonState.Pressed)
        {
            switch (ID_button)
            {
                case (0):
                    GameOver GO;
                    GO = GetComponentInParent<GameOver>();
                    GO.RestartCurrentScene();
                    break;

                case (1):
                    SceneManager.LoadScene(2);
                    break;
            }


        }

    }
   private void Option_Menu()
    {
        if (XIM.PrevState[0].ThumbSticks.Left.Y < -0.8 && Stick_Realeas == true)
        {
            ID_button++;
            if (ID_button > sliders.Length)
            {
                ID_button = 0;
            }
            Stick_Realeas = false;
        }


        if (XIM.PrevState[0].ThumbSticks.Left.Y > 0.8 && Stick_Realeas == true)
        {
            ID_button--;
            if (ID_button < 0)
            {
                ID_button = sliders.Length-1;
            }
            Stick_Realeas = false;
        }

        if (XIM.PrevState[0].ThumbSticks.Left.Y == 0.0f)
        {
            Stick_Realeas = true;
        }
        if (ID_button <= 3)
        {
            if (XIM.PrevState[0].ThumbSticks.Left.X < -0.8 && Stick_Realeas == true)
            {

                if (ID_button < Value_Sliders_Max)
                {
                    sliders[ID_button].value += 1;
                }
                Stick_Realeas = false;
            }


            if (XIM.PrevState[0].ThumbSticks.Left.X > 0.8 && Stick_Realeas == true)
            {

                if (ID_button > 0)
                {
                    sliders[ID_button].value -= 1;
                }
                Stick_Realeas = false;
            }

            if (XIM.PrevState[0].ThumbSticks.Left.X == 0.0f)
            {
                Stick_Realeas = true;
            }
        }
        if(ID_button > 3)
        {
            if (XIM.PrevState[0].ThumbSticks.Left.X < -0.8 && Stick_Realeas == true)
            {
                ID_button++;
            }

            if (XIM.PrevState[0].ThumbSticks.Left.X > 0.8 && Stick_Realeas == true)
            {
                ID_button--;
            }
        }
    }


    private void OnDisable()
    {
        buttonSelected = false;
    }


}