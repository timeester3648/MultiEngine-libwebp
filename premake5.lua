include "../../premake/common_premake_defines.lua"

project "libwebp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./src/**.h",
		"./src/**.c",
		"./sharpyuv/**.h",
		"./sharpyuv/**.c",
	}

	defines {
		"WEBP_USE_THREAD"
	}

	includedirs {
		"./",
		"%{IncludeDir.libwebp}",
	}