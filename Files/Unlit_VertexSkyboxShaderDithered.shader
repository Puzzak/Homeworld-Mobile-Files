Shader "Unlit/VertexSkyboxShaderDithered" {
	Properties {
		_VertexColor ("Vertex Color", Vector) = (0.4811321,0.4811321,0.4811321,0)
		_ToneColor ("Tone Color", Vector) = (0.5660378,0.5660378,0.5660378,0)
		_ToneColorPower ("Tone Color Power", Range(0, 4)) = 0.5
		_Contrast ("Contrast", Range(0, 1.5)) = 1
		_DebandingDitherPower ("Debanding Dither Power", Range(0, 0.0625)) = 0.023529412
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