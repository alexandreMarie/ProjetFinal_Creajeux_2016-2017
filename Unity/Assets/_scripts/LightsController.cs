using UnityEngine;

public class LightsController : MonoBehaviour
{
    [SerializeField]
    AnimationCurve lightToDark = null;

    [SerializeField]
    AnimationCurve darkToLight = null;

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

        if (timer > 0.99)
            lights[1].intensity = lightToDark.Evaluate(timer);
        else
            lights[1].intensity = darkToLight.Evaluate(timer);
    }
}