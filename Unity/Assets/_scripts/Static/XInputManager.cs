using UnityEngine;
using XInputDotNetPure;
using System.Collections;
using UnityEngine.Internal;

public class XInputManager : MonoBehaviour
{

    const byte ControllersMax = 4;

    public enum XButtons
    {
        A,
        B,
        X,
        Y,
        LeftBumper,
        RightBumper,
        LeftStick,
        RightStick,
        Start,
        Back,
        Guide,
        Left,
        Right,
        Up,
        Down
    }

    public enum XSticks
    {
        LeftStick,
        RightStick,
        LeftTrigger,
        RightTrigger
    }

    public enum XAxis
    {
        X,
        Y
    }

    #region Singleton
    private static XInputManager instance = null;
    public static XInputManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = new GameObject("XInputManager").AddComponent<XInputManager>();
                instance.CheckControllers();
                DontDestroyOnLoad(instance);
            }
            return instance;
        }
    }
    #endregion

    // picture of all the inputs at the previous update and current update
    private GamePadState[] prevState = new GamePadState[ControllersMax];
    private GamePadState[] currState = new GamePadState[ControllersMax];

    public GamePadState [] CurrState
    {
        get
        {
            return currState;
        }
    }

    public GamePadState[] PrevState
    {
        get
        {
            return prevState;
        }
    }

    // Indicate which one of the four controllers is connected
    bool[] controllersConnected = new bool[ControllersMax] { false, false, false, false };
    public bool[] ControllersConnected
    {
        get
        {
            return controllersConnected;
        }
    }

    private int numControllers = 0;
    /// <summary>
    /// Indicate the number of controllers connected
    /// </summary>
    public int NumControllers 
    {
        get
        {
            CheckControllers();
            return numControllers;
        }
    }

    public delegate void ControllerUpdate(XInputManager manager);

    public event ControllerUpdate ControllerConnected;

    // Use this for initialization
    void Start()
    {
        CheckControllers();
    }

    // Update is called once per frame
    void Update()
    {
        CheckControllers();
        UpdateControllersState();
    }

    /// <summary>
    /// Verify if a controller is connected
    /// </summary>
    /// <returns>Returns true if at least one controller is connected.</returns>
    private bool CheckControllers()
    {
        bool result = false;
        int oldNumControllers = numControllers;
        numControllers = 0;
        // Test of all connected controllers
        for (int i = 0; i < ControllersMax; i++)
        {
            PlayerIndex testPi = (PlayerIndex)i;
            GamePadState testGPS = GamePad.GetState(testPi);
            if (testGPS.IsConnected)
            {
                numControllers++;
                ControllersConnected[i] = true;
                result = true;
            }
            else
            {
                ControllersConnected[i] = false;
            }
        }

        if (numControllers != oldNumControllers)
        {
            // A controller has been connected or disconnected
            if (ControllerConnected != null)
            {
                ControllerConnected(this);
            }
        }
        return result;
    }

    /// <summary>
    /// Update the states of all connected controllers
    /// </summary>
    /// <returns></returns>
    private bool UpdateControllersState()
    {
        for (int i = 0; i < ControllersMax; i++)
        {
            if (ControllersConnected[i] == true)
            {
                prevState[i] = currState[i];
                currState[i] = GamePad.GetState((PlayerIndex)i);
            }
        }
        return true;
    }

    /// <summary>
    /// Return the first press of a button
    /// </summary>
    /// <param name="numPlayer">Controller to check</param>
    /// <param name="button">Button to check</param>
    /// <returns></returns>
    public bool GetButtonDown(int numPlayer, XButtons button)
    {
        switch (button)
        {
            case XButtons.A:
                if (prevState[numPlayer].Buttons.A == ButtonState.Released && currState[numPlayer].Buttons.A == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.B:
                if (prevState[numPlayer].Buttons.B == ButtonState.Released && currState[numPlayer].Buttons.B == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.X:
                if (prevState[numPlayer].Buttons.X == ButtonState.Released && currState[numPlayer].Buttons.X == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Y:
                if (prevState[numPlayer].Buttons.Y == ButtonState.Released && currState[numPlayer].Buttons.Y == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.LeftBumper:
                if (prevState[numPlayer].Buttons.LeftShoulder == ButtonState.Released && currState[numPlayer].Buttons.LeftShoulder == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.RightBumper:
                if (prevState[numPlayer].Buttons.RightShoulder == ButtonState.Released && currState[numPlayer].Buttons.RightShoulder == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.LeftStick:
                if (prevState[numPlayer].Buttons.LeftStick == ButtonState.Released && currState[numPlayer].Buttons.LeftStick == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.RightStick:
                if (prevState[numPlayer].Buttons.RightStick == ButtonState.Released && currState[numPlayer].Buttons.RightStick == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Start:
                if (prevState[numPlayer].Buttons.Start == ButtonState.Released && currState[numPlayer].Buttons.A == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Back:
                if (prevState[numPlayer].Buttons.Back == ButtonState.Released && currState[numPlayer].Buttons.Back == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Guide:
                if (prevState[numPlayer].Buttons.Guide == ButtonState.Released && currState[numPlayer].Buttons.Guide == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Left:
                if (prevState[numPlayer].DPad.Left == ButtonState.Released && currState[numPlayer].DPad.Left == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Right:
                if (prevState[numPlayer].DPad.Right == ButtonState.Released && currState[numPlayer].DPad.Right == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Up:
                if (prevState[numPlayer].DPad.Up == ButtonState.Released && currState[numPlayer].DPad.Up == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Down:
                if (prevState[numPlayer].DPad.Down == ButtonState.Released && currState[numPlayer].DPad.Down == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            default:
                return false;
        }
        return false;
    }

    /// <summary>
    /// Return the first release of a button
    /// </summary>
    /// <param name="numPlayer">Controller to check</param>
    /// <param name="button">Button to check</param>
    /// <returns></returns>
    public bool GetButtonUp(int numPlayer, XButtons button)
    {
        switch (button)
        {
            case XButtons.A:
                if (prevState[numPlayer].Buttons.A == ButtonState.Pressed && currState[numPlayer].Buttons.A == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.B:
                if (prevState[numPlayer].Buttons.B == ButtonState.Pressed && currState[numPlayer].Buttons.B == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.X:
                if (prevState[numPlayer].Buttons.X == ButtonState.Pressed && currState[numPlayer].Buttons.X == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.Y:
                if (prevState[numPlayer].Buttons.Y == ButtonState.Pressed && currState[numPlayer].Buttons.Y == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.LeftBumper:
                if (prevState[numPlayer].Buttons.LeftShoulder == ButtonState.Pressed && currState[numPlayer].Buttons.LeftShoulder == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.RightBumper:
                if (prevState[numPlayer].Buttons.RightShoulder == ButtonState.Pressed && currState[numPlayer].Buttons.RightShoulder == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.LeftStick:
                if (prevState[numPlayer].Buttons.LeftStick == ButtonState.Pressed && currState[numPlayer].Buttons.LeftStick == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.RightStick:
                if (prevState[numPlayer].Buttons.RightStick == ButtonState.Pressed && currState[numPlayer].Buttons.RightStick == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.Start:
                if (prevState[numPlayer].Buttons.Start == ButtonState.Pressed && currState[numPlayer].Buttons.A == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.Back:
                if (prevState[numPlayer].Buttons.Back == ButtonState.Pressed && currState[numPlayer].Buttons.Back == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.Guide:
                if (prevState[numPlayer].Buttons.Guide == ButtonState.Pressed && currState[numPlayer].Buttons.Guide == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.Left:
                if (prevState[numPlayer].DPad.Left == ButtonState.Pressed && currState[numPlayer].DPad.Left == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.Right:
                if (prevState[numPlayer].DPad.Right == ButtonState.Pressed && currState[numPlayer].DPad.Right == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.Up:
                if (prevState[numPlayer].DPad.Up == ButtonState.Pressed && currState[numPlayer].DPad.Up == ButtonState.Released)
                {
                    return true;
                }
                break;
            case XButtons.Down:
                if (prevState[numPlayer].DPad.Down == ButtonState.Pressed && currState[numPlayer].DPad.Down == ButtonState.Released)
                {
                    return true;
                }
                break;
            default:
                return false;
        }
        return false;
    }

    /// <summary>
    /// Return the state of a button
    /// </summary>
    /// <param name="numPlayer">Controller to check</param>
    /// <param name="button">Button to check</param>
    /// <returns></returns>
    public bool GetButton(int numPlayer, XButtons button)
    {
        switch (button)
        {
            case XButtons.A:
                if (currState[numPlayer].Buttons.A == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.B:
                if (currState[numPlayer].Buttons.B == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.X:
                if (currState[numPlayer].Buttons.X == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Y:
                if (currState[numPlayer].Buttons.Y == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.LeftBumper:
                if (currState[numPlayer].Buttons.LeftShoulder == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.RightBumper:
                if (currState[numPlayer].Buttons.RightShoulder == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.LeftStick:
                if (currState[numPlayer].Buttons.LeftStick == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.RightStick:
                if (currState[numPlayer].Buttons.RightStick == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Start:
                if (currState[numPlayer].Buttons.A == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Back:
                if (currState[numPlayer].Buttons.Back == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Guide:
                if (currState[numPlayer].Buttons.Guide == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Left:
                if (currState[numPlayer].DPad.Left == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Right:
                if (currState[numPlayer].DPad.Right == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Up:
                if (currState[numPlayer].DPad.Up == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            case XButtons.Down:
                if (currState[numPlayer].DPad.Down == ButtonState.Pressed)
                {
                    return true;
                }
                break;
            default:
                return false;
        }
        return false;
    }

    /// <summary>
    /// Return a value corresponding to the axis's position of the stick
    /// </summary>
    /// <param name="numPlayer">Controller to check</param>
    /// <param name="stick">Stick to check (if trigger</param>
    /// <param name="axis">Axis to return</param>
    /// <returns>return a value from -1 to 1, 0 if center</returns>
    public float GetStick(int numPlayer, XSticks stick, XAxis axis = XAxis.X)
    {
        switch (stick)
        {
            case XSticks.LeftStick:
                return (axis == XAxis.Y ? currState[numPlayer].ThumbSticks.Left.Y : currState[numPlayer].ThumbSticks.Left.X);
            case XSticks.RightStick:
                return (axis == XAxis.Y ? currState[numPlayer].ThumbSticks.Right.Y : currState[numPlayer].ThumbSticks.Right.X);
            case XSticks.LeftTrigger:
                return currState[numPlayer].Triggers.Left;
            case XSticks.RightTrigger:
                return currState[numPlayer].Triggers.Right;
            default:
                return 0f;
        }
    }

    /// <summary>
    /// Return the value of sticks in a Vector2
    /// </summary>
    /// <param name="numPlayer">Controller to check</param>
    /// <param name="stick">Stick to check</param>
    /// <param name="result">Vector which will be modified</param>
    public float GetStick(int numPlayer, XSticks stick, ref Vector2 result)
    {
        switch (stick)
        {
            case XSticks.LeftStick:
                result.x = currState[numPlayer].ThumbSticks.Left.X;
                result.y = currState[numPlayer].ThumbSticks.Left.Y;
                break;
            case XSticks.RightStick:
                result.x = currState[numPlayer].ThumbSticks.Right.X;
                result.y = currState[numPlayer].ThumbSticks.Right.Y;
                break;
            case XSticks.LeftTrigger:
                result.x = currState[numPlayer].Triggers.Left;
                break;
            case XSticks.RightTrigger:
                result.y = currState[numPlayer].Triggers.Right;
                break;
            default:
                break;
        }

        return 0f;
    }

    /// <summary>
    /// Allow to set the controller vibrating
    /// </summary>
    /// <param name="numPlayer">Controller to set</param>
    /// <param name="duration">Duration of vibrating</param>
    /// <param name="strength">Motor's Strength</param>
    /// <returns></returns>
    public bool SetVibration(int numPlayer, float duration, float strength)
    {
#if !UNITY_EDITOR
        StartCoroutine(Vibrate((PlayerIndex)numPlayer, duration, strength));
#endif
        return true;
    }

    private IEnumerator Vibrate(PlayerIndex index, float duration, float strength)
    {
        GamePad.SetVibration(index, strength, strength);
        yield return new WaitForSeconds(duration);
        GamePad.SetVibration(index, 0f, 0f);
    }

}

// Milestone (24 25 26 avril ALPHA) (9 10 Mai BETA) (22 23 24 Mai GOLD) (29 30 31 MASTER GOLD)
