Shader "Shader Graphs/PlanetCloudsShader" {
	Properties {
		[NoScaleOffset] _MainTex ("MainTex", 2D) = "white" {}
		[NoScaleOffset] _NormalEquirectA ("NormalEquirectA", 2D) = "white" {}
		NormalMapStrength ("NormalStrenght", Range(0.01, 1)) = 0.6
		Vector1_6c0779fcf372430eaf1b177cde2b30a9 ("A", Range(0, 1)) = 0
		Vector1_e62cd33d98894f77a416c0f8a5ab8f75 ("B", Range(0, 1)) = 0
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