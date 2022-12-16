Shader "GLTFUtility/URP/Standard (Metallic)" {
	Properties {
		_Color ("Color", Vector) = (1,1,1,0)
		[NoScaleOffset] _MainTex ("Albedo (RGB)", 2D) = "white" {}
		[NoScaleOffset] _MetallicGlossMap ("Metallic (B) Gloss (G)", 2D) = "white" {}
		_Roughness ("Roughness", Range(0, 1)) = 1
		_Metallic ("Metallic", Range(0, 1)) = 1
		[NoScaleOffset] _BumpMap ("Normal", 2D) = "bump" {}
		_BumpScale ("NormalScale", Float) = 1
		[NoScaleOffset] _OcclusionMap ("Occlusion (R)", 2D) = "white" {}
		[NoScaleOffset] _EmissionMap ("Emission", 2D) = "black" {}
		_EmissionColor ("Emission Color", Vector) = (0,0,0,0)
		_AlphaCutoff ("Alpha Cutoff", Range(0, 1)) = 0
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
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "ShaderGraph.PBRMasterGUI"
}