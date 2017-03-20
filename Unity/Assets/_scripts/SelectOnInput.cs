using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using XInputDotNetPure;
public class SelectOnInput : MonoBehaviour {

    [SerializeField]
    EventSystem eventSystem;

    [SerializeField]
    GameObject goSelected; // the actually selected game object

    bool buttonSelected = false; // to "activate the right panel to navigate

	// Use this for initialization
	void Start () {
            eventSystem.SetSelectedGameObject(goSelected);
    }

    // Update is called once per frame
    void Update () {
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
