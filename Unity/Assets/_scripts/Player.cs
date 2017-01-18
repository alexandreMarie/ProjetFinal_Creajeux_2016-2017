using UnityEngine;

public class Player : MonoBehaviour
{

    [SerializeField]
    private int m_PlayerNumber = 1;
    [SerializeField]
    private int m_Speed = 1;

    private string m_MoveAxisName_X;  // Will have the correct axis name according to the player number
    private string m_MoveAxisName_Y;  // Will have the correct axis name according to the player number
    private string m_RotateAxisName;
    private Rigidbody m_Rb;
    private float m_MoveInputValue_X;
    private float m_MoveInputValue_Y;
    private float m_RotateInputValue;

    public void Awake()
    {
        m_Rb = GetComponent<Rigidbody>();
    }

    public void OnEnable()
    {
        m_Rb.isKinematic = false;
        m_MoveInputValue_X = 0f;
        m_MoveInputValue_Y = 0f;
        m_RotateInputValue = 0f;
    }

    public void OnDisable()
    {
        m_Rb.isKinematic = true;
    }

    // Use this for initialization
    void Start()
    {
        m_MoveAxisName_X = "LSX"; // + m_PlayerNumber
        m_MoveAxisName_Y = "LSY";
    }

    // Update is called once per frame
    void Update()
    {
        m_MoveInputValue_X = Input.GetAxisRaw(m_MoveAxisName_X);
        m_MoveInputValue_Y = Input.GetAxisRaw(m_MoveAxisName_Y);

        Debug.Log("Left Stick X Player " + m_PlayerNumber + " = " + m_MoveInputValue_X);
        Debug.Log("Left Stick Y Player " + m_PlayerNumber + " = " + m_MoveInputValue_Y);
    }
}
