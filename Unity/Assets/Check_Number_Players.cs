using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class Check_Number_Players : MonoBehaviour {
    bool playerIndexSet = false;
    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;
    [SerializeField]
    GameObject [] Player;
    [SerializeField]
    Transform Character_Selector;
    // Use this for initialization
    void Start () {
        if (!playerIndexSet || !prevState.IsConnected)
        {
            for (int i = 0; i < 2; ++i)
            {
                PlayerIndex testPlayerIndex = (PlayerIndex)i;
                GamePadState testState = GamePad.GetState(testPlayerIndex);
                if (testState.IsConnected)
                {
                    Debug.Log(string.Format("GamePad found {0}", testPlayerIndex));
                    playerIndex = testPlayerIndex;
                    playerIndexSet = true;
                    Instantiate(Player[i]);
                    Player[i].transform.SetParent(Character_Selector);
                    if (i == 0)
                    {
                        Player[i].transform.position = new Vector3(-2 , 0.0f, -8.0f);
                    }
                    if (i == 1)
                    {
                        Player[i].transform.position = new Vector3(6, 0.0f, -8.0f);
                    }
                }
            }
        }
    }
}
