Shader "Shader Graphs/BillboardAsteroidShader" {
	Properties {
		_colorStart ("Color", Vector) = (1,1,1,0)
		[NoScaleOffset] _MainTex ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] Texture2D_fe8f1151ced34ff89f8ff2d578cf7dd9 ("Normal", 2D) = "white" {}
		Vector1_40170dc77bbb466583aa0f5bb7744380 ("Smoothness", Range(0, 1)) = 0.5
		_Alpha ("Alpha", Range(0, 1)) = 0.8
		Vector1_febc542821154cb698c4e94cb5c938e7 ("Occlusion", Float) = 1
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