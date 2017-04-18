using UnityEngine;

public class CameraShake : MonoBehaviour
{
    Vector3 originalPos = default(Vector3);
    Transform camTransform = default(Transform);

    public float shakeDuration = 0f;
    public float shakeAmount = 0.1f;
    public float decreaseFactor = 1.0f;

    void Update()
    {
        if (shakeDuration > 0)
        {
            camTransform = transform;

            originalPos = transform.position;

            camTransform.localPosition = originalPos + Random.insideUnitSphere * shakeAmount;

            shakeDuration -= Time.deltaTime * decreaseFactor;
        }
        else
        {
            shakeDuration = 0f;
            camTransform.localPosition = originalPos;
        }
    }
}