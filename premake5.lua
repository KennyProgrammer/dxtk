project "DxTK"
	kind "StaticLib"
	language "C++"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
	}
	
	includedirs
	{
		"%{prj.dir}/Inc"
	}
	
	links
	{
		"Lib/x64/dxguid.lib"
	}

	filter "system:windows"
		systemversion "latest"

		files
		{
			"Inc/DDSTextureLoader.h",
			"Inc/DirectXHelpers.h",
			"Inc/Effects.h",
			"Inc/WICTextureLoader.h",
			"Inc/pch.h",
			"Inc/pch.cpp",
			"Inc/DDS.h",
			"Inc/DDSTextureLoader.cpp",
			"Inc/DirectXHelpers.cpp",
			"Inc/LoaderHelpers.h",
			"Inc/PlatformHelpers.h",
			"Inc/WICTextureLoader.cpp",
			"Inc/DirectXTexP.h",
			"Inc/DirectXTexD3D11.cpp",
			"Inc/DirectXTex.inl",
			"Inc/DirectXTex.h",
			"Inc/DirectXTexImage.cpp",
			"Inc/DirectXTexWIC.cpp",
			"Inc/DirectXTexConvert.cpp",
			"Inc/DirectXTexUtils.cpp",
			"Inc/DirectXTexMipmaps.cpp",
			"Inc/DirectXTexCompress.cpp",
			"Inc/BC.h",
			"Inc/BC.cpp",
			"Inc/BC4BC5.cpp",
			"Inc/BC6HBC7.cpp",
			"Inc/scoped.h",
			"Inc/filters.h",
			"Inc/d3dx12.h"
		}

		defines 
		{ 
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"