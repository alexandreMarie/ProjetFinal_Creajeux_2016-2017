using UnityEngine;
using System.Collections;

public class LightsController : MonoBehaviour
{

    [SerializeField]
    AnimationCurve lightBehaviour;

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
        {
            return turnLight;
        }

        set
        {
            turnLight = value;
            //timer = 0f;
        }
    }

    [SerializeField]
    float maxIntensity = 1f;

    // Use this for initialization
    void Start()
    {
        lights = GetComponentsInChildren<Light>();
    }

    // Update is called once per frame
    void Update()
    {
        timer = Mathf.Clamp(timer + (turnLight == true ? 1 : -1) * Time.unscaledDeltaTime / duration, 0f, 1f);
        lights[1].intensity = Mathf.Lerp(0f, lightBehaviour.Evaluate(timer), lightBehaviour.Evaluate(timer));
    }
}
