Shader "Human Unit/Planet Simple" {
	Properties {
		_Height ("Height", 2D) = "black" {}
		_AdditionalDetails ("AdditionalDetails", 2D) = "black" {}
		_RandomSeed ("RandomSeed", Range(0, 1000)) = 106.7961
		_Size ("Size", Range(0, 1)) = 0.1359223
		_AtmosphereColor ("AtmosphereColor", Vector) = (0.1196755,0.2736696,0.8676471,1)
		_WaterLevel ("WaterLevel", Range(-1, 1)) = 0.1262136
		_ShoresContrast ("ShoresContrast", Range(0, 1)) = 0.2427184
		_OceanOpacity ("OceanOpacity", Range(0, 1)) = 1
		_Gloss ("Gloss", Range(0, 1)) = 0
		_Specularity ("Specularity", Range(0, 1)) = 0.1650485
		_Frost ("Frost", Range(-0.51, 3)) = -0.407767
		_FrostContrast ("FrostContrast", Range(0, 1)) = 0.5436893
		_Heat ("Heat", Range(0, 1)) = 0.06796116
		_CloudsColor ("CloudsColor", Vector) = (1,1,1,1)
		_HeightGradient ("HeightGradient", 2D) = "white" {}
		_DetailsGradient ("DetailsGradient", 2D) = "black" {}
		_Clouds ("Clouds", 2D) = "gray" {}
		_CloudsPole ("CloudsPole", 2D) = "black" {}
		[MaterialToggle] _CloudsAvgBlend ("CloudsAvgBlend", Float) = 0
		_CloudsSpeed ("CloudsSpeed", Range(0, 1)) = 0.4368932
		_CloudsAmount ("CloudsAmount", Range(0, 1)) = 1
		_CloudsHeight ("CloudsHeight", Range(0, 1)) = 0.2055926
		_CloudsSpread ("CloudsSpread", Range(0, 1)) = 1
		_Normal ("Normal", 2D) = "bump" {}
		_Relief ("Relief", Range(0, 1)) = 0.3980583
		_FertilityMap ("FertilityMap", 2D) = "gray" {}
		_Vegetation ("Vegetation", Vector) = (0,0.097,0.004462,1)
		_Fertility ("Fertility", Range(0, 1)) = 0.6116505
		_VegetationContrast ("VegetationContrast", Range(0, 0.5)) = 0.1279525
		_Ambient ("Ambient", Range(0, 1)) = 0
		_VegetationFrostResistance ("VegetationFrostResistance", Range(0, 1)) = 0.4563107
		_Cities ("Cities", 2D) = "gray" {}
		_PopulationFrostModifier ("PopulationFrostModifier", Float) = 0
		[HDR] _CitiesColor ("CitiesColor", Vector) = (0.5,0.5,0.5,1)
		_Population ("Population", Range(0, 1)) = 0
		_PopulationShoresMountains ("PopulationShoresMountains", Range(0, 1)) = 0
		_HeatMultiplier ("HeatMultiplier", Float) = 0
		_VegetationMultiplier ("VegetationMultiplier", Float) = 1
		_NoVegetationMultiplier ("NoVegetationMultiplier", Float) = 1
		_PopulationLandOcean ("PopulationLandOcean", Range(0, 1)) = 0
		[MaterialToggle] _EmissiveLiquid ("EmissiveLiquid", Float) = 0
	}
	SubShader {
		Tags { "QUEUE" = "Geometry+0" "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
		Pass {
			Tags { "QUEUE" = "Geometry+0" "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
			GpuProgramID 50722
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry+0" "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
			GpuProgramID 115306
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry+0" "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
			ColorMask 0 -1
			GpuProgramID 137660
			// No subprograms found
		}
	}
	Fallback "Hidden/InternalErrorShader"
}