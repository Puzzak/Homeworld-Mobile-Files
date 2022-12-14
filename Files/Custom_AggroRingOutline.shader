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
	SubShader {
		Tags { "QUEUE" = "Transparent+3" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Outline Renderer"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent+3" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha One, SrcAlpha One
			ZTest Less
			ZWrite Off
			Cull Off
			GpuProgramID 50313
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}