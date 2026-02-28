-- Load Rayfield safely
local Rayfield
do
    local ok, lib = pcall(function()
        return loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
    end)
    if not ok or not lib then
        warn("Failed to load Rayfield library:", lib)
        return
    end
    Rayfield = lib
end

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "NeonxHubX",
    Icon = 0,
    LoadingTitle = "Loading...",
    LoadingSubtitle = "by limkutr",
    ShowText = "Rayfield",
    Theme = "Default",
    ToggleUIKeybind = "K",

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "NeonxHubX",
        FileName = "Config"
    },

    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },

    KeySystem = false
})

-- Safe LoadSource function
local function LoadSource()
    local success, err = pcall(function()

        local code = game:HttpGet("https://raw.githubusercontent.com/JaxL9/NeonxHubX/main/Source.lua")
        if not code or code == "" then
            error("Failed to fetch script (empty response)")
        end
   
        local compiled = loadstring(code)
        if not compiled then
            error("loadstring failed to compile script")
        end

        compiled()

    end)

    if not success then
        warn("LoadSource Error:", err)
    else
        print("Script Loaded Successfully")
    end
end
    if not ok then
        warn("LoadSource Error:", err)
        pcall(function()
            Rayfield:Notify({
                Title = "Error",
                Content = "Script failed to load. Check console.",
                Duration = 6
            })
        end)
    else
        pcall(function()
            Rayfield:Notify({
                Title = "Success",
                Content = "Farming Script Loaded!",
                Duration = 4
            })
        end)
    end
end



-- Load configuration safely
pcall(function()
    Rayfield:LoadConfiguration()
end)
