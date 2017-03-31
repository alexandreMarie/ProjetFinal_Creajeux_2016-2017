Shader "Custom/TextureLoop" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_SecTex ("Second Texture", 2D) = "white" {}
		_Glossiness("Smoothness", Range(0,1)) = 0.5
		_Metallic("Metallic", Range(0,1)) = 0.0
		_Speed("Speed", range(0,5)) = 1
		_Factor("Factor", range(0,1)) = 0
		_RimColor("Rim Color", Color) = (1,1,1,1)
	}
	SubShader {
		Tags { "RenderType"="Opaque" "Queue"="Transparent"}
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard
		#include "UnityCG.cginc"
		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _SecTex;

		struct Input {
			float2 uv_MainTex;
			float3 worldNormal;
			float3 viewDir;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;
		fixed4 _RimColor;

		float _Speed;
		float _Factor;

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Calculate dot between IN.normal and Camera
			float NdotC = dot(IN.worldNormal, IN.viewDir);
			// Albedo comes from a texture tinted by color
			float2 tmpUV = float2(IN.uv_MainTex.x * (0.5 + 0.5 * (cos(_Time.y * _Speed))), IN.uv_MainTex.y * (0.5 + 0.5 * (sin(_Time.y * _Speed))));

			fixed4 c = _RimColor;

			// Outline exterieur
			if (NdotC > _Factor)
			{
				c = (tex2D (_MainTex, tmpUV) + tex2D (_SecTex, tmpUV)) * _Color;
			}

			//if (NdotC < sin(_Time.y * _Speed) && NdotC > sin(_Time.y * _Speed) - 0.2)
			//{
			//	c = float4(0.8, 0, 1, 1);
			//}

			o.Albedo = c.rgb;
			// Metallic and smoothness come from slider variables
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
