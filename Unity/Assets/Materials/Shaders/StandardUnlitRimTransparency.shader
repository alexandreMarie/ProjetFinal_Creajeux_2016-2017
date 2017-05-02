Shader "Custom/StandardUnlitRimTransparency" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Emissive("Emissive", 2D) = "black" {}
		_Alpha ( "Alpha" , Range(0, 1) ) = 0
		_RimColor("Rim Color", Color) = (1,1,1,1)
		_RimStrength("Rim Strength", Range(0,5)) = 1
		_RangeTwoTexture("Lerp two texture", Range(0, 1)) = 0
	}
	SubShader {
		//Tags{ "Queue" = "Transparent" }
		Tags { "RenderType"="Opaque" }
		Cull Off
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf NoLighting

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		float _Alpha;
		float4 _RimColor;
		float _RimStrength;
		sampler2D _Emissive;

		float _RangeTwoTexture;

		struct Input {
			float2 uv_MainTex;
			float3 viewDir;
		};

		fixed4 _Color;

		fixed4 LightingNoLighting(SurfaceOutput s, fixed3 lightDir, fixed atten)
		{
			fixed4 c;
			c.rgb = s.Albedo;
			c.a = s.Alpha;
			return c;
		}

		void surf (Input IN, inout SurfaceOutput o) {
			// Albedo comes from a texture tinted by color

			half NdotView = 1 - dot(normalize(IN.viewDir), o.Normal);
			NdotView = round(pow(NdotView, _RimStrength));

			o.Alpha = max(NdotView, _Alpha);
			o.Albedo = lerp( tex2D(_MainTex, IN.uv_MainTex), tex2D(_Emissive, IN.uv_MainTex), _RangeTwoTexture ) * (1- NdotView);

			o.Emission = NdotView * _RimColor + tex2D(_Emissive, IN.uv_MainTex);// *5.0f;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
