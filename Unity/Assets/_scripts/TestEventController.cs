using UnityEngine;

public class TestEventController : MonoBehaviour {

    XInputManager XIMInstance;

	// Use this for initialization
	void Start () {
        XIMInstance = XInputManager.Instance;
        XIMInstance.ControllerConnected += EventRaised;
    }

    private void EventRaised(XInputManager manager)
    {
        Debug.Log("Nombre de controleurs : " + manager.NumControllers);
    }

    //private void EventRaised(object sender)
    //{
    //    Debug.Log("Controller Connected : " + ((XInputManager)sender).NumControllers);
    //}

}
