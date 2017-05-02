using UnityEngine;
using System.Collections;
public class ShaderController : MonoBehaviour
{

    private Material mat;

    [SerializeField]
    AnimationCurve behaviour;

    float timer = 0f;

    [SerializeField]
    [Range(0f, 100f)]
    private float speed = 5f;

    bool turnEmissiveOn = false;
    public bool TurnEmissiveOn
    {
        get
        {
            return turnEmissiveOn;
        }

        set
        {
            turnEmissiveOn = value;
            StartCoroutine(TurnEmissive(turnEmissiveOn));
        }
    }

    private float emissiveDuration = 1f;
    // Use this for initialization
    void Start ()
    {
        mat = GetComponent<MeshRenderer>().material;
	}
	
	// Update is called once per frame
	void Update () {
        timer += Time.unscaledDeltaTime * speed;
        mat.SetFloat("_RimStrength", behaviour.Evaluate(Mathf.Abs(Mathf.Cos(timer))));

        if (Input.GetKeyDown(KeyCode.Space))
        {
            TurnEmissiveOn = !TurnEmissiveOn;
        }
	}

    private IEnumerator TurnEmissive(bool turnOn)
    {
        float timer = turnOn == true ? 0f : 1f;
        while(turnOn == true ? timer < emissiveDuration : timer > 0f)
        {
            timer = turnOn == true ? timer + Time.unscaledDeltaTime : timer - Time.unscaledDeltaTime;
            mat.SetFloat("_RangeTwoTexture", timer);
            yield return new WaitForEndOfFrame();
        }
        yield return null;
    }
}
