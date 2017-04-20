using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using XInputDotNetPure;
public class Transition : MonoBehaviour {

    bool Animation_ended;
    bool playerIndexSet = false;
    [SerializeField]
    PlayerIndex test;

    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;

    Canvas Canevas_State;


    [SerializeField]
    private GameObject goToActivate = null;

    [SerializeField]
    private MenuManager.StateMenu stateToGo = MenuManager.StateMenu.None;

    // Use this for initialization
	
        void Start()
    {
        Animation_ended = false;
    }

   public void Anim_ended(bool _Anim_ended)
    {
        Animation_ended = _Anim_ended;
    }

	// Update is called once per frame
	void Update () {

        if (!playerIndexSet || !prevState.IsConnected)
        {

            PlayerIndex testPlayerIndex = test;
            GamePadState testState = GamePad.GetState(testPlayerIndex);
            if (testState.IsConnected)
            {
                Debug.Log(string.Format("GamePad found {0}", testPlayerIndex));
                playerIndex = testPlayerIndex;
                playerIndexSet = true;
            }

        }

        prevState = state;
        state = GamePad.GetState(test);

        if(state.Buttons.Start == ButtonState.Pressed && Animation_ended == true)
        {
            gameObject.SetActive(false);

            if (stateToGo != MenuManager.StateMenu.None)
                SceneManager.LoadScene((int)stateToGo);

            goToActivate.SetActive(true);
        }

        if (state.Buttons.Y ==  ButtonState.Pressed && Animation_ended == true)
        {
            Application.OpenURL("http://www.creajeux.fr/");
        }

    }
}
