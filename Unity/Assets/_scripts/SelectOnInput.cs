using UnityEngine;
using UnityEngine.EventSystems;
using XInputDotNetPure;

public class SelectOnInput : MonoBehaviour
{
    bool Sitck_is_Realeasd;
    [SerializeField]
    PlayerIndex test;

    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;

    [SerializeField]
    SoundsManager SM;
    [SerializeField]
    EventSystem eventSystem = null;

    [SerializeField]
    GameObject goSelected = null; // the actually selected game object

    bool buttonSelected = false; // to activate the right panel to navigate

    void Start()
    {
        eventSystem.SetSelectedGameObject(goSelected);
    }

    void Update()
    {

        prevState = state;
        state = GamePad.GetState(test);

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