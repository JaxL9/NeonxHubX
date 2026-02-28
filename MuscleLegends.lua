-- Load Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "NeonxHubX",
    LoadingTitle = "Loading...",
    LoadingSubtitle = "by limkutr",
    ConfigurationSaving = {
        Enabled = false
    },
    KeySystem = false
})

-- Create Tabs
local ScriptsTab = Window:CreateTab("Scripts", 4483362458)
local InfoTab = Window:CreateTab("Info", 4483362458)

---------------------------------------------------
-- SAFE LOAD FUNCTION
---------------------------------------------------

local function SafeLoad(url)
    Rayfield:Notify({
        Title = "Loading Script",
        Content = "Please wait...",
        Duration = 3
    })

    local success, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)

    if not success then
        warn("Script Load Failed:", err)
        Rayfield:Notify({
            Title = "Error",
            Content = "Script failed. Check console.",
            Duration = 5
        })
    else
        Rayfield:Notify({
            Title = "Success",
            Content = "Script Loaded!",
            Duration = 4
        })
    end
end

---------------------------------------------------
-- SCRIPT BUTTONS
---------------------------------------------------

ScriptsTab:CreateButton({
    Name = "Anti AFK",
    Callback = function()
        SafeLoad("https://raw.githubusercontent.com/iblameaabis/Enchanted/main/Anti-AFK")
    end
})

ScriptsTab:CreateButton({
    Name = "Muscle Legends (Server Hop Kill)",
    Callback = function()
        SafeLoad("https://raw.githubusercontent.com/iblameaabis/Enchanted/main/ML%20Killing%20%5BServer%20Hop%5D")
    end
})

ScriptsTab:CreateButton({
    Name = "Redz Hub",
    Callback = function()
        SafeLoad("https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua")
    end
})

ScriptsTab:CreateButton({
    Name = "Legends of Speed",
    Callback = function()
        SafeLoad("https://raw.githubusercontent.com/iblameaabis/Enchanted/main/Legends%20Of%20Speed")
    end
})

ScriptsTab:CreateButton({
    Name = "Ninja Legends",
    Callback = function()
        SafeLoad("https://raw.githubusercontent.com/iblameaabis/Enchanted/main/Ninja%20Legends")
    end
})

---------------------------------------------------
-- INFO TAB
---------------------------------------------------

InfoTab:CreateParagraph({
    Title = "About",
    Content = "Some scripts are not maintained by me.\n\nHub by limkutr.\n\nSelect a script from Scripts tab."
})
