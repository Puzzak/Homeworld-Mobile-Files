Shader "Shader Graphs/AdditivePatternDiffuseShader" {
	Properties {
		Color_E7E6B393 ("Color", Vector) = (0.509434,0.509434,0.509434,0)
		[NoScaleOffset] _MainTex ("Texture", 2D) = "white" {}
		[NoScaleOffset] Texture2D_A3D2A340 ("Pattern Texture", 2D) = "white" {}
		Vector1_961261EF ("Tiling X", Float) = 1
		Vector1_16993793 ("Tiling Y", Float) = 1
		[ToggleUI] Boolean_8F6F4C9B ("Screenspace/Tangent", Float) = 0
		[ToggleUI] Boolean_E231E164 ("Flicker", Float) = 0
		[ToggleUI] Boolean_25AF2B06 ("Move", Float) = 0
		_visibility ("Visibility", Range(0, 1)) = 1
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}