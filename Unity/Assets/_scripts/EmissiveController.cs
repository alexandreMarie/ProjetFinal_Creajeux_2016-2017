using UnityEngine;

public class EmissiveController : MonoBehaviour
{

    [SerializeField]
    Material mat;

    [SerializeField]
    bool turnEmissive = false;

    public bool TurnEmissive
    {
        get
        { return turnEmissive; }

        set
        { turnEmissive = value; }
    }

    [SerializeField]
    float timer = 0f;

    [SerializeField]
    float duration = 0f;

    [SerializeField]
    AnimationCurve behaviour = null;

    Color color = new Color(1, 1, 1, 1);

    void Start()
    {
        MeshRenderer mr = GetComponentInChildren<MeshRenderer>();
        mat = mr.material;
    }

    void Update()
    {
        timer = Mathf.Clamp(timer + (turnEmissive == true ? 1 : -1) * Time.unscaledDeltaTime / duration, 0f, 1f);

        color.r = Mathf.Lerp(0f, 1f, behaviour.Evaluate(timer));
        color.g = color.r;
        color.b = color.r;

        mat.SetFloat("_Range", color.r);
    }
}