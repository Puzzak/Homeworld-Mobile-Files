Shader "Custom/TerritoriesOwnershipOutlineShader" {
	Properties {
		_OutlineThickness ("Outline Thickness", Float) = 1
		_RegionsOpacity ("Regions Opacity", Float) = 1
		_DimmedOpacityReduction ("Dimmed Opacity Reduction", Range(0, 1)) = 0.5
		_StencilRef ("Stencil Ref", Float) = 127
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