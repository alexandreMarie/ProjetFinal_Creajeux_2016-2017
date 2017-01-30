using UnityEngine;
using System.Collections;

public class DestroyAtEndAnimation : MonoBehaviour
{

    [SerializeField]
    private GameObject goToActivate;

    [SerializeField]
    private MenuManager.StateMenu stateToGo;

    public void DestroyAtEvent()
    {
        gameObject.SetActive(false);
        if (stateToGo != MenuManager.StateMenu.None)
        {
            MenuManager.Instance.SetState(stateToGo);
        }
        goToActivate.SetActive(true);
    }
}
