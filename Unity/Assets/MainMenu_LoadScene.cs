﻿using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class MainMenu_LoadScene : MonoBehaviour
{
    bool playerIndexSet = false;
    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;

    [SerializeField]
    GameObject[] AllButton;
    // Use this for initialization
    void Start () {
        AllButton = GetComponentsInChildren<GameObject>();
	}
	
	// Update is called once per frame
	void Update () {
        if (!playerIndexSet || !prevState.IsConnected)
        {
            for (int i = 0; i < 4; ++i)
            {
                PlayerIndex testPlayerIndex = (PlayerIndex)i;
                GamePadState testState = GamePad.GetState(testPlayerIndex);
                if (testState.IsConnected)
                {
                    Debug.Log(string.Format("GamePad found {0}", testPlayerIndex));
                    playerIndex = testPlayerIndex;
                    playerIndexSet = true;
                }
            }
        }

        prevState = state;
        state = GamePad.GetState(playerIndex);

        if (prevState.Buttons.A == ButtonState.Released)
        {
          
        }

    }
}
