using UnityEngine;
using UnityEngine.SceneManagement;
public class DestroyAtEndAnimation : MonoBehaviour
{

    Transition trans;

        [SerializeField]
    private GameObject goToActivate = null;

    [SerializeField]
    private MenuManager.StateMenu stateToGo = MenuManager.StateMenu.None;

    private string scene;
    void Start()
    {
        scene = SceneManager.GetActiveScene().name;
        switch (scene)
        {
            case "GameTitle":
                trans = GetComponent<Transition>();
                break;
            default:
                break;
        }
      
  
    }
    public void DestroyAtEvent()
    {
        switch (scene)
        {
            case "GameTitle":
                trans.Anim_ended(true);
                break;
            case "StudioLogo":
                gameObject.SetActive(false);

                if (stateToGo != MenuManager.StateMenu.None)
                    SceneManager.LoadScene((int)stateToGo);

                goToActivate.SetActive(true);
                break;
        }
    }
}