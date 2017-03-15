using UnityEngine;
using System.Collections;

public class BloomController : MonoBehaviour {

    [SerializeField]
    SimpleFX sfx;

    [SerializeField]
    AnimationCurve distanceBehaviour;

    [SerializeField]
    [Range(0f, 50f)]
    float maxDistance = 1f;

    [SerializeField]
    AnimationCurve contrastBehaviour;

    [SerializeField]
    [Range(0f, 50f)]
    float maxContrast = 1f;

    [SerializeField]
    float duration = 1.5f;

    float timer = 1f;

    [SerializeField]
    bool turnBloom = true;

    public bool TurnBloom
    {
        get
        {
            return turnBloom;
        }

        set
        {
            turnBloom = value;
        }
    }

    // Use this for initialization
    void Start () {
        sfx = GetComponent<SimpleFX>();
        sfx.contrast = 0;
        sfx.distance = 0;
        sfx.offset = 0;
    }

    // Update is called once per frame
    void Update () {
        timer = Mathf.Clamp(timer + (turnBloom == true ? 1 : -1) * Time.unscaledDeltaTime / duration, 0f, 1f);
        sfx.contrast = (int)contrastBehaviour.Evaluate(timer);
        sfx.distance = (int)distanceBehaviour.Evaluate(timer);
    }
}
