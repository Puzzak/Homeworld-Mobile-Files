Shader "Custom/AggroRingOutline" {
	Properties {
		_OutlineThickness ("Outline Thickness", Float) = 1
		_OutlineOpacity ("Outline Opacity", Range(0, 1)) = 0.5
		[Header(These values are technical)] _QuadOutreach ("Quad Outreach", Range(0, 1)) = 0.5
		_BoundarySubtraction ("Boundary Subtraction", Range(0, 0.2)) = 0.008
		_VertexDistanceMult ("Vertex Distance Mult", Range(0, 100)) = 0.9
		_MinDiff ("Minimal Difference", Range(-1, 1)) = 0.1839
		[PerRendererData] _Color_Outline ("Outline Color", Vector) = (1,0.0039,0.2627,0)
		[PerRendererData] _Group ("Group", Float) = 0
		[PerRendererData] _Index ("Index", Float) = 0
		[PerRendererData] _LossyScale ("LossyScale", Float) = 1
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