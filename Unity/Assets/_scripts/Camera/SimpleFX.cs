using UnityEngine;

[ExecuteInEditMode]
public class SimpleFX : MonoBehaviour
{
    public Shader HorizontalBlurEffect;
    public Shader VerticalBlurEffect;
    public Shader AddContrastEffect;

    // gaussian blur
    public Shader HorizontalGaussianBlurEffect;
    public Shader VerticalGaussianBlurEffect;

    private Material HorizontalBlurMat;
    private Material VerticalBlurMat;
    private Material AddContrastMat;

    private Material HorizontalGaussianBlurMat;
    private Material VerticalGaussianBlurMat;

    RenderTexture rtTmp, rt;

    [SerializeField]
    [Range(1, 50)]
    public int offset = 1;

    [SerializeField]
    [Range(1, 20)]
    public int contrast = 1;

    [SerializeField]
    public bool Gaussian = false;

    [SerializeField]
    [Range(0f, 10f)]
    public float distance;

    void CreateMaterials()
    {
        if (HorizontalBlurMat == null || VerticalBlurMat == null || AddContrastMat == null || HorizontalGaussianBlurMat == null || VerticalGaussianBlurMat == null)
        {
            HorizontalBlurMat = new Material(HorizontalBlurEffect);
            HorizontalBlurMat.hideFlags = HideFlags.HideAndDontSave;

            VerticalBlurMat = new Material(VerticalBlurEffect);
            VerticalBlurMat.hideFlags = HideFlags.HideAndDontSave;

            AddContrastMat = new Material(AddContrastEffect);
            AddContrastMat.hideFlags = HideFlags.HideAndDontSave;

            HorizontalGaussianBlurMat = new Material(HorizontalGaussianBlurEffect);
            HorizontalGaussianBlurMat.hideFlags = HideFlags.HideAndDontSave;

            VerticalGaussianBlurMat = new Material(VerticalGaussianBlurEffect);
            VerticalGaussianBlurMat.hideFlags = HideFlags.HideAndDontSave;
        }
    }

    void OnRenderImage(RenderTexture source, RenderTexture destination) //Fonction appelée par unity à chaque fin de rendu. C'est maintenant qu'on fait le post-effet
    {
        CreateMaterials();

        bool d3d = SystemInfo.graphicsDeviceVersion.IndexOf("Direct3D") > -1;
        Matrix4x4 V = Camera.main.worldToCameraMatrix;
        Matrix4x4 P = Camera.main.projectionMatrix;
        if (d3d)
        {
            // Invert Y for rendering to a render texture
            for (int i = 0; i < 4; i++)
            {
                P[1, i] = -P[1, i];
            }
            // Scale and bias from OpenGL -> D3D depth range
            for (int i = 0; i < 4; i++)
            {
                P[2, i] = P[2, i] * 0.5f + P[3, i] * 0.5f;
            }
        }

        Matrix4x4 VP = P * V;

        rt = RenderTexture.GetTemporary(Screen.width / 2, Screen.height / 2);
        rtTmp = RenderTexture.GetTemporary(Screen.width / 2, Screen.height / 2);

        AddContrastMat.SetInt("contrast", contrast);
        Graphics.Blit(source, rtTmp, AddContrastMat);

        if (Gaussian == false)
        {
            HorizontalBlurMat.SetInt("_SampleRange", offset);
            Graphics.Blit(rtTmp, rt, HorizontalBlurMat);

            VerticalBlurMat.SetInt("_SampleRange", offset);
            VerticalBlurMat.SetTexture("secTex", source);
            Graphics.Blit(rt, destination, VerticalBlurMat);
        }
        else
        {
            HorizontalGaussianBlurMat.SetFloat("distance", distance / 1000);
            Graphics.Blit(rtTmp, rt, HorizontalGaussianBlurMat);

            VerticalGaussianBlurMat.SetFloat("distance", distance / 1000);
            VerticalGaussianBlurMat.SetTexture("secTex", source);
            Graphics.Blit(rt, destination, VerticalGaussianBlurMat);
        }

        RenderTexture.ReleaseTemporary(rt);
        RenderTexture.ReleaseTemporary(rtTmp);
    }

    public void SetOffset(int value)
    {
        offset = value;
    }

    public void SetContrast(int value)
    {
        contrast = value;
    }

    public void SetDistance(int value)
    {
        distance = value;
    }
}