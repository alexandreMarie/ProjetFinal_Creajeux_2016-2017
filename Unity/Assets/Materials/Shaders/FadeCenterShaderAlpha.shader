Shader "Custom/Unlit/FadeCenterShaderWithAlpha"
{
	Properties
	{
		_RimColor("Rim Color", color) = (1,1,1,1)
		_CenterColor("Center Color", color) = (1,1,1,1)
		_Factor("Outline Factor", range(0, 1)) = 0.5
		_FadeFactor("Fade Factor", range(0,1)) = 0.5
	}
	SubShader
	{
		Tags { "Queue"="Transparent" "RenderType"="Transparent" }
		LOD 100

		Blend SrcAlpha OneMinusSrcAlpha

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float3 worldPos : TEXCOORD0;
				float4 pos : SV_POSITION;
				float2 uv : TEXCOORD1;
				float3 normal : TEXCOORD2;
			};


			float4 _RimColor;
			float4 _CenterColor;
			float _Factor;
			float _FadeFactor;

			v2f vert (float4 vertex : POSITION, float3 normal : NORMAL, float2 uv : TEXCOORD0)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(vertex);
				o.uv = uv;
				//o.normal = UnityObjectToWorldNormal(normal);
				o.normal = normal;
				
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				half OdotC = dot(i.normal, UNITY_MATRIX_IT_MV[2].xyz);
				
				half4 color = _RimColor;

				if (OdotC > _Factor)
				{
					color = _CenterColor * (1 - (_FadeFactor * OdotC));
				}

				return color;
			}
			ENDCG
		}
	}
}
