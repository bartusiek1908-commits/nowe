local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Yonkoo Script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Jebac Disa",
   LoadingSubtitle = "Orka",
   ShowText = "Yonkoo", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Yonkoo"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
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

local Tab = Window:CreateTab("Auto Farm", 4483362458) -- Title, Image
local Section = Tab:CreateSection("UwU")
local Toggle = Tab:CreateToggle({
   Name = "Auto Wash",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})






local Tab = Window:CreateTab("Energy", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Section Example")
local Button = Tab:CreateButton({
   Name = "Bloxy Cola",
   Callback = function()
      local Player = game.Players.LocalPlayer
      local Character = Player.Character
      if not Character or not Character:FindFirstChild("HumanoidRootPart") then
         print("Błąd: Postać lub HumanoidRootPart nie znalezione.")
         return
      end
      
      local HumanoidRootPart = Character.HumanoidRootPart
      local SavedCFrame = HumanoidRootPart.CFrame -- Zapisanie pozycji przed akcją
      
      print("Zapisano pozycję.")
      
      -- Wykonaj akcję Remote (Kupowanie/Teleportacja)
      local args = {
         "BuyBloxBull",
         workspace:WaitForChild("Vendors"):WaitForChild("Vendor_BloxBull_1")
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))
      
      print("Wysłano FireServer...")
      
      -- Poczekaj, aby akcja serwera się wykonała (dostosuj czas, jeśli trzeba)
      wait(0.5) 
      
      -- Teleportuj postać z powrotem do zapisanej pozycji
      HumanoidRootPart.CFrame = SavedCFrame
      
      print("Powrót na poprzednią pozycję zakończony.")
   end,
})
   -- The function that takes place when the button is pressed
local Divider = Tab:CreateDivider()

Rayfield:LoadConfiguration()
