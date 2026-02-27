-- Delta-compatible request
local function httpGet(url)
    return request({
        Url = url,
        Method = "GET"
    }).Body
end

-- Load Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield-gen2"))()

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

-- Load your source
local function LoadSource()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JaxL9/NeonxHubX/main/Source.lua"))()
end

-- Create Tab
local FarmingTab = Window:CreateTab("Farming", nil)

-- Create Button
FarmingTab:CreateButton({
    Name = "Load Farming Script",
    Callback = function()
        LoadSource()
    end
})
