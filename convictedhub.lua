print("ButlerButter v.0.1 Launched")
--loading rayfield library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--notify
Rayfield:Notify({
   Title = "buttlerbutter's Debugging Suite Launched",
   Content = "Happy Hacking",
   Duration = 5,
   Image = "bell",
})

--window
local Window = Rayfield:CreateWindow({
   Name = "Butter's Suite v.test-build.0.1",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Butter Debugging Suite",
   LoadingSubtitle = "buttery smooth experience",
   Theme = "Serenity", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "CDS"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "not really a key system",
      Subtitle = "it's open source xd",
      Note = "The key is key", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

--tab 

local BasicTab = Window:CreateTab("Basic", "shield-off") -- Title, Image
local EPTab = Window:CreateTab("EP", "star") -- Title, Image
local DebugTab = Window:CreateTab("Debugging", "bug") -- Title, Image
local HubsTab = Window:CreateTab("Script Hubs", "circle-ellipsis") -- Title, Image


--buttons
local Button1 = BasicTab:CreateButton({
   Name = "Inf Jump (Disabled)",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button2 = BasicTab:CreateButton({
   Name = "Infinite Yield Loadstring",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
   end,
})

local Slider1 = BasicTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = BasicTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Button = BasicTab:CreateButton({
   Name = "All R15 Emotes (keybind = comma)",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Gi7331/scripts/main/Emote.lua'))()     
   end,
})

local Button HubsTab:CreateButton({
   Name = "Ghost Hub X",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()     
   end,
})
