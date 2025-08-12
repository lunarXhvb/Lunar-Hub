local LUNARLibrary = (loadstring(Game:HttpGet("")))();
if LUNARLibrary:LoadAnimation() then
	LUNARLibrary:StartLoad();
end;
if LUNARLibrary:LoadAnimation() then
	LUNARLibrary:Loaded();
end;
local UserInputService = game:GetService("UserInputService")
local Window = LUNARLibrary:Window({
	SubTitle = "",
	Size = game:GetService("UserInputService").TouchEnabled and UDim2.new(0, 380, 0, 260) or UDim2.new(0, 500, 0, 320),
	TabWidth = 140
})
local Information = Window:Tab("Information", "rbxassetid://128891143813807");
local General = Window:Tab("Main", "rbxassetid://10723407389");
local Tab3 = Window:Tab("Farming", "rbxassetid://10723415335");
local Tab4 = Window:Tab("Items", "rbxassetid://10709782497");
local Tab5 = Window:Tab("Setting", "rbxassetid://10734950309");
local Tab6 = Window:Tab("Local Player", "rbxassetid://10747373176");
local Tab7 = Window:Tab("Hold Skill", "rbxassetid://10734984606");
local Settings = Window:Tab("Setting", "rbxassetid://98216376967992");

Information:Seperator("Annoucements")
Info = Information:Label("Important")

General:Seperator("Main");
Time = General:Label("Executor Time");
function LUNARLibraryTime()
	local GameTime = math.floor(workspace.DistributedGameTime + 0.5);
	local Hour = math.floor(GameTime / 60 ^ 2) % 24;
	local Minute = math.floor(GameTime / 60 ^ 1) % 60;
	local Second = math.floor(GameTime / 60 ^ 0) % 60;
	Time:Set("[Game Time] : Hours : " .. Hour .. " Min : " .. Minute .. " Sec : " .. Second);
end;
spawn(function()
	while task.wait() do
		pcall(function()
			LUNARLibraryTime();
		end);
	end;
end);
Client = General:Label("Local Status");
function LUNARLibraryClient()
	local Fps = workspace:GetRealPhysicsFPS();
	Client:Set("[Fps] : " .. Fps);
end;
spawn(function()
	while true do
		wait(0.1);
		LUNARLibraryClient();
	end;
end);
Client1 = General:Label("Local Status");
function LUNARLibraryClient1()
	local Ping = (game:GetService("Stats")).Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[Ping] : " .. Ping);
end;
spawn(function()
	while true do
		wait(0.1);
		LUNARLibraryClient1();
	end;
end);
General:Button("Copy Discord Link", function()
	setclipboard("");
	LUNARLibrary:Notify("Copied!", 3);
end);
General:Label("Status : label");

General:Seperator("Dropdown");
General:Dropdown("Type", {"Option 1", "Option 2", "Option 3"}, nil, function(selected)
    print("Selected number:", selected)
end)

General:Seperator("Toggle");
General:Toggle("Type", {"Option 1", "Option 2", "Option 3"}, "Toggle with desc", function(selected)
    print("Selected number:", selected)
end)
General:Toggle("Type", {"Option 1", "Option 2", "Option 3"}, nil, function(selected)
    print("Selected number:", selected)
end)

General:Seperator("Slider");
General:Slider("Farm Distance", 0, 50, 25, function(value)
    print("Selected Farm Distance:", value)
end)

General:Line();
local JobLabel = General:Label("Server Job ID :")

General:Button("Copy Server Job ID", function()
	setclipboard("https://discord.gg/FmMuvkaWvG");
	LUNARLibrary:Notify("Copied!", 3);
end)

General:Textbox("Enter Server Job ID", true, function(value)
    print("Entered Job ID:", value)
end)

General:Button("Join Server", function()
    print("Teleporting to Job ID...") 
end)
