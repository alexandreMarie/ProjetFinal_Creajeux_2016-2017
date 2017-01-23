using UnityEngine;

public class Player : MonoBehaviour
{

    [SerializeField]
    private int m_PlayerNumber = 1;
    [SerializeField]
    private int m_Speed = 1;

    [SerializeField]
    private string m_RMoveAxisName_X;  // Will have the correct axis name according to the player number
    [SerializeField]
    private string m_RMoveAxisName_Y;  // Will have the correct axis name according to the player number

    [SerializeField]
    private string m_LMoveAxisName_X;  // Will have the correct axis name according to the player number
    [SerializeField]
    private string m_LMoveAxisName_Y;  // Will have the correct axis name according to the player number

    private string m_RotateAxisName;
    private Rigidbody m_Rb;
    private Transform m_Tr;

    [SerializeField]
    private float m_RMoveInputValue_X;
    [SerializeField]
    private float m_RMoveInputValue_Y;
    [SerializeField]
    private float m_LMoveInputValue_X;
    [SerializeField]
    private float m_LMoveInputValue_Y;


    [SerializeField]    
    private float m_RotateInputValue;

    public void Awake()
    {
        m_Rb = GetComponentInChildren<Rigidbody>();
       //m_Tr = GetComponent<Transform>();
        m_Tr = GameObject.FindGameObjectWithTag("Player").transform;
    }

    public void OnEnable()
    {
        m_Rb.isKinematic = false;
        m_RMoveInputValue_X = 0f;
        m_RMoveInputValue_Y = 0f;

        m_LMoveInputValue_X = 0;
        m_LMoveInputValue_Y = 0;

        m_RotateInputValue = 0f;
    }

    public void OnDisable()
    {
        m_Rb.isKinematic = true;
    }

    // Use this for initialization
    void Start()
    {
        m_LMoveAxisName_X = "LSX"; // + m_PlayerNumber
        m_LMoveAxisName_Y = "LSY";

        m_RMoveAxisName_X = "RSX";
        m_RMoveAxisName_Y = "RSY";
    }

    void MovePlayer()
    {
        Vector3 MovePERSO = new Vector3(((m_LMoveInputValue_Y/-1)/10), 0, ((m_LMoveInputValue_X/-1)/10));
        Debug.Log(MovePERSO);
        m_Tr.position += MovePERSO; 
    }

    void Rotate()
    {

    }
    // Update is called once per frame
    void Update()
    {
        m_LMoveInputValue_X = Input.GetAxisRaw(m_LMoveAxisName_X);
        m_LMoveInputValue_Y = Input.GetAxisRaw(m_LMoveAxisName_Y);

        m_RMoveInputValue_X = Input.GetAxisRaw(m_RMoveAxisName_X);
        m_RMoveInputValue_Y = Input.GetAxisRaw(m_RMoveAxisName_Y);
        float Angle = Mathf
        Debug.Log(Angle);
        MovePlayer();
       // Debug.Log("Left Stick X Player " + m_PlayerNumber + " = " + m_MoveInputValue_X);
       // Debug.Log("Left Stick Y Player " + m_PlayerNumber + " = " + m_MoveInputValue_Y);
    }
}
