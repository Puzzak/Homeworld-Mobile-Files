Shader "Unlit/VertexSkyboxGammaShaderDithered" {
	Properties {
		_Color ("Color", Vector) = (0.4811321,0.4811321,0.4811321,0)
		_ToneColor ("Tone Color", Vector) = (0.5660378,0.5660378,0.5660378,0)
		_ToneColorPower ("Tone Color Power", Range(0, 4)) = 0.5
		_Contrast ("Contrast", Range(0, 1.5)) = 1
		_Gamma ("Gamma", Range(1, 10)) = 6
		[ToggleUI] _Falloff ("Falloff", Float) = 1
		[NoScaleOffset] _FalloffCloudMaskTex ("Falloff Cloud Mask", 2D) = "white" {}
		_FalloffCloudMaskTiling ("Falloff Cloud Mask Tiling", Float) = 1
		_DarkFalloffEdge ("Dark Falloff Edge", Float) = 1
		_DarkFalloffOffset ("Dark Falloff Offset", Float) = 0
		_FalloffBlend ("Falloff Blend", Range(0, 1)) = 1
		_DebandingDitherPower ("Debanding Dither Power", Range(0, 0.0625)) = 0.023529412
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = _Color.rgb;
			o.Alpha = _Color.a;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}