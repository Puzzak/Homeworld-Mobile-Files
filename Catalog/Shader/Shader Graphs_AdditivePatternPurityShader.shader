Shader "Shader Graphs/AdditivePatternPurityShader" {
	Properties {
		_Color ("Color", Vector) = (0.509434,0.509434,0.509434,0)
		[NoScaleOffset] Texture2D_A3D2A340 ("Pattern Texture", 2D) = "white" {}
		Vector1_961261EF ("Tiling X", Float) = 1
		Vector1_16993793 ("Tiling Y", Float) = 1
		[ToggleUI] Boolean_8F6F4C9B ("Screenspace/Tangent", Float) = 0
		Color_9e8e8ee7182a4c57b2f61eac93d79230 ("Low Purity Color", Vector) = (0.3019608,0.2705882,0.2196079,1)
		Color_5a01de460120439993b977021231fe83 ("High Purity Color", Vector) = (1,0.5450981,0,1)
		_Purity ("Purity Value", Range(0, 1)) = 0.7
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

		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = _Color.rgb;
			o.Alpha = _Color.a;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}