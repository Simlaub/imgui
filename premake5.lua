project "imgui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.cpp",
		"imgui.h",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"imgui_tables.cpp",

		"implot/implot.h",
		"implot/implot.cpp",
		"implot/implot_demo.cpp",
		"implot/implot_internal.h",
		"implot/implot_items.cpp",

		"imguizmo/ImGuizmo.h",
		"imguizmo/ImGuizmo.cpp",
		"imguizmo/GraphEditor.h",
		"imguizmo/GraphEditor.cpp",
		"imguizmo/ImCurveEdit.h",
		"imguizmo/ImCurveEdit.cpp",
		"imguizmo/ImGradient.h",
		"imguizmo/ImGradient.cpp",
		"imguizmo/ImSequencer.h",
		"imguizmo/ImSequencer.cpp",
		"imguizmo/ImZoomSlider.h"
	}

    includedirs
    {
        ""
    }

	filter "system:windows"
	    systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"