Shader "Shader Graphs/DummyShader" {
	Properties {
		[NoScaleOffset] Texture2D_a7a3a403c9934c6f8e743b2cba16c5a1 ("Texture2D", 2D) = "white" {}
		Vector1_19d41e3d85b8477ca218d42c7d1dcd06 ("Index", Float) = 0
		Vector1_7a9867e5030c497ab43678109708fe7d ("blend", Float) = 0
		Vector2_7ac7ddc4937e4c6796fbd357ffe3b155 ("offset", Vector) = (0,0,0,0)
		[NoScaleOffset] _SampleTexture2DArray_5757d0cb03004d829e004d1440ea7ae4_TextureArray_1 ("Texture2D Array", 2DArray) = "" {}
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