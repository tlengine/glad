project "glad"
	language "c"
	kind "staticlib"
	
	targetdir "%{outdir.bin}/%{prj.name}"
	objdir    "%{outdir.obj}/%{prj.name}"
	
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
	
	filter "configurations:devel"
		runtime "debug"
		symbols "on"
	
	filter "configurations:prev"
		runtime "release"
		optimize "speed"
	
	filter "configurations:ship"
		runtime "release"
		optimize "speed"
	