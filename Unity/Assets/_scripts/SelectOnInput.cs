using UnityEngine;
using UnityEngine.EventSystems;

public class SelectOnInput : MonoBehaviour
{
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