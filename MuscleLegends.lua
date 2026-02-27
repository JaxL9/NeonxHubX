-- Load Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

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

-- Safe Load Function
local function LoadSource()
    local success, err = pcall(function()
        local code = game:HttpGet("https://raw.githubusercontent.com/JaxL9/NeonxHubX/main/Source.lua")
        loadstring(code)()
    end)

    if not success then
        warn("LoadSource Error:", err)
        Rayfield:Notify({
            Title = "Error",
            Content = "Script failed to load. Check console.",
            Duration = 6
        })
    else
        Rayfield:Notify({
            Title = "Success",
            Content = "Farming Script Loaded!",
            Duration = 4
        })
    end
end

-- Create Tab
local FarmingTab = Window:CreateTab("Farming", nil)

-- Create Button
FarmingTab:CreateButton({
    Name = "Load Farming Script",
    Callback = LoadSource
})

Rayfield:LoadConfiguration()
