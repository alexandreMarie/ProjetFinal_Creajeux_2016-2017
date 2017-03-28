using UnityEngine;
using UnityEngine.SceneManagement;

public class DestroyAtEndAnimation : MonoBehaviour
{
    [SerializeField]
    private GameObject goToActivate = null;

    [SerializeField]
    private MenuManager.StateMenu stateToGo = MenuManager.StateMenu.None;

    public void DestroyAtEvent()
    {
        gameObject.SetActive(false);

        if (stateToGo != MenuManager.StateMenu.None)
            SceneManager.LoadScene((int)stateToGo);

        goToActivate.SetActive(true);
    }
}