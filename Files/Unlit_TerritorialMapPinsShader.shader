Shader "Unlit/TerritorialMapPinsShader" {
	Properties {
		[NoScaleOffset] _StarSquareAtlasTex ("Star Square Atlas", 2D) = "white" {}
		_AtlasTileNumber ("Atlas Tile Number", Float) = 4
		_StarOpacity ("Star Opacity", Float) = 1
		[Header(Star scaling controls)] _StarScaleFloorCeiling ("Scale|Floor|Ceiling|-", Vector) = (1,0.5,10,0)
		[Header(Bounding Triangle Controls)] _RadiusCutoff ("Radius Cutoff", Range(0, 1)) = 0.5
		[Toggle] _DisplayTriangles ("Display Triangles", Float) = 0
	}
	SubShader {
		Tags { "QUEUE" = "Transparent+1" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pin Stars"
			Tags { "QUEUE" = "Transparent+1" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 47759
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}