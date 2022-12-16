Shader "Shader Graphs/PlanetSimpleShader" {
	Properties {
		[NoScaleOffset] _MainTex ("MainTex", 2D) = "white" {}
		Vector1_cb3390f9d3424534b50223f4a1c892ea ("Blend", Float) = 0
		[NoScaleOffset] Normal ("Normal", 2D) = "white" {}
		Vector1_95fc99f2667e47c29f5ca4259e6c7300 ("Normal Stregth", Float) = 1
		Smoothness ("Smoothness", Range(0, 1)) = 0
		Occlusion ("Occlusion", Range(0, 1)) = 0
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
	//CustomEditor "ShaderGraph.PBRMasterGUI"
}