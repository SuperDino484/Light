project "Sandbox"
    kind "ConsoleApp"
    language "C++"

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "src/**.cpp",
        "src/**.h"
    }

    links {
        "Light"
    }

    includedirs {
        "src"
    }

    filter "system:windows"
        cppdialect "C++20"
        staticruntime "on"
        systemversion "latest"

        defines {
            "LT_PLATFORM_WINDOWS",
            "LT_ENABLE_ASSERTS"
        }

    filter "configurations:Debug"
        symbols "on"
        runtime "Debug"
        defines {
            "LT_DEBUG"
        }

    filter "configurations:Release"
        optimize "on"
        runtime "Debug"
        defines {
            "LT_RELEASE"
        }

    filter "configurations:Dist"
        optimize "on"
        runtime "Release"
        defines {
            "LT_DIST"
        }