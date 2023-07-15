project "ImGui"
	kind "StaticLib"
	language "C++"

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
        cppdialect "C++17"
		staticruntime "On"
        defines{
                "IMGUI_API=__declspec(dllexport)"
        }

	filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
