using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using XInputDotNetPure;

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
            SceneManager.LoadScene((int)stateToGo);
            //MenuManager.Instance.SetState(stateToGo);
        }
        goToActivate.SetActive(true);
    }
}
