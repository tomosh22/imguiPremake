project "ImGui"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "On"

	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imgui_tables.cpp",
		"imgui_draw.cpp",
		"imgui_rectpack.h",
		"imgui_textedit.h",
		"imgui_truetype.h",
		"imgui_demo.cpp",
	}


	filter "system:windows"
		systemversion "latest"
		
        defines{
                "IMGUI_API=__declspec(dllexport)"
        }

	filter "configurations:Debug"
		runtime "Debug"
		buildoptions "/MT"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		buildoptions "/MT"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		buildoptions "/MT"
		optimize "on"
        symbols "off"
