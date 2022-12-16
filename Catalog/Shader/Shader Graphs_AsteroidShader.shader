Shader "Shader Graphs/AsteroidShader" {
	Properties {
		Color_4317bbf026c84a6a8ccb1cab830e8328 ("BaseColor", Vector) = (0.8396226,0.677542,0.2495105,0)
		Vector1_43370d709cd54fc69dd001d00a3f3ea5 ("Contrast", Float) = 4
		[NoScaleOffset] Texture2D_fb2d1180e5724f96a3af1915a208dc4d ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] Texture2D_1ca1e0c5366749c6958b09c4b1cbd2d0 ("Normal Map", 2D) = "white" {}
		Color_1 ("LowPurityColor", Vector) = (1,0.6156863,0,1)
		Color_2 ("LowPuritySpecularColor", Vector) = (0.8773585,0.7641643,0.5007565,0)
		Vector1_1 ("LowPuritySmoothness", Range(0, 1)) = 0
		Color_9147b3c0588045f895145199bc948d06 ("HighPurityColor", Vector) = (1,0.6156863,0,1)
		Color_3 ("HighPuritySpecularColor", Vector) = (1,0.6156863,0,1)
		Vector1_336d18c89e0448229f4f1e1d58ad65f0 ("HighPuritySmoothness", Range(0, 1)) = 0.17
		_Purity ("PurityValue", Range(0, 1)) = 0
		Vector2_273c43f4e7044c82afc4ceb0d67681f0 ("PurityValue Remap Min Max", Vector) = (0.5,1,0,0)
		[ToggleUI] Boolean_6c1b5635d3894d0b98caf8033549e129 ("InvertSpecular", Float) = 0
		Vector1_a1dc8f70869b45e7ba351fbab9b4a41e ("Ambient Occlusion", Float) = 1
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
	//CustomEditor "ShaderGraph.PBRMasterGUI"
}