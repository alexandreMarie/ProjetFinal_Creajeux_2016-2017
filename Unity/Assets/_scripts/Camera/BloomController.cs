using UnityEngine;

public class BloomController : MonoBehaviour
{
    [SerializeField]
    SimpleFX sfx;

    [SerializeField]
    AnimationCurve distanceBehaviour = null;

    [SerializeField]
    AnimationCurve contrastBehaviour = null;

    [SerializeField]
    float duration = 1.5f;

    float timer = 1f;

    [SerializeField]
    bool turnBloom = true;

    public bool TurnBloom
    {
        get
        { return turnBloom; }

        set
        { turnBloom = value; }
    }

    void Start()
    {
        sfx = GetComponent<SimpleFX>();
        sfx.contrast = 0;
        sfx.distance = 0;
        sfx.offset = 0;
    }

    void Update()
    {
        timer = Mathf.Clamp(timer + (turnBloom == false ? 1 : -1) * Time.unscaledDeltaTime / duration, 0f, 1f);
        sfx.contrast = (int)contrastBehaviour.Evaluate(timer);
        sfx.distance = (int)distanceBehaviour.Evaluate(timer);
    }
}