Shader "Shader Graphs/ViewConeShader" {
	Properties {
		Color_572bae579e1c4d7ebd43dbd5373da64f ("Color", Vector) = (0.5471698,0.5471698,0.5471698,0)
		Vector1_65bd8f7eec4d4a10aac9a264b24bc5f5 ("Opacity", Range(0, 1)) = 1
		[NoScaleOffset] Texture2D_95f0c7696e5c47f99003a510ae3a0ab1 ("Pattern Texture", 2D) = "white" {}
		Vector2_476feecf185449a8b1b7c38651fc3a05 ("Pattern Tiling", Vector) = (0,0,0,0)
		Vector1_aab8277782e14de796415fdef9642b27 ("Angle", Range(0, 180)) = 90
		[ToggleUI] Boolean_8aef87858ecf444cace48619b62303b5 ("Pattern", Float) = 0
		Vector1_c4a4101f91a5440db583c3b144d180a0 ("Dropoff Min", Float) = 0
		Vector1_010b45b91ad245f0bc872c1bc4291f09 ("Dropoff Max", Range(0, 1)) = 0.5
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