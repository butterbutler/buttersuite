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
   Icon = "scroll-text",
   LoadingTitle = "Butter Debugging Suite",
   LoadingSubtitle = "buttery smooth experience",
   Theme = "Serenity",

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "buttersweet"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false, 
   KeySettings = {
      Title = "not really a key system",
      Subtitle = "it's open source xd",
      Note = "The key is key",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"key"}
   }
})

--tab 

local BasicTab = Window:CreateTab("Basic", "shield-off")
local GUIsTab = Window:CreateTab("GUIs", "wallpaper")
local EPTab = Window:CreateTab("EP", "star")
local DebugTab = Window:CreateTab("Debugging", "bug")
local HubsTab = Window:CreateTab("Script Hubs", "circle-ellipsis")


--buttons
local Button1 = BasicTab:CreateButton({
   Name = "Inf Jump (Disabled)",
   Callback = function()
   -- function here
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
   Flag = "sliderws", 
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
   Flag = "sliderjp", 
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Button3 = BasicTab:CreateButton({
   Name = "All R15 Emotes (keybind = comma)",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Gi7331/scripts/main/Emote.lua'))()     
   end,
})

local Button1 HubsTab:CreateButton({
   Name = "Ghost Hub X",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()     
   end,
})

local Button1 DebugTab:CreateButton({
   Name = "Dex",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()     
   end,
})

local Button2 DebugTab:CreateButton({
   Name = "DarkDex",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/AlterX404/DarkDEX-V5/refs/heads/main/DarkDEX-V5'))()     
   end,
})

local Button3 DebugTab:CreateButton({
   Name = "SimpleSpy",
   Callback = function()
   loadstring(game:HttpGet('https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua'))()     
   end,
})

local Button4 DebugTab:CreateButton({
   Name = "Hydroxide",
   Callback = function()
  local owner = "Upbolt"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")     
   end,
})
