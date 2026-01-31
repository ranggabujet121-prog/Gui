local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "R4NG Hub(Demo)",
   Icon = "square-code", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "R4NG HUB Loading...",
   LoadingSubtitle = "Coded by: Rangapu bjirr",
   ShowText = "R4NG Hub", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "R4NG", -- Create a custom folder for your hub/game
      FileName = "R4NG-Hub"
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local UniversalTab = Window:CreateTab("Universal Script", "globe")
local Section = UniversalTab:CreateSection("Universal Script pilihan")

local Button = UniversalTab:CreateButton({
   Name = "Fly Gui V3",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
   end,
})

local Button = UniversalTab:CreateButton({
   Name = "Aimbot",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Equinox-Hub/main/aimbot.lua", true))()
   end,
})
local Button = UniversalTab:CreateButton({
   Name = "Button Example",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Gui'))()
   end,
})

local GameTab = Window:CreateTab("Spesific Games", "rewind")
local Section = GameTab:CreateSection("Script Game")

local Button = GameTab:CreateButton({
   Name = "Brookhaven - Ice Hub",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Escape the tsunami for brainrots",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/EscapeTsunamiForBrainrots"))()
   -- The function that takes place when the button is pressed
   end,
})
Rayfield:Notify({
   Title = "R4NG Hub loaded",
   Content = "Semua script berhasil dimuat!",
   Duration = 6,
   Image = "check",
})
--Rayfield config
Rayfield:LoadConfiguration()
