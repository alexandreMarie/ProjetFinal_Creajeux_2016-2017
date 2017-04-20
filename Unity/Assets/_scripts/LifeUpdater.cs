using UnityEngine;
using UnityEngine.UI;
public class LifeUpdater : MonoBehaviour
{

    Image IMG_Life = null;

    [SerializeField]
    private Gradient lifeColor;

    // Use this for initialization
    void Start()
    {
        IMG_Life = GetComponent<Image>();
    }

    public void UpdateLifebar(int newLife)
    {
        if (IMG_Life != null)
        {
            IMG_Life.fillAmount = newLife / 100f;
            IMG_Life.color = lifeColor.Evaluate(newLife / 100f);
        }
    }
}
