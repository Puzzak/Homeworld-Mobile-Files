Shader "Shader Graphs/SunSurfaceShader" {
	Properties {
		Color_fd4a9d27ca76424a9ea321f80ea496f2 ("Color", Vector) = (0.9150943,0.8423542,0.6431559,0)
		Vector1_8cf60997e5764c5eac9532c84c79da8f ("Float", Float) = 2
		Vector1_d1193f84cde844ef81a29b71cc83df77 ("Fresnel Edge A", Float) = -1
		Vector1_ff9560c6f48d47be8f7b3ef17b69771b ("Fresnel Edge B", Float) = 1
		Vector1_2b7daf35c59b40418d24b1aa6580a07e ("Cell Size A", Float) = 15
		Vector1_c63e0cb08fbf4157a00aed6dea92da2e ("Cell Size B", Float) = 5
		Vector1_94d380e0b53242e2a9f89f6d225378ac ("Blend", Float) = 1
		Vector1_002c974f7c024650a4d5f6a687dc1437 ("Cell Cotrast", Range(-1, 1)) = 0.5
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}