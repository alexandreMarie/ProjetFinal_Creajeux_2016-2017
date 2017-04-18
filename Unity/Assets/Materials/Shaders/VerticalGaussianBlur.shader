Shader "Custom/VerticalGaussianBlur" {
Properties {
	_MainTex ("", 2D) = "White" {}
}
SubShader {
	Pass {
		ZTest Always Cull Off ZWrite Off Fog { Mode off } //Parametrage du shader pour éviter de lire, écrire dans le zbuffer, désactiver le culling et le brouillard sur le polygone

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.0
			
			sampler2D _MainTex;
			sampler2D secTex;
			float distance;

			struct Prog2Vertex {
	            float4 vertex : POSITION; 	//Les "registres" précisés après chaque variable servent
	            float4 tangent : TANGENT; 	//A savoir ce qu'on est censé attendre de la carte graphique.
	            float3 normal : NORMAL;		//(ce n'est pas basé sur le nom des variables).
	            float4 texcoord : TEXCOORD0;  
	            float4 texcoord1 : TEXCOORD1; 
	            fixed4 color : COLOR; 
        	 };
			 
			//Structure servant a transporter des données du vertex shader au pixel shader.
			//C'est au vertex shader de remplir a la main les informations de cette structure.
			struct Vertex2Pixel
			 {
           	 float4 pos : SV_POSITION;
           	 float4 uv : TEXCOORD0;

			 };  	 

			Vertex2Pixel vert (Prog2Vertex i)
			{
				Vertex2Pixel o;
		        o.pos = mul (UNITY_MATRIX_MVP, i.vertex); //Projection du modèle 3D, cette ligne est obligatoire
		        o.uv=i.texcoord; //UV de la texture
		      	
		      	return o;
			}

            float4 frag(Vertex2Pixel i) : COLOR 
            {
				float4 Color = float4(0,0,0,0);

				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y - 4.0f * distance)) * 0.05;
				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y - 3.0f * distance)) * 0.09;
				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y - 2.0f * distance)) * 0.12;
				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y - distance)) * 0.15;
				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y)) * 0.16;
				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y + distance)) * 0.15;
				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y + 2.0f * distance)) * 0.12;
				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y + 3.0f * distance)) * 0.09;
				Color += tex2D(_MainTex, float2(i.uv.x, i.uv.y + 4.0f * distance)) * 0.05;
                
				return Color + tex2D(secTex, float2(i.uv.x, i.uv.y));
            }
ENDCG 
	}
}

Fallback off

}