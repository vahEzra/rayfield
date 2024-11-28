local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Prison Life",
   LoadingTitle = "Prison Life Lite",
   LoadingSubtitle = "by Chinhooks_DT",
   Theme = "Default", -- DarkBlue, Green, Light, Default - more coming soon!

   DisableRayfieldPrompts = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "prison_life_hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "pLife",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "prison_life_key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://raw.githubusercontent.com/vahEzra/keys/refs/heads/main/rayfield/keys.lua","freeKeyYipee"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("LocalPlayer", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Humanoid")

local Slider = Tab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 500},
   Increment = 1,
   Suffix = "*",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "*",
   CurrentValue = 16,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
