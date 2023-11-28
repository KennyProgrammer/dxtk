--
-- Main Premake5 file for building Windows DirectX Toolkit project.
-- Copyright (c) 2020-2023 by Danil (Kenny) Dukhovenko, All rights reserved.
-- 
-- Linking: This library additionaly links dxguid.lib.
--
-- Requirement:
--  - ForceEngine.lua
--

-- Windows DirectX Toolkit C++ Project
project "DxTK"
	kind          "StaticLib"
	language      "C++"
	staticruntime "on"
	targetdir     ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Lib")
	objdir        ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Obj")
	
	includedirs {
		"include"
	}
	
	filter "system:windows"
		systemversion "latest"

		files {
			"include/**.h",
			"src/**.cpp"
		}

		defines { 
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		links {
			"%{Library.Any.DxGui}"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		links {
			"%{Library.Any.DxGui}" -- im not sure was there dxgui.lib release version?
		}