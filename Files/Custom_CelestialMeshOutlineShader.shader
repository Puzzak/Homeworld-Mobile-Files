Shader "Custom/CelestialMeshOutlineShader" {
	Properties {
		_OutlineThickness ("Outline Thickness", Float) = 1
		_Color_Outline ("Outline Color", Vector) = (1,0.0039,0.2627,0)
		[ToggleUI] _ObjectspaceOrScreenspace ("Objectspace/Screenspace", Float) = 1
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