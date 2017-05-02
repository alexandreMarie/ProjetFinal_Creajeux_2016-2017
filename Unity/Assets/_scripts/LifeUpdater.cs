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

    public void UpdateLifebar(int newLife, int lifeMax)
    {
        if (IMG_Life != null)
        {
            IMG_Life.fillAmount = newLife / (float)lifeMax;
            IMG_Life.color = lifeColor.Evaluate(newLife / (float)lifeMax);
        }
    }
}
