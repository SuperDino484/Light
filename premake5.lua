workspace "Light"
    architecture "x64"

    configurations {
        "Debug",
        "Release",
        "Dist"
    }

    startproject "Sandbox"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
IncludeDirs = {}
IncludeDirs['Light'] = "%{wks.location}/Light/src"
IncludeDirs['spdlog'] = "%{wks.location}/Light/vendor/spdlog/include"
IncludeDirs['glfw'] = "%{wks.location}/Light/vendor/glfw/include"

include "Light"
include "Sandbox"