local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield-gen2'))()

local window = Rayfield:CreateWindow({
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
      FolderName = nil,
      FileName = "NeonxHubX"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

local function chicken()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/iblameaabis/Enchanted/refs/heads/main/Muscle%20Legends"))()
end

local Tab = window:CreateTab("Farming", nil)

local Button = Tab:CreateButton({
   Name = "Farming",
   Callback = function()
      chicken()
   end,
})
