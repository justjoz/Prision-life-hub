local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Prision Life Hub v1",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Joz Interface Suite",
   LoadingSubtitle = "by JozZz",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"joz1234"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local PlayerTab  = Window:CreateTab("Player", 4483362458) -- Title, Image

local Slider  = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 500},
   Increment = 1,
   Suffix = "Walk",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 

   end,
})
local Slider = PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 500},
   Increment = 1,
   Suffix = "Jump",
   CurrentValue = 50,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 

   end,
})



local Button = PlayerTab:CreateButton({
   Name = "Teleport Button",
   Callback = function()
 game.Players.LocalPlayer
       local character = player.Character or player.CharacterAdded:Wait()
       if character and character:FindFirstChild("HumanoidRootPart") then
character.HumanoidRootPart.CFrame = CFrame.new(0, 10, 0)
       else
           warn("No se encontró el HumanoidRootPart para el teletransporte.")
       end
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Teleport Button",
   Callback = function()
 game.Players.LocalPlayer
       local character = player.Character or player.CharacterAdded:Wait()
       if character and character:FindFirstChild("HumanoidRootPart") then
character.HumanoidRootPart.CFrame = CFrame.new(457, 10, 100)
       else
           warn("No se encontró el HumanoidRootPart para el teletransporte.")
       end
   end,
})