using UnityEngine;

public class CameraShake : MonoBehaviour
{
    XInputManager xIM;

    Vector3 originalPos = default(Vector3);
    Transform camTransform = default(Transform);

    public float shakeDuration = 0f;
    public float shakeAmount = 0.1f;
    public float decreaseFactor = 1.0f;

    private int targetPlayer = 0;
    private bool vibrationSet = false;

    void Start()
    {
        xIM = XInputManager.Instance;
        camTransform = transform;
    }

    void Update()
    {
        if (CameraManager.Instance.Phase != CameraManager.TypePhase.Cinematique)
        {
            if (shakeDuration > 0)
            {
                if (!vibrationSet)
                    xIM.SetVibration(targetPlayer, shakeDuration, 1.0f);

                camTransform = transform;

                originalPos = transform.position;

                camTransform.localPosition = originalPos + Random.insideUnitSphere * shakeAmount;

                shakeDuration -= Time.deltaTime * decreaseFactor;

                vibrationSet = true;
            }
            else
            {
                shakeDuration = 0f;
                camTransform.localPosition = originalPos;
                vibrationSet = false;
            }
        }
    }
}