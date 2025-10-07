project "AngelScript"
	kind "StaticLib"
	language "C++"
    staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"source/**.h",
		"source/**.cpp",
		-- Add-ons
		"add_on/autowrapper/**.h",
		"add_on/autowrapper/**.cpp",
		"add_on/contextmgr/**.h",
		"add_on/contextmgr/**.cpp",
		"add_on/datetime/**.h",
		"add_on/datetime/**.cpp",
		"add_on/debugger/**.h",
		"add_on/debugger/**.cpp",
		"add_on/scriptany/**.h",
		"add_on/scriptany/**.cpp",
		"add_on/scriptarray/**.h",
		"add_on/scriptarray/**.cpp",
		"add_on/scriptbuilder/**.h",
		"add_on/scriptbuilder/**.cpp",
		"add_on/scriptdictionary/**.h",
		"add_on/scriptdictionary/**.cpp",
		"add_on/scriptfile/**.h",
		"add_on/scriptfile/**.cpp",
		"add_on/scriptgrid/**.h",
		"add_on/scriptgrid/**.cpp",
		"add_on/scripthandle/**.h",
		"add_on/scripthandle/**.cpp",
		"add_on/scriptmath/**.h",
		"add_on/scriptmath/**.cpp",
		"add_on/scriptsocket/**.h",
		"add_on/scriptsocket/**.cpp",
		"add_on/scriptstdstring/**.h",
		"add_on/scriptstdstring/**.cpp",
		"add_on/serializer/**.h",
		"add_on/serializer/**.cpp",
		"add_on/weakref/**.h",
		"add_on/weakref/**.cpp",
	}

	includedirs
	{
		"include"
	}


	filter "system:windows"
		systemversion "latest"
		cppdialect "C++11"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++11"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
