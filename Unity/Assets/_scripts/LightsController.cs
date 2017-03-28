using UnityEngine;

public class LightsController : MonoBehaviour
{
    [SerializeField]
    AnimationCurve lightBehaviour = null;

    [SerializeField]
    float timer;

    [SerializeField]
    float duration = 1.5f;

    Light[] lights;

    bool turnLight = true;

    /// <summary>
    /// Allume ou éteint des lumieres
    /// </summary>
    public bool TurnLight
    {
        get
        { return turnLight; }

        set
        { turnLight = value; }
    }

    void Start()
    {
        lights = GetComponentsInChildren<Light>();
    }

    void Update()
    {
        timer = Mathf.Clamp(timer + (turnLight == true ? 1 : -1) * Time.unscaledDeltaTime / duration, 0f, 1f);
        lights[1].intensity = Mathf.Lerp(0f, lightBehaviour.Evaluate(timer), lightBehaviour.Evaluate(timer));
    }
}