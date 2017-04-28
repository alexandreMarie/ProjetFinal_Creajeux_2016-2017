using UnityEngine;
using Random = UnityEngine.Random;

public class PowerUpsManager : MonoBehaviour
{

    [SerializeField]
    private GameObject[] powerUps = new GameObject[3];

    public enum SelectedPowerUp
    {
        Life = 0,
        LvlUp,
        Special
    }

    SelectedPowerUp selectedPowerUp;

    float timer = 0f;

    [SerializeField]
    [Range(0.1f, 100f)]
    float duration = 10f;

    Vector3 position = Vector3.zero;

    // Use this for initialization
    void Start()
    {
        selectedPowerUp = (SelectedPowerUp)Mathf.RoundToInt(Random.Range(0, 2));
        //powerUps = GameObject.FindGameObjectsWithTag("PowerUp");
        powerUps[0] = GetComponentInChildren<AddLife>().gameObject;
        powerUps[1] = GetComponentInChildren<UpdateShoot>().gameObject;
        powerUps[2] = GetComponentInChildren<UpdateSpecial>().gameObject;

        for (int i = 0; i < powerUps.Length; i++)
        {
            powerUps[i].SetActive(false);
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (CameraManager.Instance.Phase != CameraManager.TypePhase.Cinematique)
        {
            timer += Time.unscaledDeltaTime;
            if (timer >= duration)
            {
                timer = 0f;
                AddPowerUp();
            }
        }
    }

    public void AddPowerUp()
    {
        if (!powerUps[(int)selectedPowerUp].activeSelf)
        {
            position.x = Random.Range(-8, 8);
            position.y = 0.5f;
            position.z = Random.Range(0, 7f);

            powerUps[(int)selectedPowerUp].transform.position = position;

            powerUps[(int)selectedPowerUp].SetActive(true);
        }

        selectedPowerUp++;

        if (selectedPowerUp > SelectedPowerUp.Special)
        {
            selectedPowerUp = SelectedPowerUp.Life;
        }
    }
}
