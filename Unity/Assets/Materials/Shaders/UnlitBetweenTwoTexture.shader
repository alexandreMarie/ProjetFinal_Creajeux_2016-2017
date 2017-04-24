// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D

Shader "Custom/UnlitBetweenTwoTexture"
{
	Properties
	{
		_MainTex ("Texture One", 2D) = "white" {}
		_SecTex("Texture Two", 2D) = "white" {}
		_Range("Fade",range(0,1)) = 0
		_CutOut("Cutout alpha", range(0,1)) = 0.2
	}
		SubShader
		{
			//Tags { "Queue" = "AlphaTest" "IgnoreProjector" = "True" "RenderType" = "TransparentCutout" }
			LOD 100

			Pass
			{
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
			//#pragma alphatest: _CutOut;
			// make fog work
			//Lighting off
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float2 uv1 : TEXCOORD1;
			};

			//struct appdata_lightmap
			//{
			//	float4 vertex : POSITION;
			//	float2 texcoord : TEXCOORD0;
			//	float2 texcoord1 : TEXCOORD1;
			//};

			sampler2D _MainTex;
			sampler2D _SecTex;
			float4 _MainTex_ST;
			float _Range;

			float _CutOut;

			// sampler2D unity_Lightmap;
			// float4 unity_LightmapST;
		
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.uv1 = v.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv);
				col.rgb *= DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, i.uv1));
				fixed4 colorFinal = lerp( col, tex2D(_SecTex, i.uv), _Range);

				if (colorFinal.a < _CutOut)
				{
					discard;
				}

				return colorFinal;
				// apply fog
				//UNITY_APPLY_FOG(i.fogCoord, col);
			}
			ENDCG
		}
	}
}
