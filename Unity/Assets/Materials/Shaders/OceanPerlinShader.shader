Shader "Custom/OceanPerlinShader" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness("Smoothness", Range(0,1)) = 0.5
		_Metallic("Metallic", Range(0,1)) = 0.0
		_Color1("Color Bright", Color) = (1,1,1,1)
		_Color2("Color Dark", Color) = (0,0,0,0)
		_NoiseFactor("Noise Factor", range(1, 100)) = 50
		_TimeFactor("Time Factor", range(0, 1)) = 1
		_EmissionColor("Emissive", Color) = (1,1,1,1)
		_OffsetFactor("Offset UV Factor", range(0, 1)) = 0.01
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows
		#include "Assets/Materials/Shaders/noiseSimplex.cginc"
			 
		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;

		float4 _Color1;
		float4 _Color2;
		float _NoiseFactor;
		float _TimeFactor;
		float4 _EmissionColor;
		float _OffsetFactor;
		struct Input {
			float2 uv_MainTex;
			float3 worldPos;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			float4 noise = snoise(float3(IN.worldPos.xz, _Time.y * _TimeFactor) * _NoiseFactor);
			float2 tmpUV = IN.uv_MainTex.xy;
			tmpUV.x += _OffsetFactor * noise;
			tmpUV.y += _OffsetFactor * noise;
			fixed4 c = tex2D(_MainTex, tmpUV) * lerp(_Color1, _Color2, noise);
			o.Albedo = c.rgb;
			o.Normal = noise;
			o.Emission = _EmissionColor * c.rgb;
			// Metallic and smoothness come from slider variables
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
