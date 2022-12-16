Shader "Unlit/GradientSkyboxShaderDithered" {
	Properties {
		_Color ("Color", Vector) = (1,0.3503101,0,0)
		_Edge_A ("Edge A", Float) = 0
		_Edge_B ("Edge B", Float) = 5
		_Alpha ("Alpha", Float) = 0.65
		_DebandingDitherPower ("Debanding Dither Power", Range(0, 0.1)) = 0.02
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