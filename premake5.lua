project "Glad"
	language "C"
	kind "StaticLib"
	
	targetdir "%{OutputDir.Binaries}/%{prj.name}"
	objdir    "%{OutputDir.Intermediates}/%{prj.name}"
	
	files
	{
		"include/**.h",
		"src/**.c"
	}
	
	includedirs
	{
		"include"
	}
	
	filter "system:windows"
		systemversion "latest"
		defines
		{
			"_CRT_SECURE_NO_WARNINGS"
		}
	
	filter "configurations:Development"
		runtime "Debug"
		symbols "On"
	
	filter "configurations:Preview"
		runtime "Release"
		optimize "Speed"
	
	filter "configurations:Shipping"
		runtime "Release"
		optimize "Speed"
	