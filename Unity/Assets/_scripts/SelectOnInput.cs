 using UnityEngine;
using UnityEngine.EventSystems;
using XInputDotNetPure;
using UnityEngine.UI;
public class SelectOnInput : MonoBehaviour
{
    bool Sitck_is_Realeasd;
    [SerializeField]
    PlayerIndex test;

    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;
    [SerializeField]
    Button[] Button_Menu;
    [SerializeField]
    SoundsManager SM;
    [SerializeField]
    EventSystem eventSystem = null;

    [SerializeField]
    GameObject goSelected = null; // the actually selected game object
    [SerializeField]
    int ID_button;
    bool Stick_Realeas;

    bool buttonSelected = false; // to activate the right panel to navigate

    void Start()
    {
        Button_Menu = GetComponentsInChildren<Button>();
        eventSystem.SetSelectedGameObject(goSelected);
    }

    void Update()
    {
       
        prevState = state;
        state = GamePad.GetState(test);

        if(state.ThumbSticks.Left.Y < -0.5 && Stick_Realeas == true)
        {
            ID_button++;
            if (ID_button > Button_Menu.Length - 1)
            {
                ID_button = Button_Menu.Length;
            }
            Stick_Realeas = false;
        }


        if (state.ThumbSticks.Left.Y > 0.5 && Stick_Realeas == true)
        {
            ID_button--;
            if (ID_button < 0)
            {
                ID_button = Button_Menu.Length;
            }
            Stick_Realeas = false;
        }
        
        if(state.ThumbSticks.Left.Y == 0.0f)
        {
            Stick_Realeas = true;
        }

        if(state.Buttons.A == ButtonState.Pressed)
        {
            
        }

        Debug.Log(buttonSelected);
      
        if (Input.GetAxisRaw("Vertical") != 0 && buttonSelected == false)
        {
            eventSystem.SetSelectedGameObject(goSelected);
            buttonSelected = true;
           
        }
    }
    private void OnDisable()
    {
        buttonSelected = false;
    }


}