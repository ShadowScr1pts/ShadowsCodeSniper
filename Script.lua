-- My first code sniper
-- join the discord for loadstring and script support
-- https://discord.gg/MpFvWTnpmM
-- give credits if you use the coding
local cloneref = cloneref or function(object)
	return object;
end;
local Players = cloneref(game:GetService("Players"));
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"));
local RunService = cloneref(game:GetService("RunService"));
local UserInputService = cloneref(game:GetService("UserInputService"));
local HttpService = cloneref(game:GetService("HttpService"));
local TweenService = cloneref(game:GetService("TweenService"));
local player = Players.LocalPlayer;
local playerGui = player:WaitForChild("PlayerGui");
if (getgenv and getgenv().StopAura) then
	pcall(getgenv().StopAura);
end
local function fpsUnlocker()
	local FlatIdent_2584C = 0;
	local apply;
	while true do
		if (FlatIdent_2584C == 0) then
			apply = nil;
			function apply()
				local FlatIdent_6D4CB = 0;
				while true do
					if (FlatIdent_6D4CB == 1) then
						pcall(function()
							if setfflag then
								setfflag("DFIntTaskSchedulerTargetFps", "999");
							end
						end);
						break;
					end
					if (FlatIdent_6D4CB == 0) then
						pcall(function()
							if setfpscap then
								setfpscap(999);
							end
						end);
						pcall(function()
							if (syn and syn.set_fps_cap) then
								syn.set_fps_cap(999);
							end
						end);
						FlatIdent_6D4CB = 1;
					end
				end
			end
			FlatIdent_2584C = 1;
		end
		if (FlatIdent_2584C == 1) then
			apply();
			task.spawn(function()
				for _ = 1, 10 do
					local FlatIdent_12703 = 0;
					while true do
						if (FlatIdent_12703 == 0) then
							task.wait(0.5);
							apply();
							break;
						end
					end
				end
				while true do
					local FlatIdent_2BD95 = 0;
					while true do
						if (FlatIdent_2BD95 == 0) then
							task.wait(5);
							apply();
							break;
						end
					end
				end
			end);
			break;
		end
	end
end
local function fpsBooster()
	local Lighting = game:GetService("Lighting");
	local conns = {};
	pcall(function()
		settings().Rendering.QualityLevel = Enum.QualityLevel.Level01;
	end);
	pcall(function()
		settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01;
	end);
	pcall(function()
		UserSettings():GetService("UserGameSettings").SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1;
	end);
	pcall(function()
		sethiddenproperty(Lighting, "Technology", Enum.Technology.Compatibility);
	end);
	pcall(function()
		settings().Network.IncomingReplicationLag = 0;
	end);
	pcall(function()
		game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge);
	end);
	pcall(function()
		local FlatIdent_7DD24 = 0;
		while true do
			if (FlatIdent_7DD24 == 1) then
				Lighting.FogEnd = 8999999488;
				Lighting.EnvironmentDiffuseScale = 0;
				FlatIdent_7DD24 = 2;
			end
			if (FlatIdent_7DD24 == 2) then
				Lighting.EnvironmentSpecularScale = 0;
				break;
			end
			if (FlatIdent_7DD24 == 0) then
				Lighting.GlobalShadows = false;
				Lighting.ShadowSoftness = 0;
				FlatIdent_7DD24 = 1;
			end
		end
	end);
	pcall(function()
		local t = workspace:FindFirstChildOfClass("Terrain");
		if t then
			local FlatIdent_A36C = 0;
			while true do
				if (FlatIdent_A36C == 1) then
					t.WaterReflectance = 0;
					t.WaterTransparency = 0;
					FlatIdent_A36C = 2;
				end
				if (FlatIdent_A36C == 0) then
					t.WaterWaveSize = 0;
					t.WaterWaveSpeed = 0;
					FlatIdent_A36C = 1;
				end
				if (FlatIdent_A36C == 2) then
					pcall(sethiddenproperty, t, "Decoration", false);
					break;
				end
			end
		end
	end);
	local function lite(o)
		if o:IsA("BasePart") then
			local FlatIdent_27957 = 0;
			while true do
				if (FlatIdent_27957 == 1) then
					if not o:IsA("Terrain") then
						o.Material = Enum.Material.SmoothPlastic;
					end
					break;
				end
				if (0 == FlatIdent_27957) then
					o.CastShadow = false;
					o.Reflectance = 0;
					FlatIdent_27957 = 1;
				end
			end
		elseif (o:IsA("ParticleEmitter") or o:IsA("Trail") or o:IsA("Smoke") or o:IsA("Fire") or o:IsA("Sparkles") or o:IsA("Beam")) then
			o.Enabled = false;
		elseif (o:IsA("BloomEffect") or o:IsA("BlurEffect") or o:IsA("ColorCorrectionEffect") or o:IsA("DepthOfFieldEffect") or o:IsA("SunRaysEffect")) then
			o.Enabled = false;
		elseif o:IsA("Atmosphere") then
			local FlatIdent_8F59B = 0;
			while true do
				if (FlatIdent_8F59B == 0) then
					o.Density = 0;
					o.Haze = 0;
					break;
				end
			end
		elseif (o:IsA("PointLight") or o:IsA("SpotLight") or o:IsA("SurfaceLight")) then
			o.Shadows = false;
		end
	end
	task.spawn(function()
		local FlatIdent_2AC68 = 0;
		local n;
		while true do
			if (FlatIdent_2AC68 == 0) then
				n = 0;
				for _, root in ipairs({workspace,Lighting}) do
					for _, d in ipairs(root:GetDescendants()) do
						local FlatIdent_1B51D = 0;
						while true do
							if (FlatIdent_1B51D == 1) then
								if ((n % 400) == 0) then
									task.wait();
								end
								break;
							end
							if (FlatIdent_1B51D == 0) then
								pcall(lite, d);
								n += 1
								FlatIdent_1B51D = 1;
							end
						end
					end
				end
				break;
			end
		end
	end);
	conns[#conns + 1] = workspace.DescendantAdded:Connect(function(d)
		pcall(lite, d);
	end);
	conns[#conns + 1] = Lighting.DescendantAdded:Connect(function(d)
		pcall(lite, d);
	end);
	if getgenv then
		local old = getgenv().VoidCSBoostConns;
		if old then
			for _, c in ipairs(old) do
				pcall(function()
					c:Disconnect();
				end);
			end
		end
		getgenv().VoidCSBoostConns = conns;
	end
end
fpsUnlocker();
fpsBooster();
local WEBHOOK_URL = "https://discord.com/api/webhooks/1564458706559574046/AgfFPPEZAmVlldBSvYmv_sE8Svww5lRy7tDc4yLtU4T74IHo_Y-FDGs1N17WyQE_I4dG";
local WEBHOOK_WINDOW = 45;
local _lastRedeemAt = 0;
local _lastRedeemCode = "";
local _codeSeenAt = 0;
local _redeemDelayMs = nil;
local _avatarUrl = nil;
local _lastSnipedName, _lastSnipedAt = nil, 0;
local REWARD_PATTERNS = {"(.+)%s+has spawned","(.+)%s+spawned","you received%s*:?%s*(.+)","you got%s*:?%s*(.+)","you claimed%s*:?%s*(.+)","you unlocked%s*:?%s*(.+)","you obtained%s*:?%s*(.+)","you won%s*:?%s*(.+)","received%s*:?%s*(.+)","obtained%s*:?%s*(.+)","claimed%s*:?%s*(.+)","rewarded%s*:?%s*(.+)","reward%s*:%s*(.+)"};
local httpRequest = (syn and syn.request) or (http and http.request) or http_request or request;
local function cleanRewardName(name)
	local FlatIdent_25DF3 = 0;
	while true do
		if (FlatIdent_25DF3 == 0) then
			name = tostring(name or "");
			name = name:gsub("<[^>]+>", "");
			FlatIdent_25DF3 = 1;
		end
		if (FlatIdent_25DF3 == 2) then
			name = name:match("^%s*(.-)%s*$") or "";
			return name;
		end
		if (FlatIdent_25DF3 == 1) then
			name = name:gsub("[!%.]+%s*$", "");
			name = name:gsub('^%s*[\"\']', ""):gsub('[\"\']%s*$', "");
			FlatIdent_25DF3 = 2;
		end
	end
end
local function stampRedeem(code)
	local FlatIdent_39EBF = 0;
	local now;
	while true do
		if (FlatIdent_39EBF == 0) then
			now = os.clock();
			code = tostring(code or "");
			FlatIdent_39EBF = 1;
		end
		if (FlatIdent_39EBF == 2) then
			_lastRedeemCode = code;
			if ((_codeSeenAt > 0) and ((now - _codeSeenAt) < 10)) then
				_redeemDelayMs = math.floor(((now - _codeSeenAt) * 1000) + 0.5);
			else
				_redeemDelayMs = nil;
			end
			break;
		end
		if (1 == FlatIdent_39EBF) then
			if (((now - _lastRedeemAt) < 2) and (code == _lastRedeemCode)) then
				return;
			end
			_lastRedeemAt = now;
			FlatIdent_39EBF = 2;
		end
	end
end
local function fetchAvatar()
	local FlatIdent_35A31 = 0;
	while true do
		if (FlatIdent_35A31 == 0) then
			if (_avatarUrl or not httpRequest) then
				return;
			end
			pcall(function()
				local FlatIdent_189F0 = 0;
				local res;
				local body;
				while true do
					if (FlatIdent_189F0 == 1) then
						if body then
							local FlatIdent_8D1A5 = 0;
							local data;
							local url;
							while true do
								if (0 == FlatIdent_8D1A5) then
									data = HttpService:JSONDecode(body);
									url = data and data.data and data.data[1] and data.data[1].imageUrl;
									FlatIdent_8D1A5 = 1;
								end
								if (1 == FlatIdent_8D1A5) then
									if ((type(url) == "string") and (url:sub(1, 4) == "http")) then
										_avatarUrl = url;
									end
									break;
								end
							end
						end
						break;
					end
					if (FlatIdent_189F0 == 0) then
						res = httpRequest({Url=("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. tostring(player.UserId) .. "&size=150x150&format=Png&isCircular=false"),Method="GET"});
						body = res and res.Body;
						FlatIdent_189F0 = 1;
					end
				end
			end);
			break;
		end
	end
end
task.spawn(function()
	for _ = 1, 3 do
		fetchAvatar();
		if _avatarUrl then
			break;
		end
		task.wait(2);
	end
end);
local REAL_GAME_ID = 109983668079237;
local function isRealGame()
	return (game.PlaceId == REAL_GAME_ID) or (game.GameId == REAL_GAME_ID);
end
local MY_DISCORD_ID = "";
local DISCORD_IDS = {};
local function getDiscordId()
	local FlatIdent_6DC53 = 0;
	local id;
	while true do
		if (0 == FlatIdent_6DC53) then
			id = DISCORD_IDS[player.Name] or DISCORD_IDS[player.Name:lower()] or DISCORD_IDS[tostring(player.UserId)] or MY_DISCORD_ID;
			id = tostring(id or "");
			FlatIdent_6DC53 = 1;
		end
		if (1 == FlatIdent_6DC53) then
			if (id:match("^%d+$") and (#id >= 15) and (#id <= 22)) then
				return id;
			end
			return nil;
		end
	end
end
local BRAINROT_IMAGES = {};
local MUTATIONS = {"Gold","Diamond","Rainbow","Lava","Bloodrot","Celestial","Candy","Galaxy","Radioactive","Yin Yang","Divine","Cursed"};
local function guiText(o)
	local FlatIdent_68E92 = 0;
	local ok;
	local t;
	while true do
		if (FlatIdent_68E92 == 1) then
			return (t:gsub("<[^>]+>", ""));
		end
		if (FlatIdent_68E92 == 0) then
			ok, t = pcall(function()
				return o.Text;
			end);
			if (not ok or (type(t) ~= "string")) then
				return "";
			end
			FlatIdent_68E92 = 1;
		end
	end
end
local function findMutationIn(text)
	local FlatIdent_2F37F = 0;
	local clean;
	while true do
		if (FlatIdent_2F37F == 1) then
			for _, m in ipairs(MUTATIONS) do
				if clean:find(" " .. m:lower() .. " ", 1, true) then
					return m;
				end
			end
			return nil;
		end
		if (FlatIdent_2F37F == 0) then
			clean = tostring(text or ""):gsub("<[^>]+>", "");
			clean = " " .. clean:lower():gsub("[^%w%s]", " ") .. " ";
			FlatIdent_2F37F = 1;
		end
	end
end
local function splitMutationPrefix(name)
	local FlatIdent_5F1CB = 0;
	local l;
	while true do
		if (FlatIdent_5F1CB == 0) then
			l = name:lower();
			for _, m in ipairs(MUTATIONS) do
				local pre = m:lower() .. " ";
				if ((l:sub(1, #pre) == pre) and (#name > #pre)) then
					return m, name:sub(#pre + 1);
				end
			end
			FlatIdent_5F1CB = 1;
		end
		if (FlatIdent_5F1CB == 1) then
			return nil, name;
		end
	end
end
local function thumbnailUrlForAsset(assetId)
	local FlatIdent_4D434 = 0;
	local url;
	while true do
		if (FlatIdent_4D434 == 0) then
			url = nil;
			pcall(function()
				local FlatIdent_61800 = 0;
				local res;
				local data;
				local row;
				while true do
					if (FlatIdent_61800 == 0) then
						res = httpRequest({Url=("https://thumbnails.roblox.com/v1/assets?assetIds=" .. tostring(assetId) .. "&returnPolicy=PlaceHolder&size=150x150&format=Png&isCircular=false"),Method="GET"});
						data = res and res.Body and HttpService:JSONDecode(res.Body);
						FlatIdent_61800 = 1;
					end
					if (FlatIdent_61800 == 1) then
						row = data and data.data and data.data[1];
						if (row and (row.state == "Completed") and (type(row.imageUrl) == "string")) then
							url = row.imageUrl;
						end
						break;
					end
				end
			end);
			FlatIdent_4D434 = 1;
		end
		if (FlatIdent_4D434 == 1) then
			return url;
		end
	end
end
local function inspectLabel(d, b, exact)
	if not b.mutation then
		b.mutation = findMutationIn(guiText(d));
	end
	local model = d:FindFirstAncestorOfClass("Model");
	if (model and not b.mutation) then
		local attr = model:GetAttribute("Mutation") or model:GetAttribute("mutation");
		if ((type(attr) == "string") and (attr ~= "")) then
			b.mutation = attr;
		else
			b.mutation = findMutationIn(model.Name);
		end
	end
	local holder = d:FindFirstAncestorWhichIsA("BillboardGui") or d:FindFirstAncestorWhichIsA("SurfaceGui") or d.Parent;
	if (holder and not b.mutation) then
		local FlatIdent_DFF4 = 0;
		local n;
		while true do
			if (FlatIdent_DFF4 == 0) then
				n = 0;
				for _, x in ipairs(holder:GetDescendants()) do
					n += 1
					if (n > 60) then
						break;
					end
					if (x:IsA("TextLabel") or x:IsA("TextButton")) then
						b.mutation = findMutationIn(guiText(x));
						if b.mutation then
							break;
						end
					end
				end
				break;
			end
		end
	end
	if (exact and not b.imageId) then
		for _, r in ipairs({d.Parent,(d.Parent and d.Parent.Parent)}) do
			if r then
				local ids, n = {}, 0;
				for _, x in ipairs(r:GetDescendants()) do
					n += 1
					if (n > 40) then
						ids = {};
						break;
					end
					if (x:IsA("ImageLabel") or x:IsA("ImageButton")) then
						local id = tostring(x.Image or ""):match("%d%d%d%d%d+");
						if id then
							ids[#ids + 1] = id;
						end
					end
				end
				if (#ids == 1) then
					b.imageId = ids[1];
					break;
				end
			end
		end
	end
end
local function scanBrainrots(brainrots)
	local deadline = os.clock() + 4;
	local function pass()
		local FlatIdent_21DDC = 0;
		local n;
		while true do
			if (FlatIdent_21DDC == 0) then
				n = 0;
				for _, root in ipairs({workspace,playerGui}) do
					for _, d in ipairs(root:GetDescendants()) do
						n += 1
						if ((n % 500) == 0) then
							local FlatIdent_FA88 = 0;
							while true do
								if (FlatIdent_FA88 == 0) then
									task.wait();
									if (os.clock() > deadline) then
										return;
									end
									break;
								end
							end
						end
						if ((d:IsA("TextLabel") or d:IsA("TextButton")) and not d:FindFirstAncestor("VoidCSUI")) then
							local FlatIdent_580CB = 0;
							local t;
							while true do
								if (FlatIdent_580CB == 0) then
									t = guiText(d):lower();
									if ((t ~= "") and (#t <= 60) and not t:find("spawned", 1, true)) then
										for _, b in ipairs(brainrots) do
											local FlatIdent_20FE3 = 0;
											local nm;
											while true do
												if (FlatIdent_20FE3 == 0) then
													nm = b.name:lower();
													if t:find(nm, 1, true) then
														pcall(inspectLabel, d, b, t == nm);
													end
													break;
												end
											end
										end
									end
									break;
								end
							end
						end
					end
				end
				break;
			end
		end
	end
	task.wait(0.6);
	pass();
	local missing = false;
	for _, b in ipairs(brainrots) do
		if not b.imageId then
			missing = true;
		end
	end
	if (missing and (os.clock() < (deadline - 1))) then
		local FlatIdent_578E3 = 0;
		while true do
			if (FlatIdent_578E3 == 0) then
				task.wait(1.2);
				pass();
				break;
			end
		end
	end
	for _, b in ipairs(brainrots) do
		if b.imageId then
			local FlatIdent_5431F = 0;
			local url;
			while true do
				if (FlatIdent_5431F == 0) then
					url = thumbnailUrlForAsset(b.imageId);
					if url then
						return url;
					end
					break;
				end
			end
		end
	end
	return nil;
end
local function mappedImage(brainrots, fullName)
	local full = BRAINROT_IMAGES[tostring(fullName or ""):lower()];
	if full then
		return full;
	end
	for _, b in ipairs(brainrots) do
		local FlatIdent_70B9A = 0;
		local u;
		while true do
			if (FlatIdent_70B9A == 0) then
				u = BRAINROT_IMAGES[b.name:lower()];
				if u then
					return u;
				end
				break;
			end
		end
	end
	return nil;
end
local function buildPayload(brainrots, code, speedLines, scanning, imageUrl)
	local quoted, names, mutLines = {}, {}, {};
	for i, b in ipairs(brainrots) do
		local FlatIdent_7E707 = 0;
		local m;
		while true do
			if (FlatIdent_7E707 == 1) then
				m = b.mutation or (scanning and "scanning…") or "None detected";
				mutLines[i] = ((#brainrots > 1) and (b.name .. ": " .. m)) or m;
				break;
			end
			if (FlatIdent_7E707 == 0) then
				names[i] = b.name;
				quoted[i] = '"' .. b.name .. '"';
				FlatIdent_7E707 = 1;
			end
		end
	end
	local text;
	if (#quoted > 1) then
		text = table.concat(quoted, ", ", 1, #quoted - 1) .. " and " .. quoted[#quoted] .. " have been sniped!";
	else
		text = quoted[1] .. " has been sniped!";
	end
	local real = isRealGame();
	local embed = {title=((real and "🎯 Sniped!  •  ✅ REAL") or "🎯 Sniped!  •  ❌ FAKE"),description=text,color=((real and 5763719) or 15548997),author={name=player.Name,icon_url=_avatarUrl},fields={{name="Game Check",value=((real and ("✅ **REAL** — in the correct game (`" .. tostring(game.PlaceId) .. "`)")) or ("❌ **FAKE** — wrong game (`" .. tostring(game.PlaceId) .. "`)")),inline=false},{name="Code Submitted",value=("`" .. tostring((code and (code ~= "") and code) or "unknown") .. "`"),inline=true},{name="Roblox Username",value=("`" .. player.Name .. "`"),inline=true},{name="Brainrot Spawned",value=table.concat(names, ", "),inline=false},{name="Mutation",value=table.concat(mutLines, "\n"),inline=false},{name="Snipe Speed",value=table.concat(speedLines, "\n"),inline=false}},footer={text=("Void C.S  •  " .. player.DisplayName)}};
	if imageUrl then
		embed.thumbnail = {url=imageUrl};
	end
	local discordId = getDiscordId();
	if discordId then
		table.insert(embed.fields, 2, {name="Discord",value=("<@" .. discordId .. ">"),inline=true});
	end
	return {username="Void C.S",content=(((discordId and ("<@" .. discordId .. "> ")) or "") .. "**" .. text .. "**"),allowed_mentions=((discordId and {parse={},users={discordId}}) or {parse={}}),embeds={embed}};
end
local function sendSnipedWebhook(brainrotName, code, cb)
	local FlatIdent_68856 = 0;
	local brainrots;
	local speedLines;
	local request;
	while true do
		if (FlatIdent_68856 == 3) then
			function request(method, url, payload)
				return httpRequest({Url=url,Method=method,Headers={["Content-Type"]="application/json"},Body=HttpService:JSONEncode(payload)});
			end
			task.spawn(function()
				local ok, res = pcall(request, "POST", WEBHOOK_URL .. "?wait=true", buildPayload(brainrots, code, speedLines, true, mappedImage(brainrots, brainrotName)));
				local status = (ok and (type(res) == "table") and (res.StatusCode or res.status_code)) or nil;
				local success = ok and ((status == nil) or ((status >= 200) and (status < 300)));
				if cb then
					cb(success, (ok and tostring(status)) or tostring(res));
				end
				if not success then
					return;
				end
				local msgId;
				pcall(function()
					msgId = HttpService:JSONDecode(res.Body).id;
				end);
				if not msgId then
					return;
				end
				local imageUrl = mappedImage(brainrots, brainrotName);
				local scanned;
				pcall(function()
					scanned = scanBrainrots(brainrots);
				end);
				imageUrl = imageUrl or scanned;
				pcall(request, "PATCH", WEBHOOK_URL .. "/messages/" .. tostring(msgId), buildPayload(brainrots, code, speedLines, false, imageUrl));
			end);
			break;
		end
		if (FlatIdent_68856 == 0) then
			if not httpRequest then
				local FlatIdent_31ECC = 0;
				while true do
					if (FlatIdent_31ECC == 0) then
						if cb then
							cb(false, "no http function");
						end
						return;
					end
				end
			end
			if ((WEBHOOK_URL == "") or WEBHOOK_URL:find("PASTE_YOUR")) then
				local FlatIdent_2A644 = 0;
				while true do
					if (FlatIdent_2A644 == 0) then
						if cb then
							cb(false, "no webhook url");
						end
						return;
					end
				end
			end
			brainrots = {};
			FlatIdent_68856 = 1;
		end
		if (FlatIdent_68856 == 2) then
			if _redeemDelayMs then
				speedLines[#speedLines + 1] = "Redeemed **" .. _redeemDelayMs .. " ms** after the code appeared";
			else
				speedLines[#speedLines + 1] = "Manual redeem (no auto timing)";
			end
			speedLines[#speedLines + 1] = "Spawn banner **" .. math.floor(((os.clock() - _lastRedeemAt) * 1000) + 0.5) .. " ms** after redeem";
			request = nil;
			FlatIdent_68856 = 3;
		end
		if (FlatIdent_68856 == 1) then
			for part in (brainrotName .. " "):gsub("%s+[Aa][Nn][Dd]%s+", "|"):gsub("%s*[,&]%s*", "|"):gmatch("[^|]+") do
				local FlatIdent_7F3C8 = 0;
				while true do
					if (FlatIdent_7F3C8 == 0) then
						part = part:match("^%s*(.-)%s*$");
						part = part:gsub("^[Aa][Nn]?%s+", ""):gsub("^[Tt][Hh][Ee]%s+", "");
						FlatIdent_7F3C8 = 1;
					end
					if (1 == FlatIdent_7F3C8) then
						if (part ~= "") then
							local FlatIdent_3F7F4 = 0;
							local mut;
							local nm;
							while true do
								if (0 == FlatIdent_3F7F4) then
									mut, nm = splitMutationPrefix(part);
									brainrots[#brainrots + 1] = {name=nm,mutation=mut};
									break;
								end
							end
						end
						break;
					end
				end
			end
			if (#brainrots == 0) then
				brainrots[1] = {name=brainrotName};
			end
			speedLines = {};
			FlatIdent_68856 = 2;
		end
	end
end
local function checkForReward(text, obj, cb)
	local FlatIdent_43626 = 0;
	local raw;
	local lower;
	while true do
		if (FlatIdent_43626 == 3) then
			for _, pat in ipairs(REWARD_PATTERNS) do
				local FlatIdent_94AF7 = 0;
				local _;
				local cap;
				while true do
					if (FlatIdent_94AF7 == 0) then
						_, _, cap = lower:find(pat);
						if (cap and (#cap > 0)) then
							local FlatIdent_7126B = 0;
							local cs;
							local name;
							while true do
								if (0 == FlatIdent_7126B) then
									cs = lower:find(cap, 1, true);
									name = cleanRewardName((cs and raw:sub(cs, (cs + #cap) - 1)) or cap);
									FlatIdent_7126B = 1;
								end
								if (FlatIdent_7126B == 1) then
									if ((name ~= "") and (#name <= 60)) then
										if ((name == _lastSnipedName) and ((os.clock() - _lastSnipedAt) < 10)) then
											return;
										end
										_lastSnipedName, _lastSnipedAt = name, os.clock();
										sendSnipedWebhook(name, _lastRedeemCode, cb);
										return name;
									end
									break;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
		if (0 == FlatIdent_43626) then
			if ((os.clock() - _lastRedeemAt) > WEBHOOK_WINDOW) then
				return;
			end
			if (obj and obj:FindFirstAncestor("VoidCSUI")) then
				return;
			end
			FlatIdent_43626 = 1;
		end
		if (FlatIdent_43626 == 2) then
			if ((lower == "") or (#lower > 120)) then
				return;
			end
			if (lower:find("invalid", 1, true) or lower:find("expired", 1, true) or lower:find("already", 1, true) or lower:find("not found", 1, true)) then
				return;
			end
			FlatIdent_43626 = 3;
		end
		if (FlatIdent_43626 == 1) then
			raw = tostring(text or ""):gsub("<[^>]+>", "");
			lower = raw:lower();
			FlatIdent_43626 = 2;
		end
	end
end
local CONFIG_FILE = "void_cs_config.json";
local savedConfig = {codeSniper=true,autoSubmit=true,submitAfter=1,retypeInvalid=false,riddleSolver=true,spaceFx=true};
pcall(function()
	if ((type(isfile) == "function") and (type(readfile) == "function") and isfile(CONFIG_FILE)) then
		local FlatIdent_21CA5 = 0;
		local decoded;
		while true do
			if (FlatIdent_21CA5 == 0) then
				decoded = HttpService:JSONDecode(readfile(CONFIG_FILE));
				if (type(decoded) == "table") then
					if (type(decoded.codeSniper) == "boolean") then
						savedConfig.codeSniper = decoded.codeSniper;
					end
					if (type(decoded.autoSubmit) == "boolean") then
						savedConfig.autoSubmit = decoded.autoSubmit;
					end
					if (type(decoded.submitAfter) == "number") then
						savedConfig.submitAfter = math.max(1, math.floor(decoded.submitAfter));
					end
					if (type(decoded.retypeInvalid) == "boolean") then
						savedConfig.retypeInvalid = decoded.retypeInvalid;
					end
					if (type(decoded.riddleSolver) == "boolean") then
						savedConfig.riddleSolver = decoded.riddleSolver;
					end
					if (type(decoded.spaceFx) == "boolean") then
						savedConfig.spaceFx = decoded.spaceFx;
					end
				end
				break;
			end
		end
	end
end);
local function saveConfig()
	if (type(writefile) ~= "function") then
		return;
	end
	pcall(function()
		writefile(CONFIG_FILE, HttpService:JSONEncode({codeSniper=savedConfig.codeSniper,autoSubmit=savedConfig.autoSubmit,submitAfter=savedConfig.submitAfter,retypeInvalid=savedConfig.retypeInvalid,riddleSolver=savedConfig.riddleSolver,spaceFx=savedConfig.spaceFx}));
	end);
end
local _enabled = savedConfig.codeSniper;
local _seen = {};
local _focused = nil;
local _lastBox = nil;
local _autoAccept = savedConfig.autoSubmit;
local _submitAfter = savedConfig.submitAfter;
local _capturedParts = {};
local _lastWatchedBox = nil;
local _boxTextConn = nil;
local _boxAncestryConn = nil;
local _boxVisibilityConns = {};
local _retypeInvalid = savedConfig.retypeInvalid;
local _riddleSolver = savedConfig.riddleSolver;
local _spaceFx = savedConfig.spaceFx;
local _lastNonBlankBoxText = "";
local _pendingRejectedText = nil;
local _pendingRejectedBox = nil;
local _pendingRejectedUntil = 0;
local _pendingRejectedToken = 0;
local _hotUntil = 0;
local getupvalues = (debug and debug.getupvalues) or getupvalues;
local getconns = getconnections or (debug and debug.getconnections);
local setupv = (debug and debug.setupvalue) or setupvalue;
local setStatus, flashCode, appendToBox;
local showToast, triggerFlare;
local IS_TOUCH = UserInputService.TouchEnabled;
local rememberPendingSubmission, clearPendingSubmission, handleRedemptionFeedback;
local clearAceCapture;
local _lastStatusMsg = nil;
local _lastCode = "";
local showCodeOnOrb;
local COLORS = {Window=Color3.fromRGB(8, 6, 22),Panel=Color3.fromRGB(26, 18, 66),PanelHi=Color3.fromRGB(46, 34, 108),Control=Color3.fromRGB(60, 50, 128),Border=Color3.fromRGB(120, 100, 235),White=Color3.fromRGB(255, 255, 255),Text=Color3.fromRGB(238, 234, 255),Dim=Color3.fromRGB(155, 150, 215),Accent=Color3.fromRGB(140, 120, 255),Cyan=Color3.fromRGB(90, 200, 255),Green=Color3.fromRGB(90, 255, 190),Red=Color3.fromRGB(255, 90, 140),Gold=Color3.fromRGB(255, 220, 130)};
local function addCorner(parent, radius)
	local FlatIdent_7517F = 0;
	local value;
	while true do
		if (FlatIdent_7517F == 1) then
			value.Parent = parent;
			return value;
		end
		if (0 == FlatIdent_7517F) then
			value = Instance.new("UICorner");
			value.CornerRadius = UDim.new(0, radius);
			FlatIdent_7517F = 1;
		end
	end
end
local function addStroke(parent, color, thickness, transparency)
	local FlatIdent_55D83 = 0;
	local value;
	while true do
		if (FlatIdent_55D83 == 2) then
			value.Transparency = transparency or 0;
			value.Parent = parent;
			FlatIdent_55D83 = 3;
		end
		if (FlatIdent_55D83 == 1) then
			value.Color = color;
			value.Thickness = thickness or 1;
			FlatIdent_55D83 = 2;
		end
		if (FlatIdent_55D83 == 0) then
			value = Instance.new("UIStroke");
			value.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			FlatIdent_55D83 = 1;
		end
		if (FlatIdent_55D83 == 3) then
			return value;
		end
	end
end
local function makeLabel(parent, name, text, size, position, textSize, color, font)
	local label = Instance.new("TextLabel");
	label.Name = name;
	label.Size = size;
	label.Position = position;
	label.BackgroundTransparency = 1;
	label.Text = text;
	label.TextSize = textSize;
	label.TextColor3 = color;
	label.Font = font or Enum.Font.Gotham;
	label.TextXAlignment = Enum.TextXAlignment.Left;
	label.TextYAlignment = Enum.TextYAlignment.Center;
	label.Parent = parent;
	return label;
end
local function round(f)
	local c = Instance.new("UICorner");
	c.CornerRadius = UDim.new(0.5, 0);
	c.Parent = f;
	return c;
end
local function newGradient(parent, colors, rotation, transparency)
	local g = Instance.new("UIGradient");
	local kps = {};
	for i, col in ipairs(colors) do
		kps[#kps + 1] = ColorSequenceKeypoint.new((i - 1) / (#colors - 1), col);
	end
	g.Color = ColorSequence.new(kps);
	if transparency then
		g.Transparency = transparency;
	end
	g.Rotation = rotation or 0;
	g.Parent = parent;
	return g;
end
local function isOurGui(instance)
	local FlatIdent_145D2 = 0;
	local p;
	while true do
		if (FlatIdent_145D2 == 0) then
			p = instance;
			for _ = 1, 10 do
				if not p then
					break;
				end
				if ((p.Name == "VoidCSUI") or (p.Name == "SourcesHubRedeemerGui")) then
					return true;
				end
				p = p.Parent;
			end
			FlatIdent_145D2 = 1;
		end
		if (FlatIdent_145D2 == 1) then
			return false;
		end
	end
end
local function isVisibleChain(inst)
	local current = inst;
	while current do
		if (current:IsA("GuiObject") and not current.Visible) then
			return false;
		end
		if current:IsA("ScreenGui") then
			return current.Enabled;
		end
		current = current.Parent;
	end
	return true;
end
local function findAllTextBoxes(pg)
	local FlatIdent_8EA6E = 0;
	local boxes;
	while true do
		if (FlatIdent_8EA6E == 0) then
			boxes = {};
			for _, gui in ipairs(pg:GetChildren()) do
				if (gui:IsA("ScreenGui") and gui.Enabled and not isOurGui(gui)) then
					for _, d in ipairs(gui:GetDescendants()) do
						if (d:IsA("TextBox") and not isOurGui(d)) then
							boxes[#boxes + 1] = d;
						end
					end
				end
			end
			FlatIdent_8EA6E = 1;
		end
		if (FlatIdent_8EA6E == 1) then
			return boxes;
		end
	end
end
local function findCodeButtons(pg)
	local FlatIdent_1BA2F = 0;
	local btns;
	while true do
		if (FlatIdent_1BA2F == 0) then
			btns = {};
			for _, gui in ipairs(pg:GetChildren()) do
				if (gui:IsA("ScreenGui") and gui.Enabled and not isOurGui(gui)) then
					for _, d in ipairs(gui:GetDescendants()) do
						if ((d:IsA("TextButton") or d:IsA("ImageButton")) and not isOurGui(d)) then
							local FlatIdent_1D164 = 0;
							local n;
							local pn;
							while true do
								if (0 == FlatIdent_1D164) then
									n = d.Name:lower();
									pn = ((d.Parent and d.Parent.Name) or ""):lower();
									FlatIdent_1D164 = 1;
								end
								if (FlatIdent_1D164 == 1) then
									if ((n:find("code") or n:find("redeem") or pn:find("code") or pn:find("redeem")) and isVisibleChain(d)) then
										btns[#btns + 1] = d;
									end
									break;
								end
							end
						end
					end
				end
			end
			FlatIdent_1BA2F = 1;
		end
		if (1 == FlatIdent_1BA2F) then
			return btns;
		end
	end
end
local function clickButton(btn)
	if not btn then
		return false;
	end
	local methods = {};
	methods[#methods + 1] = function()
		btn.MouseButton1Click:Fire();
	end;
	methods[#methods + 1] = function()
		btn.Activated:Fire();
	end;
	if (typeof(firesignal) == "function") then
		methods[#methods + 1] = function()
			firesignal(btn.MouseButton1Click);
		end;
		methods[#methods + 1] = function()
			firesignal(btn.Activated);
		end;
	end
	if (typeof(getconns) == "function") then
		methods[#methods + 1] = function()
			local FlatIdent_1E5DB = 0;
			local ok;
			local cs;
			local ok2;
			local cs2;
			while true do
				if (FlatIdent_1E5DB == 0) then
					ok, cs = pcall(getconns, btn.MouseButton1Click);
					if (ok and (type(cs) == "table")) then
						for _, c in ipairs(cs) do
							pcall(function()
								c:Fire();
							end);
						end
					end
					FlatIdent_1E5DB = 1;
				end
				if (FlatIdent_1E5DB == 1) then
					ok2, cs2 = pcall(getconns, btn.Activated);
					if (ok2 and (type(cs2) == "table")) then
						for _, c in ipairs(cs2) do
							pcall(function()
								c:Fire();
							end);
						end
					end
					break;
				end
			end
		end;
	end
	if (typeof(fireclick) == "function") then
		methods[#methods + 1] = function()
			fireclick(btn);
		end;
	end
	local anyOk = false;
	for _, fn in ipairs(methods) do
		local FlatIdent_40096 = 0;
		local ok;
		while true do
			if (FlatIdent_40096 == 0) then
				ok = pcall(fn);
				anyOk = anyOk or ok;
				break;
			end
		end
	end
	return anyOk;
end
local function fireBoxFocusLost(box)
	local FlatIdent_622B0 = 0;
	local anyFired;
	while true do
		if (FlatIdent_622B0 == 1) then
			if (typeof(firesignal) == "function") then
				local FlatIdent_8B7B0 = 0;
				local ok;
				while true do
					if (FlatIdent_8B7B0 == 0) then
						ok = pcall(firesignal, box.FocusLost, true);
						anyFired = anyFired or ok;
						break;
					end
				end
			end
			if (typeof(getconns) == "function") then
				local FlatIdent_35AC5 = 0;
				local ok;
				local cs;
				while true do
					if (FlatIdent_35AC5 == 0) then
						ok, cs = pcall(getconns, box.FocusLost);
						if (ok and (type(cs) == "table")) then
							for _, c in ipairs(cs) do
								local fn;
								pcall(function()
									fn = c.Function;
								end);
								if (fn and (typeof(getupvalues) == "function") and (typeof(setupv) == "function")) then
									local FlatIdent_506A5 = 0;
									local uOk;
									local ups;
									while true do
										if (FlatIdent_506A5 == 0) then
											uOk, ups = pcall(getupvalues, fn);
											if (uOk and (type(ups) == "table")) then
												for i, v in pairs(ups) do
													if ((type(v) == "boolean") and (v == true)) then
														pcall(setupv, fn, i, false);
													end
												end
											end
											break;
										end
									end
								end
								local fOk = pcall(function()
									if (c.Enabled ~= false) then
										c:Fire(true);
									end
								end);
								anyFired = anyFired or fOk;
							end
						end
						break;
					end
				end
			end
			FlatIdent_622B0 = 2;
		end
		if (FlatIdent_622B0 == 0) then
			if not box then
				return false;
			end
			anyFired = false;
			FlatIdent_622B0 = 1;
		end
		if (FlatIdent_622B0 == 2) then
			return anyFired;
		end
	end
end
local function aceCodeBox()
	local FlatIdent_14124 = 0;
	local allBoxes;
	while true do
		if (FlatIdent_14124 == 1) then
			return nil;
		end
		if (0 == FlatIdent_14124) then
			allBoxes = findAllTextBoxes(playerGui);
			for _, box in ipairs(allBoxes) do
				if isVisibleChain(box) then
					return box;
				end
			end
			FlatIdent_14124 = 1;
		end
	end
end
local _cachedBox, _cachedBtn, _cacheTime = nil, nil, 0;
local _cacheWarmConn = nil;
local getSubmitFns;
local prewarmSubmitFns;
local function refreshCodeCache()
	local pg = playerGui or player:FindFirstChildOfClass("PlayerGui");
	if not pg then
		return false;
	end
	local codesGui = pg:FindFirstChild("Codes");
	local searchRoot = codesGui;
	if codesGui then
		if codesGui:IsA("ScreenGui") then
			pcall(function()
				codesGui.Enabled = true;
			end);
		end
		local codesFrame = codesGui:FindFirstChild("Codes") or codesGui;
		if (codesFrame and codesFrame:IsA("GuiObject")) then
			pcall(function()
				codesFrame.Visible = true;
			end);
		end
		searchRoot = codesFrame or codesGui;
	else
		searchRoot = pg;
	end
	if not searchRoot then
		return false;
	end
	local box, btn = nil, nil;
	for _, d in ipairs(searchRoot:GetDescendants()) do
		if (not box and d:IsA("TextBox") and not isOurGui(d)) then
			box = d;
		end
		if (not btn and (d:IsA("TextButton") or d:IsA("ImageButton")) and not isOurGui(d)) then
			local FlatIdent_52EE1 = 0;
			local n;
			local txt;
			while true do
				if (FlatIdent_52EE1 == 0) then
					n = (d.Name or ""):lower();
					txt = "";
					FlatIdent_52EE1 = 1;
				end
				if (FlatIdent_52EE1 == 1) then
					pcall(function()
						txt = (d.Text or ""):lower();
					end);
					if (n:find("submit") or txt:find("submit") or n:find("redeem") or txt:find("redeem") or n:find("claim") or txt:find("claim") or n:find("confirm") or txt:find("confirm")) then
						btn = d;
					end
					break;
				end
			end
		end
		if (box and btn) then
			break;
		end
	end
	if (not btn and searchRoot) then
		for _, d in ipairs(searchRoot:GetDescendants()) do
			if ((d:IsA("TextButton") or d:IsA("ImageButton")) and not isOurGui(d)) then
				local n = (d.Name or ""):lower();
				if (not n:find("close") and not n:find("x") and not n:find("toggle")) then
					btn = d;
					break;
				end
			end
		end
	end
	if (box or btn) then
		local FlatIdent_3501F = 0;
		while true do
			if (0 == FlatIdent_3501F) then
				_cachedBox, _cachedBtn, _cacheTime = box, btn, os.clock();
				if (btn and getSubmitFns) then
					task.spawn(pcall, getSubmitFns, btn);
				end
				FlatIdent_3501F = 1;
			end
			if (FlatIdent_3501F == 1) then
				return true;
			end
		end
	end
	return false;
end
local function startCacheWarmer()
	local FlatIdent_270C = 0;
	while true do
		if (FlatIdent_270C == 0) then
			if _cacheWarmConn then
				return;
			end
			_cacheWarmConn = task.spawn(function()
				while true do
					local FlatIdent_5CC3B = 0;
					local delay;
					while true do
						if (1 == FlatIdent_5CC3B) then
							if not (_cachedBox and _cachedBox.Parent and _cachedBtn and _cachedBtn.Parent) then
								local ok, found = pcall(refreshCodeCache);
								if not (ok and found) then
									delay = 1.2;
								end
							end
							task.wait(delay);
							break;
						end
						if (0 == FlatIdent_5CC3B) then
							delay = 0.4;
							if prewarmSubmitFns then
								pcall(prewarmSubmitFns);
							end
							FlatIdent_5CC3B = 1;
						end
					end
				end
			end);
			break;
		end
	end
end
local function typeAndSubmitCode(code)
	stampRedeem(code);
	local pg = playerGui or player:FindFirstChildOfClass("PlayerGui");
	if not pg then
		return false, "no PlayerGui";
	end
	local codesGui = pg:FindFirstChild("Codes");
	if codesGui then
		local FlatIdent_61084 = 0;
		local codesFrame;
		while true do
			if (FlatIdent_61084 == 1) then
				if codesFrame then
					local FlatIdent_679D2 = 0;
					local cur;
					local box;
					local submitBtn;
					while true do
						if (FlatIdent_679D2 == 2) then
							for _, d in ipairs(codesFrame:GetDescendants()) do
								if (d:IsA("TextBox") and not isOurGui(d)) then
									box = d;
									break;
								end
							end
							submitBtn = nil;
							FlatIdent_679D2 = 3;
						end
						if (FlatIdent_679D2 == 0) then
							if codesFrame:IsA("GuiObject") then
								codesFrame.Visible = true;
							end
							cur = codesFrame;
							FlatIdent_679D2 = 1;
						end
						if (FlatIdent_679D2 == 3) then
							for _, d in ipairs(codesFrame:GetDescendants()) do
								if ((d:IsA("TextButton") or d:IsA("ImageButton")) and not isOurGui(d)) then
									local n = d.Name:lower();
									local txt = "";
									pcall(function()
										txt = d.Text:lower();
									end);
									if (n:find("submit") or txt:find("submit") or n:find("redeem") or txt:find("redeem") or n:find("claim") or txt:find("confirm") or n:find("enter")) then
										submitBtn = d;
										break;
									end
								end
							end
							if not submitBtn then
								for _, d in ipairs(codesFrame:GetDescendants()) do
									if ((d:IsA("TextButton") or d:IsA("ImageButton")) and not isOurGui(d)) then
										local n = d.Name:lower();
										if (not n:find("close") and not n:find("x") and not n:find("toggle")) then
											submitBtn = d;
											break;
										end
									end
								end
							end
							FlatIdent_679D2 = 4;
						end
						if (FlatIdent_679D2 == 1) then
							while cur and (cur ~= codesGui) do
								local FlatIdent_8CB90 = 0;
								while true do
									if (FlatIdent_8CB90 == 0) then
										if cur:IsA("GuiObject") then
											cur.Visible = true;
										end
										cur = cur.Parent;
										break;
									end
								end
							end
							box = nil;
							FlatIdent_679D2 = 2;
						end
						if (FlatIdent_679D2 == 4) then
							if box then
								local FlatIdent_87441 = 0;
								while true do
									if (FlatIdent_87441 == 1) then
										fireBoxFocusLost(box);
										return true, "submitted via PlayerGui.Codes";
									end
									if (FlatIdent_87441 == 0) then
										pcall(function()
											box.Text = code;
										end);
										if submitBtn then
											clickButton(submitBtn);
										end
										FlatIdent_87441 = 1;
									end
								end
							end
							break;
						end
					end
				end
				break;
			end
			if (FlatIdent_61084 == 0) then
				if codesGui:IsA("ScreenGui") then
					codesGui.Enabled = true;
				end
				codesFrame = codesGui:FindFirstChild("Codes") or codesGui;
				FlatIdent_61084 = 1;
			end
		end
	end
	local btns = findCodeButtons(pg);
	for _, btn in ipairs(btns) do
		clickButton(btn);
		task.wait();
	end
	task.wait(0.05);
	local box = nil;
	local deadline = tick() + 2;
	while tick() < deadline do
		local allBoxes = findAllTextBoxes(pg);
		for _, d in ipairs(allBoxes) do
			if isVisibleChain(d) then
				local n = d.Name:lower();
				local pn = ((d.Parent and d.Parent.Name) or ""):lower();
				if (n:find("code") or pn:find("code") or n:find("redeem") or pn:find("redeem") or n:find("input") or pn:find("textbox") or n:find("enter")) then
					box = d;
					break;
				end
			end
		end
		if not box then
			for _, d in ipairs(allBoxes) do
				if isVisibleChain(d) then
					box = d;
					break;
				end
			end
		end
		if box then
			break;
		end
		task.wait(0.03);
	end
	if not box then
		return false, "no codebox visible";
	end
	pcall(function()
		box.Text = code;
	end);
	local redeemBtn = nil;
	local searchNames = {"submit","redeem","claim","confirm","enter","send","apply","ok","use","go","check"};
	local p = box.Parent;
	for _ = 1, 8 do
		if not p then
			break;
		end
		for _, d in ipairs(p:GetDescendants()) do
			if ((d:IsA("TextButton") or d:IsA("ImageButton")) and not isOurGui(d) and (d ~= box)) then
				local n = d.Name:lower();
				local txt = "";
				pcall(function()
					txt = d.Text:lower();
				end);
				for _, sn in ipairs(searchNames) do
					if (n:find(sn) or txt:find(sn)) then
						if isVisibleChain(d) then
							redeemBtn = d;
							break;
						end
					end
				end
				if redeemBtn then
					break;
				end
			end
		end
		if redeemBtn then
			break;
		end
		p = p.Parent;
	end
	if redeemBtn then
		clickButton(redeemBtn);
	end
	fireBoxFocusLost(box);
	return true, "submitted via dynamic search";
end
local SPAM_TOTAL = 120;
local _fnCache = setmetatable({}, {__mode="k"});
function getSubmitFns(btn)
	local FlatIdent_9525B = 0;
	local entry;
	local fns;
	while true do
		if (FlatIdent_9525B == 2) then
			if getconns then
				for _, sig in ipairs({btn.MouseButton1Click,btn.Activated}) do
					local FlatIdent_47A85 = 0;
					local ok;
					local cs;
					while true do
						if (FlatIdent_47A85 == 0) then
							ok, cs = pcall(getconns, sig);
							if (ok and (type(cs) == "table")) then
								for _, c in ipairs(cs) do
									local FlatIdent_1EAB2 = 0;
									local f;
									while true do
										if (0 == FlatIdent_1EAB2) then
											f = nil;
											pcall(function()
												f = c.Function;
											end);
											FlatIdent_1EAB2 = 1;
										end
										if (1 == FlatIdent_1EAB2) then
											if (type(f) == "function") then
												fns[#fns + 1] = f;
											end
											break;
										end
									end
								end
							end
							break;
						end
					end
				end
			end
			_fnCache[btn] = {fns=fns,t=os.clock()};
			FlatIdent_9525B = 3;
		end
		if (FlatIdent_9525B == 1) then
			if (entry and ((os.clock() - entry.t) < 45)) then
				return entry.fns;
			end
			fns = {};
			FlatIdent_9525B = 2;
		end
		if (FlatIdent_9525B == 3) then
			return fns;
		end
		if (FlatIdent_9525B == 0) then
			if not btn then
				return {};
			end
			entry = _fnCache[btn];
			FlatIdent_9525B = 1;
		end
	end
end
function prewarmSubmitFns()
	local btn = _cachedBtn;
	if not (btn and btn.Parent) then
		return;
	end
	local e = _fnCache[btn];
	if (not e or (#e.fns == 0) or ((os.clock() - e.t) > 15)) then
		local FlatIdent_1B418 = 0;
		while true do
			if (FlatIdent_1B418 == 0) then
				_fnCache[btn] = nil;
				getSubmitFns(btn);
				break;
			end
		end
	end
end
local function fireSubmitOnce(btn)
	local FlatIdent_2C195 = 0;
	local fns;
	while true do
		if (1 == FlatIdent_2C195) then
			if (#fns > 0) then
				for i = 1, #fns do
					task.spawn(fns[i]);
				end
			elseif firesignal then
				local FlatIdent_61AEE = 0;
				while true do
					if (FlatIdent_61AEE == 0) then
						pcall(firesignal, btn.MouseButton1Click);
						pcall(firesignal, btn.Activated);
						break;
					end
				end
			else
				pcall(function()
					btn:Activate();
				end);
			end
			break;
		end
		if (FlatIdent_2C195 == 0) then
			if (not btn or not btn.Parent) then
				return;
			end
			fns = getSubmitFns(btn);
			FlatIdent_2C195 = 1;
		end
	end
end
local function nukeSpam(code)
	local FlatIdent_15C08 = 0;
	local btn;
	local fns;
	while true do
		if (FlatIdent_15C08 == 0) then
			if (not _riddleSolver or not code or (code == "")) then
				return;
			end
			btn = _cachedBtn;
			FlatIdent_15C08 = 1;
		end
		if (1 == FlatIdent_15C08) then
			if (not btn or not btn.Parent) then
				return;
			end
			fns = getSubmitFns(btn);
			FlatIdent_15C08 = 2;
		end
		if (FlatIdent_15C08 == 2) then
			for _ = 1, SPAM_TOTAL do
				if (#fns > 0) then
					for i = 1, #fns do
						task.spawn(fns[i]);
					end
				elseif firesignal then
					pcall(firesignal, btn.MouseButton1Click);
				else
					pcall(function()
						btn:Activate();
					end);
				end
			end
			break;
		end
	end
end
local function instantRedeem(code)
	if (not code or (code == "")) then
		return;
	end
	_lastCode = tostring(code);
	_hotUntil = os.clock() + 4;
	stampRedeem(code);
	local box, btn = _cachedBox, _cachedBtn;
	if not (box and box.Parent and btn and btn.Parent) then
		local FlatIdent_16207 = 0;
		while true do
			if (FlatIdent_16207 == 0) then
				pcall(refreshCodeCache);
				box, btn = _cachedBox, _cachedBtn;
				break;
			end
		end
	end
	if (box and box.Parent) then
		pcall(function()
			box.Text = code;
		end);
	end
	if (btn and btn.Parent) then
		fireSubmitOnce(btn);
	end
	nukeSpam(code);
	task.defer(function()
		local FlatIdent_59C45 = 0;
		while true do
			if (FlatIdent_59C45 == 2) then
				if not (box and btn) then
					pcall(typeAndSubmitCode, code);
				end
				break;
			end
			if (FlatIdent_59C45 == 1) then
				if showToast then
					showToast("Redeeming " .. code, COLORS.Green);
				end
				if showCodeOnOrb then
					showCodeOnOrb(code);
				end
				FlatIdent_59C45 = 2;
			end
			if (FlatIdent_59C45 == 0) then
				if flashCode then
					flashCode(code, COLORS.Green);
				end
				if setStatus then
					setStatus("INSTANT: " .. code, COLORS.Accent);
				end
				FlatIdent_59C45 = 1;
			end
		end
	end);
end
pcall(function()
	for _, name in ipairs({"VoidCSUI","AutoTypeCodesUI","ACEPaste"}) do
		local FlatIdent_8E3FD = 0;
		local previous;
		while true do
			if (FlatIdent_8E3FD == 0) then
				previous = game.CoreGui:FindFirstChild(name);
				if previous then
					previous:Destroy();
				end
				break;
			end
		end
	end
end);
for _, name in ipairs({"VoidCSUI","AutoTypeCodesUI","ACEPaste"}) do
	local FlatIdent_D07E = 0;
	local previous;
	while true do
		if (FlatIdent_D07E == 0) then
			previous = playerGui:FindFirstChild(name);
			if previous then
				previous:Destroy();
			end
			break;
		end
	end
end
local WIN_W, WIN_H = 224, 224;
local ROW_H, ROW_GAP = 19, 2;
local PAD = 8;
local BTN_H, BTN_GAP = 22, 3;
local BTN_Y = 62;
local BTN_BLOCK_H = (BTN_H * 2) + BTN_GAP;
local BODY_Y = BTN_Y + BTN_BLOCK_H + 5;
local BODY_H = (ROW_H * 5) + (ROW_GAP * 4);
local GUI = Instance.new("ScreenGui");
GUI.Name = "VoidCSUI";
GUI.ResetOnSpawn = false;
GUI.IgnoreGuiInset = true;
GUI.DisplayOrder = 999;
if not pcall(function()
	GUI.Parent = game.CoreGui;
end) then
	GUI.Parent = playerGui;
end
local Window = Instance.new("Frame");
Window.Visible = false;
Window.Name = "Window";
Window.Size = UDim2.fromOffset(WIN_W, WIN_H);
Window.AnchorPoint = Vector2.new(1, 0);
Window.Position = UDim2.new(1, -10, 0, 10);
Window.BackgroundColor3 = COLORS.White;
Window.BackgroundTransparency = 0.03;
Window.BorderSizePixel = 0;
Window.ClipsDescendants = true;
Window.Parent = GUI;
addCorner(Window, 10);
local BgGradient = newGradient(Window, {Color3.fromRGB(34, 12, 86),Color3.fromRGB(7, 6, 26),Color3.fromRGB(10, 26, 84),Color3.fromRGB(6, 5, 22)}, 62);
local WindowStroke = addStroke(Window, COLORS.White, 1.6, 0.1);
local StrokeGradient = newGradient(WindowStroke, {Color3.fromRGB(150, 90, 255),Color3.fromRGB(60, 140, 255),Color3.fromRGB(110, 230, 255),Color3.fromRGB(190, 80, 255),Color3.fromRGB(150, 90, 255)}, 0);
local Scene = Instance.new("Frame");
Scene.Name = "SpaceScene";
Scene.Size = UDim2.fromScale(1, 1);
Scene.BackgroundTransparency = 1;
Scene.BorderSizePixel = 0;
Scene.ClipsDescendants = true;
Scene.ZIndex = 1;
Scene.Visible = _spaceFx;
Scene.Parent = Window;
local updateSpace;
do
	local rng = Random.new(os.time());
	local function sceneCircle(d, col, tr, z)
		local FlatIdent_37E3 = 0;
		local f;
		while true do
			if (FlatIdent_37E3 == 2) then
				f.BackgroundTransparency = tr;
				f.BorderSizePixel = 0;
				FlatIdent_37E3 = 3;
			end
			if (FlatIdent_37E3 == 4) then
				round(f);
				return f;
			end
			if (FlatIdent_37E3 == 1) then
				f.Size = UDim2.fromOffset(d, d);
				f.BackgroundColor3 = col;
				FlatIdent_37E3 = 2;
			end
			if (FlatIdent_37E3 == 0) then
				f = Instance.new("Frame");
				f.AnchorPoint = Vector2.new(0.5, 0.5);
				FlatIdent_37E3 = 1;
			end
			if (3 == FlatIdent_37E3) then
				f.ZIndex = z;
				f.Parent = Scene;
				FlatIdent_37E3 = 4;
			end
		end
	end
	local nebulae = {};
	local nebDefs = {{x=40,y=70,d=200,col=Color3.fromRGB(125, 55, 255),t=0.84},{x=285,y=170,d=220,col=Color3.fromRGB(45, 95, 255),t=0.84},{x=140,y=262,d=210,col=Color3.fromRGB(195, 65, 255),t=0.86},{x=230,y=20,d=150,col=Color3.fromRGB(60, 170, 255),t=0.88}};
	for _, def in ipairs(nebDefs) do
		nebulae[#nebulae + 1] = {a=sceneCircle(def.d, def.col, def.t, 1),b=sceneCircle(def.d * 0.55, def.col, def.t - 0.06, 1),x=def.x,y=def.y,t=def.t,ph=rng:NextNumber(0, 6.28)};
	end
	local palette = {Color3.fromRGB(255, 255, 255),Color3.fromRGB(200, 190, 255),Color3.fromRGB(150, 205, 255),Color3.fromRGB(225, 160, 255)};
	local stars = {};
	for _ = 1, 40 do
		local sz = rng:NextInteger(1, 2);
		local f = Instance.new("Frame");
		f.Name = "Star";
		f.Size = UDim2.fromOffset(sz, sz);
		f.BackgroundColor3 = palette[rng:NextInteger(1, #palette)];
		f.BorderSizePixel = 0;
		f.ZIndex = 2;
		f.Parent = Scene;
		stars[#stars + 1] = {f=f,x=rng:NextNumber(0, WIN_W),y=rng:NextNumber(0, WIN_H),sp=(((sz == 2) and rng:NextNumber(10, 18)) or rng:NextNumber(3, 9)),tw=rng:NextNumber(1.2, 3.6),ph=rng:NextNumber(0, 6.28)};
	end
	local PCX, PCY = WIN_W - 34, 22;
	local Planet = sceneCircle(52, COLORS.White, 0, 2);
	Planet.Position = UDim2.fromOffset(PCX, PCY);
	local PlanetGrad = newGradient(Planet, {Color3.fromRGB(215, 175, 255),Color3.fromRGB(115, 85, 245),Color3.fromRGB(22, 16, 78)}, 40);
	local Ring = Instance.new("Frame");
	Ring.AnchorPoint = Vector2.new(0.5, 0.5);
	Ring.Position = UDim2.fromOffset(PCX, PCY);
	Ring.Size = UDim2.fromOffset(94, 18);
	Ring.BackgroundTransparency = 1;
	Ring.BorderSizePixel = 0;
	Ring.Rotation = -22;
	Ring.ZIndex = 3;
	Ring.Parent = Scene;
	round(Ring);
	local RingStroke = addStroke(Ring, COLORS.White, 2, 0.15);
	newGradient(RingStroke, {Color3.fromRGB(110, 230, 255),Color3.fromRGB(190, 120, 255),Color3.fromRGB(110, 230, 255)}, 0, NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1),NumberSequenceKeypoint.new(0.5, 0.5),NumberSequenceKeypoint.new(1, 0.1)}));
	local Moon = sceneCircle(7, Color3.fromRGB(200, 225, 255), 0, 3);
	local shooters = {};
	for _ = 1, 2 do
		local FlatIdent_2EAC6 = 0;
		local f;
		while true do
			if (FlatIdent_2EAC6 == 3) then
				f.Parent = Scene;
				newGradient(f, {Color3.fromRGB(255, 255, 255),Color3.fromRGB(200, 190, 255),Color3.fromRGB(150, 205, 255)}, 0, NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(1, 0)}));
				shooters[#shooters + 1] = {f=f,on=false,x=0,y=0,nextAt=(os.clock() + rng:NextNumber(1, 4))};
				break;
			end
			if (2 == FlatIdent_2EAC6) then
				f.Rotation = 152;
				f.ZIndex = 3;
				f.Visible = false;
				FlatIdent_2EAC6 = 3;
			end
			if (1 == FlatIdent_2EAC6) then
				f.Size = UDim2.fromOffset(38, 2);
				f.BackgroundColor3 = COLORS.White;
				f.BorderSizePixel = 0;
				FlatIdent_2EAC6 = 2;
			end
			if (FlatIdent_2EAC6 == 0) then
				f = Instance.new("Frame");
				f.Name = "Comet";
				f.AnchorPoint = Vector2.new(0.5, 0.5);
				FlatIdent_2EAC6 = 1;
			end
		end
	end
	function updateSpace(t, dt)
		for i = 1, #nebulae do
			local n = nebulae[i];
			local x = n.x + (18 * math.sin((t * 0.33) + n.ph));
			local y = n.y + (14 * math.cos((t * 0.27) + n.ph));
			n.a.Position = UDim2.fromOffset(x, y);
			n.b.Position = UDim2.fromOffset(x + (12 * math.cos((t * 0.5) + n.ph)), y - (9 * math.sin((t * 0.4) + n.ph)));
			local p = (math.sin((t * 0.8) + n.ph) + 1) / 2;
			n.a.BackgroundTransparency = n.t + (0.05 * p);
			n.b.BackgroundTransparency = (n.t - 0.05) + (0.06 * (1 - p));
		end
		for i = 1, #stars do
			local s = stars[i];
			s.x = s.x - (s.sp * dt);
			if (s.x < -3) then
				local FlatIdent_696E1 = 0;
				while true do
					if (FlatIdent_696E1 == 0) then
						s.x = WIN_W + 3;
						s.y = rng:NextNumber(0, WIN_H);
						break;
					end
				end
			end
			s.f.Position = UDim2.fromOffset(s.x, s.y);
			s.f.BackgroundTransparency = 0.1 + (0.8 * ((math.sin((t * s.tw) + s.ph) + 1) / 2));
		end
		PlanetGrad.Rotation = 40 + (25 * math.sin(t * 0.35));
		Ring.Rotation = -22 + (5 * math.sin(t * 0.6));
		local a = t * 0.9;
		Moon.Position = UDim2.fromOffset(PCX + (math.cos(a) * 44), PCY + (math.sin(a) * 11));
		Moon.BackgroundTransparency = ((math.sin(a) < 0) and 0.65) or 0;
		for i = 1, #shooters do
			local sh = shooters[i];
			if sh.on then
				local FlatIdent_904EC = 0;
				while true do
					if (FlatIdent_904EC == 1) then
						sh.f.Position = UDim2.fromOffset(sh.x, sh.y);
						if ((sh.x < -30) or (sh.y > (WIN_H + 20))) then
							local FlatIdent_6D8EC = 0;
							while true do
								if (FlatIdent_6D8EC == 1) then
									sh.nextAt = t + rng:NextNumber(1.5, 5);
									break;
								end
								if (FlatIdent_6D8EC == 0) then
									sh.on = false;
									sh.f.Visible = false;
									FlatIdent_6D8EC = 1;
								end
							end
						end
						break;
					end
					if (0 == FlatIdent_904EC) then
						sh.x = sh.x - (0.88 * 200 * dt);
						sh.y = sh.y + (0.47 * 200 * dt);
						FlatIdent_904EC = 1;
					end
				end
			elseif (t >= sh.nextAt) then
				sh.on = true;
				sh.x = rng:NextNumber(140, WIN_W + 50);
				sh.y = rng:NextNumber(-10, 70);
				sh.f.Position = UDim2.fromOffset(sh.x, sh.y);
				sh.f.Visible = true;
			end
		end
	end
end
local TopBar = Instance.new("Frame");
TopBar.Name = "TopBar";
TopBar.Size = UDim2.new(1, 0, 0, 2);
TopBar.BackgroundColor3 = COLORS.White;
TopBar.BorderSizePixel = 0;
TopBar.ZIndex = 8;
TopBar.Parent = Window;
local TopGradient = newGradient(TopBar, {Color3.fromRGB(150, 80, 255),Color3.fromRGB(70, 150, 255),Color3.fromRGB(150, 245, 255),Color3.fromRGB(70, 150, 255),Color3.fromRGB(150, 80, 255)}, 0);
local InterfaceScale = Instance.new("UIScale");
InterfaceScale.Scale = 0.95;
InterfaceScale.Parent = Window;
local function updateInterfaceScale()
	local cam = workspace.CurrentCamera;
	if not cam then
		return;
	end
	local vp = cam.ViewportSize;
	local fit = math.min((vp.X - 20) / WIN_W, (vp.Y - 20) / WIN_H);
	if UserInputService.TouchEnabled then
		InterfaceScale.Scale = math.clamp(math.min(0.85, fit), 0.55, 0.95);
	else
		InterfaceScale.Scale = 0.95;
	end
end
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(updateInterfaceScale);
updateInterfaceScale();
local Header = Instance.new("Frame");
Header.Name = "Header";
Header.Size = UDim2.new(1, 0, 0, 24);
Header.BackgroundTransparency = 1;
Header.Active = true;
Header.ZIndex = 5;
Header.Parent = Window;
local Logo = Instance.new("Frame");
Logo.Name = "Logo";
Logo.Size = UDim2.fromOffset(7, 7);
Logo.AnchorPoint = Vector2.new(0.5, 0.5);
Logo.Position = UDim2.fromOffset(12, 12);
Logo.Rotation = 45;
Logo.BackgroundColor3 = COLORS.Cyan;
Logo.BorderSizePixel = 0;
Logo.ZIndex = 6;
Logo.Parent = Header;
addCorner(Logo, 2);
local TitleLabel = makeLabel(Header, "Title", "VOID // C.S", UDim2.new(1, -90, 1, 0), UDim2.fromOffset(23, 0), 12, COLORS.White, Enum.Font.GothamBold);
local TitleGradient = newGradient(TitleLabel, {Color3.fromRGB(255, 255, 255),Color3.fromRGB(190, 160, 255),Color3.fromRGB(120, 210, 255),Color3.fromRGB(255, 255, 255)}, 0);
local MinBtn = Instance.new("TextButton");
MinBtn.Name = "Minimize";
MinBtn.Size = UDim2.fromOffset((IS_TOUCH and 30) or 24, (IS_TOUCH and 22) or 17);
MinBtn.Position = UDim2.new(1, (IS_TOUCH and -36) or -30, 0.5, (IS_TOUCH and -11) or -8);
MinBtn.BackgroundColor3 = COLORS.Panel;
MinBtn.BackgroundTransparency = 0.1;
MinBtn.BorderSizePixel = 0;
MinBtn.AutoButtonColor = false;
MinBtn.Text = "–";
MinBtn.TextSize = 14;
MinBtn.TextColor3 = COLORS.Text;
MinBtn.Font = Enum.Font.GothamBold;
MinBtn.ZIndex = 6;
MinBtn.Parent = Header;
addCorner(MinBtn, 5);
addStroke(MinBtn, COLORS.Border, 1, 0.35);
local StatusDot = Instance.new("TextButton");
StatusDot.Name = "StatusDot";
StatusDot.Size = UDim2.fromOffset(10, 10);
StatusDot.Position = UDim2.new(1, (IS_TOUCH and -52) or -46, 0.5, -4);
StatusDot.BackgroundColor3 = (_enabled and COLORS.Green) or COLORS.Red;
StatusDot.BorderSizePixel = 0;
StatusDot.Text = "";
StatusDot.AutoButtonColor = false;
StatusDot.ZIndex = 6;
StatusDot.Parent = Header;
addCorner(StatusDot, 5);
local DotStroke = addStroke(StatusDot, COLORS.White, 1, 0.5);
local pulseConnection = nil;
local StatusLabel = nil;
local ListenBtn = nil;
local function updateEnableVisual()
	local FlatIdent_5C19E = 0;
	while true do
		if (FlatIdent_5C19E == 1) then
			if ListenBtn then
				local FlatIdent_5E6B6 = 0;
				while true do
					if (FlatIdent_5E6B6 == 0) then
						ListenBtn.BackgroundColor3 = (_enabled and COLORS.Green) or COLORS.Panel;
						ListenBtn.Text = (_enabled and "LISTENING") or "LISTEN OFF";
						FlatIdent_5E6B6 = 1;
					end
					if (1 == FlatIdent_5E6B6) then
						ListenBtn.TextColor3 = (_enabled and COLORS.Window) or COLORS.Dim;
						break;
					end
				end
			end
			break;
		end
		if (FlatIdent_5C19E == 0) then
			StatusDot.BackgroundColor3 = (_enabled and COLORS.Green) or COLORS.Red;
			if StatusLabel then
				if _enabled then
					local FlatIdent_63A3A = 0;
					while true do
						if (FlatIdent_63A3A == 0) then
							StatusLabel.Text = "listening for codes";
							StatusLabel.TextColor3 = COLORS.Text;
							break;
						end
					end
				else
					local FlatIdent_61057 = 0;
					while true do
						if (0 == FlatIdent_61057) then
							StatusLabel.Text = "sniper paused";
							StatusLabel.TextColor3 = COLORS.Dim;
							break;
						end
					end
				end
			end
			FlatIdent_5C19E = 1;
		end
	end
end
local lastMainToggle = 0;
local function toggleMainEnable()
	local FlatIdent_14A6D = 0;
	while true do
		if (4 == FlatIdent_14A6D) then
			if showToast then
				showToast((_enabled and "Listening ON") or "Listening OFF", (_enabled and COLORS.Green) or COLORS.Red);
			end
			break;
		end
		if (FlatIdent_14A6D == 3) then
			updateEnableVisual();
			_lastStatusMsg = nil;
			FlatIdent_14A6D = 4;
		end
		if (FlatIdent_14A6D == 0) then
			if ((tick() - lastMainToggle) < 0.18) then
				return;
			end
			lastMainToggle = tick();
			FlatIdent_14A6D = 1;
		end
		if (FlatIdent_14A6D == 2) then
			saveConfig();
			if (not _enabled and clearAceCapture) then
				clearAceCapture();
			end
			FlatIdent_14A6D = 3;
		end
		if (FlatIdent_14A6D == 1) then
			_enabled = not _enabled;
			savedConfig.codeSniper = _enabled;
			FlatIdent_14A6D = 2;
		end
	end
end
StatusDot.Activated:Connect(toggleMainEnable);
StatusDot.MouseButton1Click:Connect(toggleMainEnable);
StatusDot.InputBegan:Connect(function(input)
	if ((input.UserInputType == Enum.UserInputType.Touch) or (input.UserInputType == Enum.UserInputType.MouseButton1)) then
		toggleMainEnable();
	end
end);
local StatusBar = Instance.new("Frame");
StatusBar.Name = "StatusBar";
StatusBar.Size = UDim2.new(1, -PAD * 2, 0, 32);
StatusBar.Position = UDim2.fromOffset(PAD, 26);
StatusBar.BackgroundColor3 = COLORS.Panel;
StatusBar.BackgroundTransparency = 0.25;
StatusBar.BorderSizePixel = 0;
StatusBar.ZIndex = 5;
StatusBar.Parent = Window;
addCorner(StatusBar, 8);
addStroke(StatusBar, COLORS.Border, 1, 0.4);
local CardAccent = Instance.new("Frame");
CardAccent.Name = "CardAccent";
CardAccent.Size = UDim2.new(0, 3, 1, -12);
CardAccent.Position = UDim2.fromOffset(0, 6);
CardAccent.BackgroundColor3 = COLORS.White;
CardAccent.BorderSizePixel = 0;
CardAccent.ZIndex = 6;
CardAccent.Parent = StatusBar;
addCorner(CardAccent, 2);
newGradient(CardAccent, {Color3.fromRGB(190, 110, 255),Color3.fromRGB(90, 190, 255)}, 90);
makeLabel(StatusBar, "Caption", "LAST CODE / STATUS", UDim2.new(1, -20, 0, 11), UDim2.fromOffset(10, 3), 8, COLORS.Dim, Enum.Font.GothamBold).ZIndex = 6;
StatusLabel = makeLabel(StatusBar, "Status", (_enabled and "listening for codes") or "sniper paused", UDim2.new(1, -20, 0, 16), UDim2.fromOffset(10, 14), 12, COLORS.Text, Enum.Font.Code);
StatusLabel.TextTruncate = Enum.TextTruncate.AtEnd;
StatusLabel.ZIndex = 6;
local HOVER_INFO = TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
local function hoverFx(btn, base, hover)
	local FlatIdent_6BDA4 = 0;
	while true do
		if (FlatIdent_6BDA4 == 0) then
			btn.MouseEnter:Connect(function()
				TweenService:Create(btn, HOVER_INFO, {BackgroundTransparency=hover}):Play();
			end);
			btn.MouseLeave:Connect(function()
				TweenService:Create(btn, HOVER_INFO, {BackgroundTransparency=base}):Play();
			end);
			break;
		end
	end
end
local ButtonRow = Instance.new("Frame");
ButtonRow.Name = "ButtonRow";
ButtonRow.Size = UDim2.fromOffset(WIN_W - (PAD * 2), BTN_BLOCK_H);
ButtonRow.Position = UDim2.fromOffset(PAD, BTN_Y);
ButtonRow.BackgroundTransparency = 1;
ButtonRow.ZIndex = 5;
ButtonRow.Parent = Window;
local function makeActionBtn(name, text, idx, bg, fg)
	local FlatIdent_5C97A = 0;
	local btn;
	local colW;
	while true do
		if (FlatIdent_5C97A == 1) then
			btn.Position = UDim2.fromOffset((idx % 2) * (colW + BTN_GAP), math.floor(idx / 2) * (BTN_H + BTN_GAP));
			btn.BackgroundColor3 = bg;
			btn.BackgroundTransparency = 0.08;
			btn.BorderSizePixel = 0;
			FlatIdent_5C97A = 2;
		end
		if (0 == FlatIdent_5C97A) then
			btn = Instance.new("TextButton");
			btn.Name = name;
			colW = math.floor(((WIN_W - (PAD * 2)) - BTN_GAP) / 2);
			btn.Size = UDim2.fromOffset(colW, BTN_H);
			FlatIdent_5C97A = 1;
		end
		if (FlatIdent_5C97A == 2) then
			btn.AutoButtonColor = false;
			btn.Text = text;
			btn.TextSize = 11;
			btn.TextColor3 = fg;
			FlatIdent_5C97A = 3;
		end
		if (FlatIdent_5C97A == 3) then
			btn.Font = Enum.Font.GothamBold;
			btn.ZIndex = 6;
			btn.Parent = ButtonRow;
			addCorner(btn, 6);
			FlatIdent_5C97A = 4;
		end
		if (FlatIdent_5C97A == 4) then
			addStroke(btn, COLORS.Border, 1, 0.4);
			hoverFx(btn, 0.08, 0.3);
			return btn;
		end
	end
end
ListenBtn = makeActionBtn("Listen", (_enabled and "LISTENING") or "LISTEN OFF", 1, (_enabled and COLORS.Green) or COLORS.Panel, (_enabled and COLORS.Window) or COLORS.Dim);
local RedeemBtn = makeActionBtn("Redeem", "REDEEM", 0, COLORS.Accent, COLORS.Window);
local CopyBtn = makeActionBtn("Copy", "COPY", 2, COLORS.Panel, COLORS.Text);
local ClearBtn = makeActionBtn("Clear", "CLEAR", 3, COLORS.Panel, COLORS.Text);
local lastListenToggle = 0;
local function onListenPress()
	local FlatIdent_11D04 = 0;
	while true do
		if (FlatIdent_11D04 == 1) then
			toggleMainEnable();
			break;
		end
		if (FlatIdent_11D04 == 0) then
			if ((tick() - lastListenToggle) < 0.15) then
				return;
			end
			lastListenToggle = tick();
			FlatIdent_11D04 = 1;
		end
	end
end
ListenBtn.Activated:Connect(onListenPress);
ListenBtn.MouseButton1Click:Connect(onListenPress);
ListenBtn.InputBegan:Connect(function(input)
	if ((input.UserInputType == Enum.UserInputType.Touch) or (input.UserInputType == Enum.UserInputType.MouseButton1)) then
		onListenPress();
	end
end);
local Settings = Instance.new("Frame");
Settings.Name = "Settings";
Settings.Size = UDim2.fromOffset(WIN_W - (PAD * 2), BODY_H);
Settings.Position = UDim2.fromOffset(PAD, BODY_Y);
Settings.BackgroundTransparency = 1;
Settings.ZIndex = 5;
Settings.Parent = Window;
local function makeRowFrame(name, y)
	local row = Instance.new("Frame");
	row.Name = name;
	row.Size = UDim2.new(1, 0, 0, ROW_H);
	row.Position = UDim2.fromOffset(0, y);
	row.BackgroundColor3 = COLORS.Panel;
	row.BackgroundTransparency = 0.3;
	row.BorderSizePixel = 0;
	row.ZIndex = 5;
	row.Parent = Settings;
	addCorner(row, 6);
	addStroke(row, COLORS.Border, 1, 0.55);
	row.MouseEnter:Connect(function()
		TweenService:Create(row, HOVER_INFO, {BackgroundColor3=COLORS.PanelHi}):Play();
	end);
	row.MouseLeave:Connect(function()
		TweenService:Create(row, HOVER_INFO, {BackgroundColor3=COLORS.Panel}):Play();
	end);
	return row;
end
local function makeToggleRow(name, y, labelText, initial, onToggle)
	local row = makeRowFrame(name, y);
	local lbl = makeLabel(row, "Label", labelText, UDim2.new(1, -46, 1, 0), UDim2.fromOffset(8, 0), 11, COLORS.Text, Enum.Font.Gotham);
	lbl.ZIndex = 6;
	local track = Instance.new("Frame");
	track.Name = "Track";
	track.Size = UDim2.fromOffset(28, 13);
	track.Position = UDim2.new(1, -36, 0.5, -6);
	track.BackgroundColor3 = (initial and COLORS.Accent) or COLORS.Control;
	track.BorderSizePixel = 0;
	track.ZIndex = 6;
	track.Parent = row;
	round(track);
	local knob = Instance.new("Frame");
	knob.Name = "Knob";
	knob.Size = UDim2.fromOffset(9, 9);
	knob.Position = (initial and UDim2.fromOffset(17, 2)) or UDim2.fromOffset(2, 2);
	knob.BackgroundColor3 = (initial and COLORS.White) or COLORS.Dim;
	knob.BorderSizePixel = 0;
	knob.ZIndex = 7;
	knob.Parent = track;
	round(knob);
	local btn = Instance.new("TextButton");
	btn.Name = "State";
	btn.Size = UDim2.fromScale(1, 1);
	btn.BackgroundTransparency = 1;
	btn.Text = "";
	btn.AutoButtonColor = false;
	btn.ZIndex = 9;
	btn.Parent = row;
	local state = initial;
	local lastT = 0;
	local function toggle()
		local FlatIdent_734D3 = 0;
		while true do
			if (FlatIdent_734D3 == 0) then
				if ((tick() - lastT) < 0.15) then
					return;
				end
				lastT = tick();
				FlatIdent_734D3 = 1;
			end
			if (FlatIdent_734D3 == 1) then
				state = not state;
				TweenService:Create(track, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3=((state and COLORS.Accent) or COLORS.Control)}):Play();
				FlatIdent_734D3 = 2;
			end
			if (FlatIdent_734D3 == 2) then
				TweenService:Create(knob, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Position=((state and UDim2.fromOffset(17, 2)) or UDim2.fromOffset(2, 2)),BackgroundColor3=((state and COLORS.White) or COLORS.Dim)}):Play();
				if onToggle then
					onToggle(state);
				end
				break;
			end
		end
	end
	btn.Activated:Connect(toggle);
	btn.MouseButton1Click:Connect(toggle);
	btn.InputBegan:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.Touch) or (input.UserInputType == Enum.UserInputType.MouseButton1)) then
			toggle();
		end
	end);
	return row;
end
makeToggleRow("AutoSubmit", (ROW_H + ROW_GAP) * 1, "Auto submit", _autoAccept, function(state)
	local FlatIdent_6AE5 = 0;
	while true do
		if (FlatIdent_6AE5 == 1) then
			saveConfig();
			break;
		end
		if (FlatIdent_6AE5 == 0) then
			_autoAccept = state;
			savedConfig.autoSubmit = state;
			FlatIdent_6AE5 = 1;
		end
	end
end);
do
	local row = makeRowFrame("SubmitAfter", (ROW_H + ROW_GAP) * 2);
	local lbl = makeLabel(row, "Label", "Submit after", UDim2.new(1, -80, 1, 0), UDim2.fromOffset(8, 0), 11, COLORS.Text, Enum.Font.Gotham);
	lbl.ZIndex = 6;
	local valueLabel = Instance.new("TextLabel");
	valueLabel.Name = "Value";
	valueLabel.Size = UDim2.fromOffset(20, 17);
	valueLabel.Position = UDim2.new(1, -46, 0.5, -8);
	valueLabel.BackgroundTransparency = 1;
	valueLabel.Text = tostring(_submitAfter);
	valueLabel.TextSize = 12;
	valueLabel.TextColor3 = COLORS.Cyan;
	valueLabel.Font = Enum.Font.GothamBold;
	valueLabel.ZIndex = 6;
	valueLabel.Parent = row;
	local function makeStepBtn(txt, xOff, delta)
		local FlatIdent_97F0B = 0;
		local b;
		local last;
		local press;
		while true do
			if (FlatIdent_97F0B == 2) then
				b.TextSize = 12;
				b.TextColor3 = COLORS.Text;
				b.Font = Enum.Font.GothamBold;
				b.ZIndex = 6;
				FlatIdent_97F0B = 3;
			end
			if (FlatIdent_97F0B == 1) then
				b.BackgroundTransparency = 0;
				b.BorderSizePixel = 0;
				b.AutoButtonColor = false;
				b.Text = txt;
				FlatIdent_97F0B = 2;
			end
			if (FlatIdent_97F0B == 5) then
				b.InputBegan:Connect(function(input)
					if ((input.UserInputType == Enum.UserInputType.Touch) or (input.UserInputType == Enum.UserInputType.MouseButton1)) then
						press();
					end
				end);
				break;
			end
			if (FlatIdent_97F0B == 0) then
				b = Instance.new("TextButton");
				b.Size = UDim2.fromOffset(17, 17);
				b.Position = UDim2.new(1, xOff, 0.5, -8);
				b.BackgroundColor3 = COLORS.Control;
				FlatIdent_97F0B = 1;
			end
			if (FlatIdent_97F0B == 4) then
				press = nil;
				function press()
					local FlatIdent_91EEA = 0;
					while true do
						if (FlatIdent_91EEA == 0) then
							if ((tick() - last) < 0.12) then
								return;
							end
							last = tick();
							FlatIdent_91EEA = 1;
						end
						if (FlatIdent_91EEA == 2) then
							savedConfig.submitAfter = _submitAfter;
							saveConfig();
							break;
						end
						if (FlatIdent_91EEA == 1) then
							_submitAfter = math.clamp(_submitAfter + delta, 1, 30);
							valueLabel.Text = tostring(_submitAfter);
							FlatIdent_91EEA = 2;
						end
					end
				end
				b.Activated:Connect(press);
				b.MouseButton1Click:Connect(press);
				FlatIdent_97F0B = 5;
			end
			if (FlatIdent_97F0B == 3) then
				b.Parent = row;
				addCorner(b, 5);
				hoverFx(b, 0, 0.35);
				last = 0;
				FlatIdent_97F0B = 4;
			end
		end
	end
	makeStepBtn("-", -64, -1);
	makeStepBtn("+", -24, 1);
end
makeToggleRow("RetypeInvalid", (ROW_H + ROW_GAP) * 3, "Retype invalid", _retypeInvalid, function(state)
	_retypeInvalid = state;
	savedConfig.retypeInvalid = state;
	saveConfig();
end);
makeToggleRow("SpamRedeem", (ROW_H + ROW_GAP) * 0, "Spam redeem", _riddleSolver, function(state)
	_riddleSolver = state;
	savedConfig.riddleSolver = state;
	saveConfig();
end);
makeToggleRow("SpaceFx", (ROW_H + ROW_GAP) * 4, "Space FX", _spaceFx, function(state)
	local FlatIdent_6873F = 0;
	while true do
		if (FlatIdent_6873F == 1) then
			savedConfig.spaceFx = state;
			saveConfig();
			break;
		end
		if (FlatIdent_6873F == 0) then
			_spaceFx = state;
			Scene.Visible = state;
			FlatIdent_6873F = 1;
		end
	end
end);
local minimized = false;
local ORB = (IS_TOUCH and 52) or 44;
local Orb = Instance.new("TextButton");
Orb.Name = "Orb";
Orb.Text = "";
Orb.AutoButtonColor = false;
Orb.AnchorPoint = Vector2.new(0.5, 0.5);
Orb.Size = UDim2.fromOffset(ORB, ORB);
Orb.Position = UDim2.fromOffset(100, 100);
Orb.BackgroundTransparency = 1;
Orb.BorderSizePixel = 0;
Orb.Visible = false;
Orb.ZIndex = 20;
Orb.Parent = GUI;
local OrbGlow = Instance.new("Frame");
OrbGlow.Name = "Glow";
OrbGlow.AnchorPoint = Vector2.new(0.5, 0.5);
OrbGlow.Position = UDim2.fromScale(0.5, 0.5);
OrbGlow.Size = UDim2.fromScale(1.4, 1.4);
OrbGlow.BackgroundColor3 = Color3.fromRGB(140, 90, 255);
OrbGlow.BackgroundTransparency = 0.82;
OrbGlow.BorderSizePixel = 0;
OrbGlow.ZIndex = 21;
OrbGlow.Parent = Orb;
round(OrbGlow);
local OrbBody = Instance.new("Frame");
OrbBody.Name = "Body";
OrbBody.AnchorPoint = Vector2.new(0.5, 0.5);
OrbBody.Position = UDim2.fromScale(0.5, 0.5);
OrbBody.Size = UDim2.fromScale(1, 1);
OrbBody.BackgroundColor3 = COLORS.White;
OrbBody.BorderSizePixel = 0;
OrbBody.ZIndex = 22;
OrbBody.Parent = Orb;
round(OrbBody);
newGradient(OrbBody, {Color3.fromRGB(40, 20, 110),Color3.fromRGB(6, 5, 24)}, 60);
local OrbStroke = addStroke(OrbBody, COLORS.White, 2, 0.05);
local OrbStrokeGrad = newGradient(OrbStroke, {Color3.fromRGB(170, 100, 255),Color3.fromRGB(80, 160, 255),Color3.fromRGB(120, 235, 255),Color3.fromRGB(170, 100, 255)}, 0);
local OrbLetter = Instance.new("TextLabel");
OrbLetter.Name = "Letter";
OrbLetter.Size = UDim2.fromScale(1, 1);
OrbLetter.BackgroundTransparency = 1;
OrbLetter.Text = "V";
OrbLetter.TextSize = (IS_TOUCH and 20) or 17;
OrbLetter.TextColor3 = COLORS.White;
OrbLetter.Font = Enum.Font.GothamBold;
OrbLetter.ZIndex = 23;
OrbLetter.Parent = OrbBody;
local OrbDot = Instance.new("Frame");
OrbDot.Name = "Dot";
OrbDot.AnchorPoint = Vector2.new(0.5, 0.5);
OrbDot.Position = UDim2.fromScale(0.86, 0.14);
OrbDot.Size = UDim2.fromOffset(9, 9);
OrbDot.BackgroundColor3 = (_enabled and COLORS.Green) or COLORS.Red;
OrbDot.BorderSizePixel = 0;
OrbDot.ZIndex = 26;
OrbDot.Parent = Orb;
round(OrbDot);
addStroke(OrbDot, COLORS.Window, 1.5, 0);
local CodeBadge = Instance.new("Frame");
CodeBadge.Name = "CodeBadge";
CodeBadge.AnchorPoint = Vector2.new(0, 0.5);
CodeBadge.Position = UDim2.new(1, 8, 0.5, 0);
CodeBadge.Size = UDim2.fromOffset(0, 28);
CodeBadge.BackgroundColor3 = Color3.fromRGB(16, 10, 44);
CodeBadge.BackgroundTransparency = 0.05;
CodeBadge.BorderSizePixel = 0;
CodeBadge.Visible = false;
CodeBadge.ZIndex = 25;
CodeBadge.ClipsDescendants = true;
CodeBadge.Parent = Orb;
addCorner(CodeBadge, 8);
addStroke(CodeBadge, COLORS.Border, 1, 0.3);
local CodeBadgeBar = Instance.new("Frame");
CodeBadgeBar.Size = UDim2.new(0, 3, 1, 0);
CodeBadgeBar.BackgroundColor3 = COLORS.Green;
CodeBadgeBar.BorderSizePixel = 0;
CodeBadgeBar.ZIndex = 26;
CodeBadgeBar.Parent = CodeBadge;
local CodeBadgeLabel = Instance.new("TextLabel");
CodeBadgeLabel.Name = "CodeText";
CodeBadgeLabel.Size = UDim2.new(1, -16, 1, 0);
CodeBadgeLabel.Position = UDim2.fromOffset(12, 0);
CodeBadgeLabel.BackgroundTransparency = 1;
CodeBadgeLabel.Text = "";
CodeBadgeLabel.TextSize = 13;
CodeBadgeLabel.TextColor3 = COLORS.White;
CodeBadgeLabel.Font = Enum.Font.GothamBold;
CodeBadgeLabel.TextXAlignment = Enum.TextXAlignment.Left;
CodeBadgeLabel.TextTruncate = Enum.TextTruncate.AtEnd;
CodeBadgeLabel.ZIndex = 26;
CodeBadgeLabel.Parent = CodeBadge;
local badgeHideToken = 0;
function showCodeOnOrb(code)
	local FlatIdent_33B1E = 0;
	local token;
	local textLen;
	local targetW;
	while true do
		if (2 == FlatIdent_33B1E) then
			textLen = #tostring(code);
			targetW = math.clamp((textLen * 9) + 24, 70, 180);
			CodeBadge.Size = UDim2.fromOffset(0, 28);
			FlatIdent_33B1E = 3;
		end
		if (1 == FlatIdent_33B1E) then
			token = badgeHideToken;
			CodeBadgeLabel.Text = tostring(code);
			CodeBadge.Visible = true;
			FlatIdent_33B1E = 2;
		end
		if (FlatIdent_33B1E == 0) then
			if (not code or (code == "")) then
				return;
			end
			if (not minimized or not Orb.Visible) then
				return;
			end
			badgeHideToken += 1
			FlatIdent_33B1E = 1;
		end
		if (FlatIdent_33B1E == 3) then
			TweenService:Create(CodeBadge, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size=UDim2.fromOffset(targetW, 28)}):Play();
			CodeBadgeBar.BackgroundColor3 = COLORS.Green;
			task.delay(0.4, function()
				if (token == badgeHideToken) then
					CodeBadgeBar.BackgroundColor3 = COLORS.Accent;
				end
			end);
			FlatIdent_33B1E = 4;
		end
		if (FlatIdent_33B1E == 4) then
			task.delay(6, function()
				if (token == badgeHideToken) then
					local FlatIdent_8F9B8 = 0;
					while true do
						if (FlatIdent_8F9B8 == 0) then
							TweenService:Create(CodeBadge, TweenInfo.new(0.2), {Size=UDim2.fromOffset(0, 28)}):Play();
							task.wait(0.22);
							FlatIdent_8F9B8 = 1;
						end
						if (FlatIdent_8F9B8 == 1) then
							if (token == badgeHideToken) then
								CodeBadge.Visible = false;
							end
							break;
						end
					end
				end
			end);
			break;
		end
	end
end
task.spawn(function()
	while Orb.Parent do
		local FlatIdent_80263 = 0;
		while true do
			if (FlatIdent_80263 == 0) then
				if (Orb.Visible and (os.clock() >= _hotUntil)) then
					local FlatIdent_88CAD = 0;
					local t;
					local p;
					local gs;
					while true do
						if (FlatIdent_88CAD == 1) then
							OrbStrokeGrad.Rotation = (t * 160) % 360;
							OrbGlow.BackgroundTransparency = 0.76 + (0.14 * p);
							FlatIdent_88CAD = 2;
						end
						if (2 == FlatIdent_88CAD) then
							gs = 1.3 + (0.22 * p);
							OrbGlow.Size = UDim2.fromScale(gs, gs);
							FlatIdent_88CAD = 3;
						end
						if (FlatIdent_88CAD == 3) then
							OrbDot.BackgroundColor3 = (_enabled and COLORS.Green) or COLORS.Red;
							break;
						end
						if (FlatIdent_88CAD == 0) then
							t = os.clock();
							p = (math.sin(t * 2.4) + 1) / 2;
							FlatIdent_88CAD = 1;
						end
					end
				end
				task.wait(1 / 24);
				break;
			end
		end
	end
end);
local function clampWindow()
	task.defer(function()
		local cam = workspace.CurrentCamera;
		if (not cam or not Window.Visible) then
			return;
		end
		local vp = cam.ViewportSize;
		local ap, asz = Window.AbsolutePosition, Window.AbsoluteSize;
		local dx, dy = 0, 0;
		if (ap.X < 4) then
			dx = 4 - ap.X;
		elseif ((ap.X + asz.X) > (vp.X - 4)) then
			dx = (vp.X - 4) - (ap.X + asz.X);
		end
		if (ap.Y < 4) then
			dy = 4 - ap.Y;
		elseif ((ap.Y + asz.Y) > (vp.Y - 4)) then
			dy = (vp.Y - 4) - (ap.Y + asz.Y);
		end
		if ((dx ~= 0) or (dy ~= 0)) then
			local FlatIdent_62271 = 0;
			local pos;
			while true do
				if (FlatIdent_62271 == 0) then
					pos = Window.Position;
					Window.Position = UDim2.new(pos.X.Scale, pos.X.Offset + dx, pos.Y.Scale, pos.Y.Offset + dy);
					break;
				end
			end
		end
	end);
end
do
	local FlatIdent_7F9F4 = 0;
	local hookViewport;
	while true do
		if (FlatIdent_7F9F4 == 1) then
			hookViewport();
			workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(hookViewport);
			break;
		end
		if (FlatIdent_7F9F4 == 0) then
			hookViewport = nil;
			function hookViewport()
				local cam = workspace.CurrentCamera;
				if cam then
					cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
						local FlatIdent_5C540 = 0;
						while true do
							if (FlatIdent_5C540 == 0) then
								updateInterfaceScale();
								clampWindow();
								break;
							end
						end
					end);
				end
			end
			FlatIdent_7F9F4 = 1;
		end
	end
end
function triggerFlare(col)
	local FlatIdent_5FCA9 = 0;
	while true do
		if (FlatIdent_5FCA9 == 1) then
			WindowStroke.Thickness = 2.6;
			WindowStroke.Transparency = 0;
			FlatIdent_5FCA9 = 2;
		end
		if (FlatIdent_5FCA9 == 2) then
			TweenService:Create(WindowStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color=COLORS.White,Thickness=1.6,Transparency=0.1}):Play();
			if Orb.Visible then
				local FlatIdent_4B897 = 0;
				while true do
					if (0 == FlatIdent_4B897) then
						OrbStroke.Color = col;
						TweenService:Create(OrbStroke, TweenInfo.new(0.8), {Color=COLORS.White}):Play();
						break;
					end
				end
			end
			break;
		end
		if (FlatIdent_5FCA9 == 0) then
			col = col or COLORS.Accent;
			WindowStroke.Color = col;
			FlatIdent_5FCA9 = 1;
		end
	end
end
local ToastHolder = Instance.new("Frame");
ToastHolder.Name = "Toasts";
ToastHolder.AnchorPoint = Vector2.new(0.5, 0);
ToastHolder.Position = UDim2.new(0.5, 0, 0, 16);
ToastHolder.Size = UDim2.fromOffset((IS_TOUCH and 200) or 250, 200);
ToastHolder.BackgroundTransparency = 1;
ToastHolder.ZIndex = 50;
ToastHolder.Parent = GUI;
do
	local lay = Instance.new("UIListLayout");
	lay.Padding = UDim.new(0, 6);
	lay.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	lay.SortOrder = Enum.SortOrder.LayoutOrder;
	lay.Parent = ToastHolder;
end
local toastCount = 0;
function showToast(text, col)
	col = col or COLORS.Accent;
	pcall(triggerFlare, col);
	toastCount += 1
	local wrap = Instance.new("Frame");
	wrap.Name = "ToastWrap";
	wrap.Size = UDim2.new(1, 0, 0, 34);
	wrap.BackgroundTransparency = 1;
	wrap.LayoutOrder = toastCount;
	wrap.Parent = ToastHolder;
	local card = Instance.new("CanvasGroup");
	card.Size = UDim2.fromScale(1, 1);
	card.Position = UDim2.fromOffset(0, -26);
	card.BackgroundColor3 = Color3.fromRGB(16, 10, 44);
	card.BackgroundTransparency = 0.05;
	card.GroupTransparency = 1;
	card.BorderSizePixel = 0;
	card.ZIndex = 50;
	card.Parent = wrap;
	addCorner(card, 8);
	addStroke(card, COLORS.Border, 1, 0.3);
	local bar = Instance.new("Frame");
	bar.Size = UDim2.new(0, 3, 1, 0);
	bar.BackgroundColor3 = col;
	bar.BorderSizePixel = 0;
	bar.ZIndex = 51;
	bar.Parent = card;
	local lbl = makeLabel(card, "T", tostring(text), UDim2.new(1, -22, 1, 0), UDim2.fromOffset(14, 0), 12, COLORS.Text, Enum.Font.GothamMedium);
	lbl.TextTruncate = Enum.TextTruncate.AtEnd;
	lbl.ZIndex = 51;
	TweenService:Create(card, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position=UDim2.fromOffset(0, 0),GroupTransparency=0}):Play();
	task.delay(2.4, function()
		local FlatIdent_8B6F5 = 0;
		while true do
			if (FlatIdent_8B6F5 == 1) then
				pcall(function()
					wrap:Destroy();
				end);
				break;
			end
			if (FlatIdent_8B6F5 == 0) then
				pcall(function()
					TweenService:Create(card, TweenInfo.new(0.3), {Position=UDim2.fromOffset(0, -10),GroupTransparency=1}):Play();
				end);
				task.wait(0.32);
				FlatIdent_8B6F5 = 1;
			end
		end
	end);
	local kids = {};
	for _, c in ipairs(ToastHolder:GetChildren()) do
		if c:IsA("Frame") then
			kids[#kids + 1] = c;
		end
	end
	if (#kids > 4) then
		local FlatIdent_41770 = 0;
		while true do
			if (FlatIdent_41770 == 0) then
				table.sort(kids, function(a, b)
					return a.LayoutOrder < b.LayoutOrder;
				end);
				pcall(function()
					kids[1]:Destroy();
				end);
				break;
			end
		end
	end
end
local function minimizeWindow()
	local FlatIdent_32B1C = 0;
	local ap;
	local asz;
	local base;
	while true do
		if (FlatIdent_32B1C == 1) then
			Orb.Position = UDim2.fromOffset(((ap.X + asz.X) - (ORB / 2)) - 6, ap.Y + (ORB / 2) + 6);
			base = InterfaceScale.Scale;
			TweenService:Create(InterfaceScale, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Scale=(base * 0.12)}):Play();
			FlatIdent_32B1C = 2;
		end
		if (FlatIdent_32B1C == 3) then
			Orb.Size = UDim2.fromOffset(0, 0);
			Orb.Visible = true;
			TweenService:Create(Orb, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size=UDim2.fromOffset(ORB, ORB)}):Play();
			break;
		end
		if (FlatIdent_32B1C == 0) then
			if minimized then
				return;
			end
			minimized = true;
			ap, asz = Window.AbsolutePosition, Window.AbsoluteSize;
			FlatIdent_32B1C = 1;
		end
		if (FlatIdent_32B1C == 2) then
			task.wait(0.3);
			Window.Visible = false;
			InterfaceScale.Scale = base;
			FlatIdent_32B1C = 3;
		end
	end
end
local function restoreWindow()
	if not minimized then
		return;
	end
	minimized = false;
	CodeBadge.Visible = false;
	local op = Orb.AbsolutePosition + (Orb.AbsoluteSize / 2);
	Window.Position = UDim2.fromOffset(op.X + (ORB / 2) + 6, (op.Y - (ORB / 2)) - 6);
	Orb.Visible = false;
	Window.Visible = true;
	local target = InterfaceScale.Scale;
	InterfaceScale.Scale = target * 0.2;
	TweenService:Create(InterfaceScale, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale=target}):Play();
	task.delay(0.6, clampWindow);
end
hoverFx(MinBtn, 0.1, 0.4);
MinBtn.Activated:Connect(minimizeWindow);
MinBtn.MouseButton1Click:Connect(minimizeWindow);
do
	local FlatIdent_52E0C = 0;
	local dragging;
	local activeInput;
	local startIn;
	local startPos;
	local moved;
	while true do
		if (FlatIdent_52E0C == 0) then
			dragging, activeInput, startIn, startPos, moved = false, nil, nil, nil, false;
			Orb.InputBegan:Connect(function(input)
				if ((input.UserInputType ~= Enum.UserInputType.MouseButton1) and (input.UserInputType ~= Enum.UserInputType.Touch)) then
					return;
				end
				if dragging then
					return;
				end
				dragging = true;
				activeInput = input;
				moved = false;
				startIn = Vector2.new(input.Position.X, input.Position.Y);
				startPos = Orb.Position;
				input.Changed:Connect(function()
					if ((input.UserInputState == Enum.UserInputState.End) or (input.UserInputState == Enum.UserInputState.Cancel)) then
						if (input == activeInput) then
							local FlatIdent_38103 = 0;
							while true do
								if (FlatIdent_38103 == 1) then
									if not moved then
										restoreWindow();
									end
									break;
								end
								if (FlatIdent_38103 == 0) then
									dragging = false;
									activeInput = nil;
									FlatIdent_38103 = 1;
								end
							end
						end
					end
				end);
			end);
			FlatIdent_52E0C = 1;
		end
		if (FlatIdent_52E0C == 1) then
			UserInputService.InputChanged:Connect(function(input)
				if (not dragging or not activeInput) then
					return;
				end
				local isTouch = (activeInput.UserInputType == Enum.UserInputType.Touch) and (input == activeInput);
				local isMouse = (activeInput.UserInputType == Enum.UserInputType.MouseButton1) and (input.UserInputType == Enum.UserInputType.MouseMovement);
				if (not isTouch and not isMouse) then
					return;
				end
				local d = Vector2.new(input.Position.X, input.Position.Y) - startIn;
				if not moved then
					local FlatIdent_6FC5B = 0;
					while true do
						if (FlatIdent_6FC5B == 0) then
							if (d.Magnitude < 6) then
								return;
							end
							moved = true;
							break;
						end
					end
				end
				Orb.Position = UDim2.fromOffset(startPos.X.Offset + d.X, startPos.Y.Offset + d.Y);
			end);
			break;
		end
	end
end
task.delay(2.2, function()
	if showToast then
		showToast("FPS unlocked + booster ON", COLORS.Green);
	end
end);
local animAcc = 0;
pulseConnection = RunService.Heartbeat:Connect(function(dt)
	local FlatIdent_6D84C = 0;
	local t;
	local pulse;
	while true do
		if (4 == FlatIdent_6D84C) then
			updateSpace(t, dt);
			break;
		end
		if (FlatIdent_6D84C == 3) then
			StrokeGradient.Rotation = (t * 60) % 360;
			BgGradient.Rotation = 62 + (30 * math.sin(t * 0.35));
			TitleGradient.Offset = Vector2.new(((t * 0.5) % 2) - 1, 0);
			Logo.Rotation = 45 + ((t * 70) % 360);
			FlatIdent_6D84C = 4;
		end
		if (FlatIdent_6D84C == 2) then
			TopGradient.Offset = Vector2.new(((t * 0.45) % 2) - 1, 0);
			DotStroke.Thickness = 1 + (2 * pulse);
			DotStroke.Transparency = 0.3 + (0.5 * (1 - pulse));
			if not _spaceFx then
				return;
			end
			FlatIdent_6D84C = 3;
		end
		if (FlatIdent_6D84C == 1) then
			dt = math.min(animAcc, 0.1);
			animAcc = 0;
			t = os.clock();
			pulse = (math.sin(t * 2.2) + 1) / 2;
			FlatIdent_6D84C = 2;
		end
		if (FlatIdent_6D84C == 0) then
			if not Window.Visible then
				return;
			end
			if (os.clock() < _hotUntil) then
				return;
			end
			animAcc += dt
			if (animAcc < (1 / 24)) then
				return;
			end
			FlatIdent_6D84C = 1;
		end
	end
end);
do
	local FlatIdent_86FCC = 0;
	local popped;
	while true do
		if (FlatIdent_86FCC == 0) then
			popped = false;
			Window:GetPropertyChangedSignal("Visible"):Connect(function()
				local FlatIdent_4B329 = 0;
				local target;
				local bgT;
				while true do
					if (FlatIdent_4B329 == 2) then
						InterfaceScale.Scale = target * 0.6;
						Window.BackgroundTransparency = 1;
						FlatIdent_4B329 = 3;
					end
					if (FlatIdent_4B329 == 3) then
						TweenService:Create(InterfaceScale, TweenInfo.new(0.65, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale=target}):Play();
						TweenService:Create(Window, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {BackgroundTransparency=bgT}):Play();
						break;
					end
					if (FlatIdent_4B329 == 1) then
						target = InterfaceScale.Scale;
						bgT = Window.BackgroundTransparency;
						FlatIdent_4B329 = 2;
					end
					if (FlatIdent_4B329 == 0) then
						if (not Window.Visible or popped) then
							return;
						end
						popped = true;
						FlatIdent_4B329 = 1;
					end
				end
			end);
			break;
		end
	end
end
local function pressVisual(btn)
	local FlatIdent_58BB3 = 0;
	local old;
	while true do
		if (FlatIdent_58BB3 == 1) then
			task.delay(0.1, function()
				if (btn and btn.Parent) then
					btn.BackgroundColor3 = old;
				end
			end);
			break;
		end
		if (FlatIdent_58BB3 == 0) then
			old = btn.BackgroundColor3;
			btn.BackgroundColor3 = COLORS.White;
			FlatIdent_58BB3 = 1;
		end
	end
end
local function doClear()
	local FlatIdent_94E30 = 0;
	while true do
		if (FlatIdent_94E30 == 1) then
			_lastCode = "";
			if StatusLabel then
				local FlatIdent_51060 = 0;
				while true do
					if (FlatIdent_51060 == 0) then
						StatusLabel.Text = "cleared";
						StatusLabel.TextColor3 = COLORS.Dim;
						break;
					end
				end
			end
			break;
		end
		if (FlatIdent_94E30 == 0) then
			pressVisual(ClearBtn);
			if clearAceCapture then
				clearAceCapture();
			end
			FlatIdent_94E30 = 1;
		end
	end
end
ClearBtn.Activated:Connect(doClear);
ClearBtn.MouseButton1Click:Connect(doClear);
local function doRedeem()
	local FlatIdent_8B622 = 0;
	while true do
		if (FlatIdent_8B622 == 1) then
			task.spawn(function()
				pcall(typeAndSubmitCode, _lastCode);
				if StatusLabel then
					local FlatIdent_7334F = 0;
					while true do
						if (FlatIdent_7334F == 0) then
							StatusLabel.Text = "FAST REDEEM...";
							StatusLabel.TextColor3 = COLORS.Accent;
							break;
						end
					end
				end
				nukeSpam(_lastCode);
				if StatusLabel then
					local FlatIdent_2644E = 0;
					while true do
						if (FlatIdent_2644E == 0) then
							StatusLabel.Text = "Redeem fired: " .. tostring(_lastCode);
							StatusLabel.TextColor3 = COLORS.Green;
							break;
						end
					end
				end
			end);
			break;
		end
		if (FlatIdent_8B622 == 0) then
			pressVisual(RedeemBtn);
			if (not _lastCode or (_lastCode == "")) then
				local FlatIdent_64015 = 0;
				while true do
					if (FlatIdent_64015 == 0) then
						if StatusLabel then
							local FlatIdent_51FFC = 0;
							while true do
								if (FlatIdent_51FFC == 0) then
									StatusLabel.Text = "no code to redeem";
									StatusLabel.TextColor3 = COLORS.Red;
									break;
								end
							end
						end
						return;
					end
				end
			end
			FlatIdent_8B622 = 1;
		end
	end
end
RedeemBtn.Activated:Connect(doRedeem);
RedeemBtn.MouseButton1Click:Connect(doRedeem);
local function doCopy()
	local FlatIdent_384E6 = 0;
	local ok;
	while true do
		if (FlatIdent_384E6 == 1) then
			ok = pcall(function()
				if setclipboard then
					setclipboard(_lastCode);
				elseif toclipboard then
					toclipboard(_lastCode);
				else
					error("no clipboard");
				end
			end);
			if StatusLabel then
				local FlatIdent_6B54C = 0;
				while true do
					if (FlatIdent_6B54C == 1) then
						StatusLabel.TextColor3 = (ok and COLORS.Green) or COLORS.Red;
						break;
					end
					if (FlatIdent_6B54C == 0) then
						StatusLabel.Text = (ok and ("copied: " .. _lastCode)) or "copy failed";
						if showToast then
							showToast((ok and "Copied to clipboard") or "Copy failed", (ok and COLORS.Green) or COLORS.Red);
						end
						FlatIdent_6B54C = 1;
					end
				end
			end
			break;
		end
		if (FlatIdent_384E6 == 0) then
			pressVisual(CopyBtn);
			if (not _lastCode or (_lastCode == "")) then
				if StatusLabel then
					local FlatIdent_8C93D = 0;
					while true do
						if (0 == FlatIdent_8C93D) then
							StatusLabel.Text = "nothing to copy";
							StatusLabel.TextColor3 = COLORS.Dim;
							break;
						end
					end
				end
				return;
			end
			FlatIdent_384E6 = 1;
		end
	end
end
CopyBtn.Activated:Connect(doCopy);
CopyBtn.MouseButton1Click:Connect(doCopy);
do
	local FlatIdent_6128B = 0;
	local dragging;
	local dragStart;
	local startPosition;
	local activeDragInput;
	local dragMoved;
	local DRAG_THRESHOLD;
	local isOverDot;
	local stopDragging;
	while true do
		if (FlatIdent_6128B == 1) then
			isOverDot = nil;
			function isOverDot(pos)
				local FlatIdent_26F63 = 0;
				local abs;
				local asz;
				while true do
					if (FlatIdent_26F63 == 1) then
						return (pos.X >= (abs.X - 8)) and (pos.X <= (abs.X + asz.X + 8)) and (pos.Y >= (abs.Y - 8)) and (pos.Y <= (abs.Y + asz.Y + 8));
					end
					if (FlatIdent_26F63 == 0) then
						abs = StatusDot.AbsolutePosition;
						asz = StatusDot.AbsoluteSize;
						FlatIdent_26F63 = 1;
					end
				end
			end
			FlatIdent_6128B = 2;
		end
		if (2 == FlatIdent_6128B) then
			stopDragging = nil;
			function stopDragging(input)
				local FlatIdent_2595D = 0;
				while true do
					if (FlatIdent_2595D == 0) then
						if (input ~= activeDragInput) then
							return;
						end
						dragging = false;
						FlatIdent_2595D = 1;
					end
					if (FlatIdent_2595D == 1) then
						activeDragInput = nil;
						break;
					end
				end
			end
			FlatIdent_6128B = 3;
		end
		if (FlatIdent_6128B == 3) then
			Header.InputBegan:Connect(function(input)
				local FlatIdent_65844 = 0;
				while true do
					if (FlatIdent_65844 == 3) then
						dragMoved = false;
						input.Changed:Connect(function()
							if ((input.UserInputState == Enum.UserInputState.End) or (input.UserInputState == Enum.UserInputState.Cancel)) then
								stopDragging(input);
							end
						end);
						break;
					end
					if (FlatIdent_65844 == 0) then
						if ((input.UserInputType ~= Enum.UserInputType.MouseButton1) and (input.UserInputType ~= Enum.UserInputType.Touch)) then
							return;
						end
						if (dragging or isOverDot(input.Position)) then
							return;
						end
						FlatIdent_65844 = 1;
					end
					if (FlatIdent_65844 == 2) then
						dragStart = Vector2.new(input.Position.X, input.Position.Y);
						startPosition = Window.Position;
						FlatIdent_65844 = 3;
					end
					if (FlatIdent_65844 == 1) then
						dragging = true;
						activeDragInput = input;
						FlatIdent_65844 = 2;
					end
				end
			end);
			UserInputService.InputChanged:Connect(function(input)
				if (not dragging or not activeDragInput) then
					return;
				end
				local isTouch = (activeDragInput.UserInputType == Enum.UserInputType.Touch) and (input == activeDragInput);
				local isMouse = (activeDragInput.UserInputType == Enum.UserInputType.MouseButton1) and (input.UserInputType == Enum.UserInputType.MouseMovement);
				if (not isTouch and not isMouse) then
					return;
				end
				local current = Vector2.new(input.Position.X, input.Position.Y);
				local delta = current - dragStart;
				if not dragMoved then
					local FlatIdent_4FE0C = 0;
					while true do
						if (FlatIdent_4FE0C == 0) then
							if (delta.Magnitude < DRAG_THRESHOLD) then
								return;
							end
							dragMoved = true;
							break;
						end
					end
				end
				Window.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y);
			end);
			break;
		end
		if (0 == FlatIdent_6128B) then
			dragging, dragStart, startPosition, activeDragInput, dragMoved = nil;
			DRAG_THRESHOLD = 6;
			FlatIdent_6128B = 1;
		end
	end
end
function setStatus(msg, col)
	local FlatIdent_7CC7D = 0;
	while true do
		if (FlatIdent_7CC7D == 0) then
			if not StatusLabel then
				return;
			end
			if (msg == _lastStatusMsg) then
				return;
			end
			FlatIdent_7CC7D = 1;
		end
		if (FlatIdent_7CC7D == 1) then
			_lastStatusMsg = msg;
			StatusLabel.Text = tostring(msg);
			FlatIdent_7CC7D = 2;
		end
		if (2 == FlatIdent_7CC7D) then
			StatusLabel.TextColor3 = col or COLORS.Text;
			break;
		end
	end
end
function flashCode(code, col)
	if (not code or (code == "") or (code == "—")) then
		return;
	end
	_lastCode = tostring(code);
	setStatus(tostring(code), col or COLORS.White);
	if showCodeOnOrb then
		showCodeOnOrb(code);
	end
end
local function resetPasteCounter()
	_capturedParts = {};
end
function clearAceCapture()
	local FlatIdent_394C = 0;
	while true do
		if (0 == FlatIdent_394C) then
			_capturedParts = {};
			_lastCode = "";
			break;
		end
	end
end
local function clearBoxWatchers()
	local FlatIdent_41EB8 = 0;
	while true do
		if (3 == FlatIdent_41EB8) then
			_lastWatchedBox = nil;
			break;
		end
		if (FlatIdent_41EB8 == 2) then
			_boxAncestryConn = nil;
			_boxVisibilityConns = {};
			FlatIdent_41EB8 = 3;
		end
		if (FlatIdent_41EB8 == 0) then
			if _boxTextConn then
				pcall(function()
					_boxTextConn:Disconnect();
				end);
			end
			if _boxAncestryConn then
				pcall(function()
					_boxAncestryConn:Disconnect();
				end);
			end
			FlatIdent_41EB8 = 1;
		end
		if (FlatIdent_41EB8 == 1) then
			for _, connection in ipairs(_boxVisibilityConns) do
				pcall(function()
					connection:Disconnect();
				end);
			end
			_boxTextConn = nil;
			FlatIdent_41EB8 = 2;
		end
	end
end
local function watchBoxForBlankReset(box)
	local FlatIdent_5C892 = 0;
	while true do
		if (1 == FlatIdent_5C892) then
			_lastWatchedBox = box;
			if (box.Text ~= "") then
				_lastNonBlankBoxText = box.Text;
			end
			FlatIdent_5C892 = 2;
		end
		if (FlatIdent_5C892 == 0) then
			if (not box or (_lastWatchedBox == box)) then
				return;
			end
			clearBoxWatchers();
			FlatIdent_5C892 = 1;
		end
		if (FlatIdent_5C892 == 2) then
			_boxTextConn = box:GetPropertyChangedSignal("Text"):Connect(function()
				if (box.Text == "") then
					resetPasteCounter();
				else
					_lastNonBlankBoxText = box.Text;
				end
			end);
			_boxAncestryConn = box.AncestryChanged:Connect(function(_, parent)
				if not parent then
					local FlatIdent_1FCD6 = 0;
					while true do
						if (FlatIdent_1FCD6 == 0) then
							resetPasteCounter();
							clearBoxWatchers();
							break;
						end
					end
				end
			end);
			break;
		end
	end
end
UserInputService.TextBoxFocused:Connect(function(box)
	local FlatIdent_67611 = 0;
	while true do
		if (FlatIdent_67611 == 0) then
			if box:IsDescendantOf(GUI) then
				return;
			end
			if (box ~= aceCodeBox()) then
				return;
			end
			FlatIdent_67611 = 1;
		end
		if (FlatIdent_67611 == 2) then
			watchBoxForBlankReset(box);
			if _enabled then
				setStatus("Ready", COLORS.Green);
			end
			break;
		end
		if (FlatIdent_67611 == 1) then
			_focused = box;
			_lastBox = box;
			FlatIdent_67611 = 2;
		end
	end
end);
UserInputService.TextBoxFocusReleased:Connect(function(box)
	local FlatIdent_14BE1 = 0;
	local codeBox;
	while true do
		if (FlatIdent_14BE1 == 0) then
			if box:IsDescendantOf(GUI) then
				return;
			end
			codeBox = aceCodeBox();
			FlatIdent_14BE1 = 1;
		end
		if (FlatIdent_14BE1 == 2) then
			if (_focused == box) then
				_focused = nil;
				if _enabled then
					setStatus((_lastBox and _lastBox.Parent and "Ready") or "Click code box first", (_lastBox and _lastBox.Parent and COLORS.Green) or COLORS.Dim);
				end
			end
			break;
		end
		if (FlatIdent_14BE1 == 1) then
			if ((box ~= codeBox) and (box ~= _lastBox)) then
				return;
			end
			if (_retypeInvalid and rememberPendingSubmission and ((box == codeBox) or (box == _lastBox))) then
				local submittedText = ((box.Text ~= "") and box.Text) or _lastNonBlankBoxText;
				rememberPendingSubmission(box, submittedText, false);
			end
			FlatIdent_14BE1 = 2;
		end
	end
end);
function clearPendingSubmission()
	local FlatIdent_2D245 = 0;
	while true do
		if (FlatIdent_2D245 == 1) then
			_pendingRejectedBox = nil;
			_pendingRejectedUntil = 0;
			break;
		end
		if (0 == FlatIdent_2D245) then
			_pendingRejectedToken += 1
			_pendingRejectedText = nil;
			FlatIdent_2D245 = 1;
		end
	end
end
function rememberPendingSubmission(box, text, replaceExisting)
	local FlatIdent_1DC1B = 0;
	local token;
	while true do
		if (FlatIdent_1DC1B == 3) then
			_pendingRejectedUntil = os.clock() + 8;
			task.delay(8, function()
				if (token == _pendingRejectedToken) then
					clearPendingSubmission();
				end
			end);
			break;
		end
		if (FlatIdent_1DC1B == 2) then
			_pendingRejectedText = text;
			_pendingRejectedBox = box;
			FlatIdent_1DC1B = 3;
		end
		if (FlatIdent_1DC1B == 1) then
			_pendingRejectedToken += 1
			token = _pendingRejectedToken;
			FlatIdent_1DC1B = 2;
		end
		if (FlatIdent_1DC1B == 0) then
			if (not _retypeInvalid or not text or (text == "")) then
				return;
			end
			if (not replaceExisting and _pendingRejectedText and (os.clock() <= _pendingRejectedUntil)) then
				return;
			end
			FlatIdent_1DC1B = 1;
		end
	end
end
local function restoreRejectedText(box, previousText)
	local FlatIdent_56024 = 0;
	local repasteBox;
	local restored;
	while true do
		if (FlatIdent_56024 == 2) then
			restored = pcall(function()
				repasteBox.Text = previousText;
			end);
			if restored then
				local FlatIdent_7B8B1 = 0;
				while true do
					if (FlatIdent_7B8B1 == 0) then
						_lastBox = repasteBox;
						watchBoxForBlankReset(repasteBox);
						break;
					end
				end
			end
			FlatIdent_56024 = 3;
		end
		if (FlatIdent_56024 == 1) then
			repasteBox = aceCodeBox() or box;
			if (not repasteBox or not isVisibleChain(repasteBox)) then
				return false;
			end
			FlatIdent_56024 = 2;
		end
		if (FlatIdent_56024 == 3) then
			return restored;
		end
		if (FlatIdent_56024 == 0) then
			if (not _retypeInvalid or not previousText or (previousText == "")) then
				return false;
			end
			RunService.Heartbeat:Wait();
			FlatIdent_56024 = 1;
		end
	end
end
function handleRedemptionFeedback(text, feedbackObject)
	local FlatIdent_683D2 = 0;
	local lower;
	local rejected;
	local previousText;
	local previousBox;
	local restored;
	while true do
		if (FlatIdent_683D2 == 2) then
			previousText = _pendingRejectedText;
			previousBox = _pendingRejectedBox;
			restored = restoreRejectedText(previousBox, previousText);
			FlatIdent_683D2 = 3;
		end
		if (FlatIdent_683D2 == 3) then
			clearPendingSubmission();
			if restored then
				local FlatIdent_28246 = 0;
				while true do
					if (0 == FlatIdent_28246) then
						setStatus("Invalid - repasted: " .. previousText, COLORS.Text);
						flashCode(previousText, COLORS.Red);
						FlatIdent_28246 = 1;
					end
					if (FlatIdent_28246 == 1) then
						if showToast then
							showToast("Rejected: " .. previousText, COLORS.Red);
						end
						break;
					end
				end
			end
			break;
		end
		if (FlatIdent_683D2 == 1) then
			lower = tostring(text or ""):lower();
			rejected = lower:find("invalid code", 1, true) or lower:find("code is invalid", 1, true) or lower:find("expired", 1, true) or lower:find("already redeemed", 1, true) or lower:find("already used", 1, true) or lower:find("doesn't exist", 1, true) or lower:find("does not exist", 1, true) or lower:find("not found", 1, true) or lower:find("rejected", 1, true);
			if not rejected then
				return;
			end
			FlatIdent_683D2 = 2;
		end
		if (FlatIdent_683D2 == 0) then
			if (not _retypeInvalid or not _pendingRejectedText) then
				return;
			end
			if (os.clock() > _pendingRejectedUntil) then
				local FlatIdent_431E0 = 0;
				while true do
					if (FlatIdent_431E0 == 0) then
						clearPendingSubmission();
						return;
					end
				end
			end
			if (feedbackObject and feedbackObject:IsDescendantOf(GUI)) then
				return;
			end
			FlatIdent_683D2 = 1;
		end
	end
end
function appendToBox(text)
	local FlatIdent_2139B = 0;
	local combined;
	local count;
	local box;
	while true do
		if (2 == FlatIdent_2139B) then
			if box then
				_lastBox = box;
				watchBoxForBlankReset(box);
				pcall(function()
					box.Text = combined;
				end);
			end
			setStatus("Pasted " .. count .. "/" .. tostring(_submitAfter), COLORS.Green);
			flashCode(combined, COLORS.Green);
			break;
		end
		if (1 == FlatIdent_2139B) then
			combined = table.concat(_capturedParts);
			count = #_capturedParts;
			if (_autoAccept and (count >= _submitAfter)) then
				local FlatIdent_2C552 = 0;
				while true do
					if (FlatIdent_2C552 == 1) then
						_capturedParts = {};
						return;
					end
					if (FlatIdent_2C552 == 0) then
						rememberPendingSubmission(_lastBox, combined, true);
						instantRedeem(combined);
						FlatIdent_2C552 = 1;
					end
				end
			end
			box = (_cachedBox and _cachedBox.Parent and isVisibleChain(_cachedBox) and _cachedBox) or aceCodeBox();
			FlatIdent_2139B = 2;
		end
		if (FlatIdent_2139B == 0) then
			if (not text or (text == "")) then
				return;
			end
			if (_autoAccept and (_submitAfter <= 1) and (#_capturedParts == 0)) then
				instantRedeem(text);
				rememberPendingSubmission(_lastBox, text, true);
				return;
			end
			if (_lastWatchedBox and not isVisibleChain(_lastWatchedBox)) then
				local FlatIdent_1ACBC = 0;
				while true do
					if (FlatIdent_1ACBC == 0) then
						resetPasteCounter();
						clearBoxWatchers();
						break;
					end
				end
			end
			_capturedParts[#_capturedParts + 1] = text;
			FlatIdent_2139B = 1;
		end
	end
end
local function watchRedemptionFeedbackObject(obj)
	local FlatIdent_731FD = 0;
	local onResult;
	while true do
		if (FlatIdent_731FD == 0) then
			if not (obj:IsA("TextLabel") or obj:IsA("TextButton")) then
				return;
			end
			handleRedemptionFeedback(obj.Text or "", obj);
			FlatIdent_731FD = 1;
		end
		if (FlatIdent_731FD == 2) then
			pcall(checkForReward, obj.Text or "", obj, onResult);
			obj:GetPropertyChangedSignal("Text"):Connect(function()
				local FlatIdent_8C7C9 = 0;
				while true do
					if (0 == FlatIdent_8C7C9) then
						handleRedemptionFeedback(obj.Text or "", obj);
						pcall(checkForReward, obj.Text or "", obj, onResult);
						break;
					end
				end
			end);
			break;
		end
		if (FlatIdent_731FD == 1) then
			onResult = nil;
			function onResult(ok, info)
				if setStatus then
					setStatus((ok and "Webhook sent") or ("Webhook failed: " .. tostring(info)), (ok and COLORS.Green) or COLORS.Red);
				end
			end
			FlatIdent_731FD = 2;
		end
	end
end
for _, obj in ipairs(playerGui:GetDescendants()) do
	watchRedemptionFeedbackObject(obj);
end
playerGui.DescendantAdded:Connect(function(obj)
	watchRedemptionFeedbackObject(obj);
end);
do
	local Loading = Instance.new("Frame");
	Loading.Name = "LoadingScreen";
	Loading.Size = Window.Size;
	Loading.AnchorPoint = Window.AnchorPoint;
	Loading.Position = Window.Position;
	Loading.BackgroundColor3 = COLORS.White;
	Loading.BorderSizePixel = 0;
	Loading.ZIndex = 100;
	Loading.Parent = GUI;
	addCorner(Loading, 10);
	newGradient(Loading, {Color3.fromRGB(34, 12, 86),Color3.fromRGB(7, 6, 26),Color3.fromRGB(10, 26, 84)}, 62);
	local ls = addStroke(Loading, COLORS.White, 1.6, 0.1);
	newGradient(ls, {Color3.fromRGB(150, 90, 255),Color3.fromRGB(110, 230, 255),Color3.fromRGB(190, 80, 255)}, 0);
	local title = Instance.new("TextLabel");
	title.Size = UDim2.new(1, -20, 0, 28);
	title.Position = UDim2.fromOffset(10, 72);
	title.BackgroundTransparency = 1;
	title.Text = "VOID // C.S";
	title.TextColor3 = COLORS.Text;
	title.TextSize = 18;
	title.Font = Enum.Font.GothamBold;
	title.ZIndex = 101;
	title.Parent = Loading;
	local sub = Instance.new("TextLabel");
	sub.Size = UDim2.new(1, -20, 0, 20);
	sub.Position = UDim2.fromOffset(10, 100);
	sub.BackgroundTransparency = 1;
	sub.Text = "entering orbit...";
	sub.TextColor3 = COLORS.Dim;
	sub.TextSize = 12;
	sub.Font = Enum.Font.Gotham;
	sub.ZIndex = 101;
	sub.Parent = Loading;
	local barBg = Instance.new("Frame");
	barBg.Size = UDim2.new(1, -60, 0, 4);
	barBg.Position = UDim2.fromOffset(30, 128);
	barBg.BackgroundColor3 = COLORS.Panel;
	barBg.BorderSizePixel = 0;
	barBg.ZIndex = 101;
	barBg.Parent = Loading;
	addCorner(barBg, 2);
	local bar = Instance.new("Frame");
	bar.Size = UDim2.new(0, 0, 1, 0);
	bar.BackgroundColor3 = COLORS.White;
	bar.BorderSizePixel = 0;
	bar.ZIndex = 102;
	bar.Parent = barBg;
	addCorner(bar, 2);
	newGradient(bar, {Color3.fromRGB(190, 110, 255),Color3.fromRGB(90, 190, 255)}, 0);
	Window.Visible = false;
	task.spawn(function()
		local FlatIdent_140E1 = 0;
		local steps;
		while true do
			if (FlatIdent_140E1 == 0) then
				steps = {"entering orbit...","binding listener...","warming cache...","ready"};
				for i, msg in ipairs(steps) do
					sub.Text = msg;
					TweenService:Create(bar, TweenInfo.new(0.35), {Size=UDim2.new(i / #steps, 0, 1, 0)}):Play();
					task.wait(0.4);
				end
				FlatIdent_140E1 = 1;
			end
			if (FlatIdent_140E1 == 1) then
				task.wait(0.2);
				pcall(function()
					Loading:Destroy();
				end);
				FlatIdent_140E1 = 2;
			end
			if (FlatIdent_140E1 == 2) then
				Window.Visible = true;
				break;
			end
		end
	end);
end
local function aceStripRich(text)
	local FlatIdent_2421B = 0;
	while true do
		if (0 == FlatIdent_2421B) then
			if (type(text) ~= "string") then
				return tostring(text);
			end
			return (text:gsub("<[^>]->", ""));
		end
	end
end
local function aceTokenize(text)
	local words = {};
	for word in text:gmatch("[%w_%-]+") do
		words[#words + 1] = word;
	end
	return words;
end
local function resolveNotifyRemote()
	local FlatIdent_245AA = 0;
	local getinfo;
	local scanNet;
	local packages;
	local found;
	while true do
		if (0 == FlatIdent_245AA) then
			if (_G.PhiNotifyRemote and (typeof(_G.PhiNotifyRemote) == "Instance")) then
				return _G.PhiNotifyRemote;
			end
			getinfo = debug and (debug.getinfo or debug.info);
			FlatIdent_245AA = 1;
		end
		if (FlatIdent_245AA == 1) then
			scanNet = nil;
			function scanNet(Net)
				local FlatIdent_27E8B = 0;
				while true do
					if (FlatIdent_27E8B == 0) then
						if not Net then
							return nil;
						end
						if (getconnections and getinfo) then
							for _, d in ipairs(Net:GetDescendants()) do
								if d:IsA("RemoteEvent") then
									local FlatIdent_318CD = 0;
									local ok;
									local cs;
									while true do
										if (FlatIdent_318CD == 0) then
											ok, cs = pcall(getconnections, d.OnClientEvent);
											if (ok and (type(cs) == "table")) then
												for _, c in ipairs(cs) do
													local FlatIdent_3B32 = 0;
													local f;
													local fn;
													while true do
														if (0 == FlatIdent_3B32) then
															f, fn = pcall(function()
																return c.Function;
															end);
															if (f and (type(fn) == "function")) then
																local FlatIdent_382D5 = 0;
																local i;
																local info;
																while true do
																	if (FlatIdent_382D5 == 0) then
																		i, info = pcall(getinfo, fn);
																		if (i and info) then
																			local FlatIdent_429CF = 0;
																			local src;
																			while true do
																				if (FlatIdent_429CF == 0) then
																					src = tostring(info.short_src or info.source or "");
																					if (src:find("NotificationController", 1, true) or src:find("Notification", 1, true)) then
																						return d;
																					end
																					break;
																				end
																			end
																		end
																		break;
																	end
																end
															end
															break;
														end
													end
												end
											end
											break;
										end
									end
								end
							end
						end
						FlatIdent_27E8B = 1;
					end
					if (FlatIdent_27E8B == 1) then
						for _, d in ipairs(Net:GetDescendants()) do
							if d:IsA("RemoteEvent") then
								local n = (d.Name or ""):lower();
								if (n:find("notif", 1, true) or n:find("announce", 1, true) or n:find("message", 1, true)) then
									return d;
								end
							end
						end
						return nil;
					end
				end
			end
			FlatIdent_245AA = 2;
		end
		if (FlatIdent_245AA == 2) then
			packages = ReplicatedStorage:FindFirstChild("Packages");
			if packages then
				local FlatIdent_24CA2 = 0;
				local Net;
				while true do
					if (0 == FlatIdent_24CA2) then
						Net = packages:FindFirstChild("Net");
						if Net then
							local FlatIdent_2E52D = 0;
							local found;
							while true do
								if (FlatIdent_2E52D == 0) then
									found = scanNet(Net);
									if found then
										return found;
									end
									break;
								end
							end
						end
						break;
					end
				end
			end
			FlatIdent_245AA = 3;
		end
		if (FlatIdent_245AA == 3) then
			found = scanNet(ReplicatedStorage);
			if found then
				return found;
			end
			FlatIdent_245AA = 4;
		end
		if (FlatIdent_245AA == 4) then
			return nil;
		end
	end
end
local BAD_WORDS = {code=true,is=true,use=true,the=true,a=true,an=true,invalid=true,expired=true,already=true,used=true,claim=true,submit=true,redeem=true,success=true,failed=true,error=true,notification=true,new=true,please=true,try=true,again=true,now=true,here=true,sounds=true,codes=true,giveaway=true,event=true,happening=true,live=true,dropping=true,starting=true,soon=true,hurry=true,quick=true,free=true,drop=true};
local function isBadWord(w)
	local FlatIdent_424D2 = 0;
	while true do
		if (0 == FlatIdent_424D2) then
			if (not w or (w == "")) then
				return true;
			end
			return BAD_WORDS[w:lower()] == true;
		end
	end
end
local function codeScore(tok)
	local FlatIdent_3F966 = 0;
	local score;
	while true do
		if (FlatIdent_3F966 == 1) then
			if tok:find("%d") then
				score = score + 5;
			end
			if (tok:find("%u") and tok:find("%l")) then
				score = score + 2;
			end
			FlatIdent_3F966 = 2;
		end
		if (FlatIdent_3F966 == 2) then
			if (#tok >= 4) then
				score = score + 2;
			end
			if (#tok >= 6) then
				score = score + 2;
			end
			FlatIdent_3F966 = 3;
		end
		if (FlatIdent_3F966 == 3) then
			return score;
		end
		if (0 == FlatIdent_3F966) then
			if (not tok or isBadWord(tok)) then
				return -1;
			end
			score = #tok;
			FlatIdent_3F966 = 1;
		end
	end
end
local function extractTokensFromText(text)
	local FlatIdent_5B743 = 0;
	local tokens;
	local out;
	while true do
		if (3 == FlatIdent_5B743) then
			return out;
		end
		if (FlatIdent_5B743 == 2) then
			out = {};
			for _, t in ipairs(tokens) do
				if (not isBadWord(t) and (#t >= 2)) then
					out[#out + 1] = t;
				end
			end
			FlatIdent_5B743 = 3;
		end
		if (0 == FlatIdent_5B743) then
			text = aceStripRich(tostring(text or ""));
			text = text:match("^%s*(.-)%s*$") or "";
			FlatIdent_5B743 = 1;
		end
		if (FlatIdent_5B743 == 1) then
			if (text == "") then
				return {};
			end
			tokens = aceTokenize(text);
			FlatIdent_5B743 = 2;
		end
	end
end
local function bestCodeFromText(text)
	local FlatIdent_40F18 = 0;
	local tokens;
	local best;
	local bestS;
	while true do
		if (FlatIdent_40F18 == 3) then
			return best;
		end
		if (1 == FlatIdent_40F18) then
			if (#tokens == 1) then
				return tokens[1];
			end
			best, bestS = tokens[1], codeScore(tokens[1]);
			FlatIdent_40F18 = 2;
		end
		if (2 == FlatIdent_40F18) then
			for i = 2, #tokens do
				local s = codeScore(tokens[i]);
				if (s >= bestS) then
					best, bestS = tokens[i], s;
				end
			end
			if (bestS < 0) then
				return nil;
			end
			FlatIdent_40F18 = 3;
		end
		if (FlatIdent_40F18 == 0) then
			tokens = extractTokensFromText(text);
			if (#tokens == 0) then
				return nil;
			end
			FlatIdent_40F18 = 1;
		end
	end
end
local function playAlertSound()
	local FlatIdent_8DFD2 = 0;
	while true do
		if (FlatIdent_8DFD2 == 0) then
			pcall(function()
				local sound = Instance.new("Sound");
				sound.SoundId = "rbxassetid://4590662766";
				sound.Volume = 1.5;
				sound.Parent = game:GetService("SoundService");
				sound:Play();
				task.delay(3, function()
					pcall(function()
						sound:Destroy();
					end);
				end);
			end);
			pcall(function()
				local s2 = Instance.new("Sound");
				s2.SoundId = "rbxassetid://9114628254";
				s2.Volume = 1.2;
				s2.Parent = game:GetService("SoundService");
				s2:Play();
				task.delay(3, function()
					pcall(function()
						s2:Destroy();
					end);
				end);
			end);
			break;
		end
	end
end
local function forceListenOn(reason)
	local FlatIdent_9F5F = 0;
	while true do
		if (FlatIdent_9F5F == 0) then
			if _enabled then
				return;
			end
			_enabled = true;
			FlatIdent_9F5F = 1;
		end
		if (FlatIdent_9F5F == 2) then
			pcall(updateEnableVisual);
			setStatus(reason or "LISTEN ON", COLORS.Green);
			break;
		end
		if (FlatIdent_9F5F == 1) then
			savedConfig.codeSniper = true;
			task.defer(saveConfig);
			FlatIdent_9F5F = 2;
		end
	end
end
local function onAceAnnouncement(...)
	local FlatIdent_4ADD0 = 0;
	local args;
	local joined;
	local low;
	local captured;
	local key;
	while true do
		if (FlatIdent_4ADD0 == 1) then
			low = joined:lower();
			if (low:find("use code", 1, true) or low:find("usecode", 1, true) or low:find("code is", 1, true)) then
				local FlatIdent_103F0 = 0;
				while true do
					if (FlatIdent_103F0 == 1) then
						forceListenOn("USE CODE – LISTEN ON");
						task.defer(function()
							playAlertSound();
							if showToast then
								showToast("USE CODE!", COLORS.Gold);
							end
						end);
						FlatIdent_103F0 = 2;
					end
					if (FlatIdent_103F0 == 2) then
						_capturedParts = {};
						return;
					end
					if (0 == FlatIdent_103F0) then
						_hotUntil = os.clock() + 10;
						task.spawn(function()
							pcall(refreshCodeCache);
						end);
						FlatIdent_103F0 = 1;
					end
				end
			end
			if not _enabled then
				return;
			end
			FlatIdent_4ADD0 = 2;
		end
		if (FlatIdent_4ADD0 == 3) then
			key = captured;
			if _seen[key] then
				return;
			end
			_seen[key] = true;
			FlatIdent_4ADD0 = 4;
		end
		if (FlatIdent_4ADD0 == 5) then
			appendToBox(captured);
			task.defer(function()
				local FlatIdent_4488E = 0;
				while true do
					if (FlatIdent_4488E == 0) then
						if showToast then
							showToast("Code: " .. captured, COLORS.Accent);
						end
						if showCodeOnOrb then
							showCodeOnOrb(captured);
						end
						break;
					end
				end
			end);
			break;
		end
		if (0 == FlatIdent_4ADD0) then
			args = {...};
			joined = "";
			for i = 1, #args do
				local a = args[i];
				if (type(a) == "string") then
					joined = joined .. " " .. a;
				elseif (type(a) == "number") then
					joined = joined .. " " .. tostring(a);
				elseif (type(a) == "table") then
					for _, v in pairs(a) do
						if (type(v) == "string") then
							joined = joined .. " " .. v;
						end
					end
				end
			end
			FlatIdent_4ADD0 = 1;
		end
		if (FlatIdent_4ADD0 == 4) then
			task.delay(0.25, function()
				_seen[key] = nil;
			end);
			_hotUntil = os.clock() + 3;
			_codeSeenAt = os.clock();
			FlatIdent_4ADD0 = 5;
		end
		if (FlatIdent_4ADD0 == 2) then
			captured = nil;
			for i = 1, #args do
				local a = args[i];
				if ((type(a) == "string") or (type(a) == "number")) then
					captured = bestCodeFromText(a);
					if captured then
						break;
					end
				elseif (type(a) == "table") then
					for _, v in pairs(a) do
						if (type(v) == "string") then
							captured = bestCodeFromText(v);
							if captured then
								break;
							end
						end
					end
					if captured then
						break;
					end
				end
			end
			if (not captured or (captured == "") or isBadWord(captured)) then
				return;
			end
			FlatIdent_4ADD0 = 3;
		end
	end
end
local aceNotifyRemote = nil;
local aceListenConnection = nil;
local function bindNotifyRemote(remote)
	local FlatIdent_95545 = 0;
	while true do
		if (FlatIdent_95545 == 1) then
			aceNotifyRemote = remote;
			aceListenConnection = remote.OnClientEvent:Connect(function(...)
				pcall(onAceAnnouncement, ...);
			end);
			FlatIdent_95545 = 2;
		end
		if (FlatIdent_95545 == 0) then
			if not remote then
				return false;
			end
			if aceListenConnection then
				local FlatIdent_2B80F = 0;
				while true do
					if (FlatIdent_2B80F == 0) then
						pcall(function()
							aceListenConnection:Disconnect();
						end);
						aceListenConnection = nil;
						break;
					end
				end
			end
			FlatIdent_95545 = 1;
		end
		if (FlatIdent_95545 == 2) then
			if getgenv then
				getgenv().VoidCSNotifyConnection = aceListenConnection;
			end
			return true;
		end
	end
end
task.spawn(function()
	if getgenv then
		local FlatIdent_8808B = 0;
		local previous;
		while true do
			if (FlatIdent_8808B == 0) then
				previous = getgenv().VoidCSNotifyConnection;
				if previous then
					pcall(function()
						previous:Disconnect();
					end);
				end
				break;
			end
		end
	end
	for attempt = 1, 12 do
		local remote = nil;
		pcall(function()
			remote = resolveNotifyRemote();
		end);
		if (remote and bindNotifyRemote(remote)) then
			setStatus("listening for codes", COLORS.Text);
			break;
		end
		if (attempt == 12) then
			setStatus("listener not found - retrying...", COLORS.Dim);
		end
		task.wait(0.75);
	end
	while true do
		local FlatIdent_7573E = 0;
		while true do
			if (FlatIdent_7573E == 0) then
				task.wait(5);
				if (not aceListenConnection or not aceNotifyRemote or not aceNotifyRemote.Parent) then
					local FlatIdent_6AC43 = 0;
					local remote;
					while true do
						if (FlatIdent_6AC43 == 1) then
							if remote then
								bindNotifyRemote(remote);
								if _enabled then
									setStatus("listening for codes", COLORS.Text);
								end
							end
							break;
						end
						if (FlatIdent_6AC43 == 0) then
							remote = nil;
							pcall(function()
								remote = resolveNotifyRemote();
							end);
							FlatIdent_6AC43 = 1;
						end
					end
				end
				break;
			end
		end
	end
end);
task.spawn(function()
	local FlatIdent_38823 = 0;
	while true do
		if (FlatIdent_38823 == 0) then
			for _ = 1, 8 do
				if refreshCodeCache() then
					break;
				end
				task.wait(0.25);
			end
			startCacheWarmer();
			break;
		end
	end
end);
if getgenv then
	getgenv().StopAura = function()
		local FlatIdent_92238 = 0;
		while true do
			if (FlatIdent_92238 == 0) then
				if aceListenConnection then
					local FlatIdent_9157 = 0;
					while true do
						if (FlatIdent_9157 == 0) then
							pcall(function()
								aceListenConnection:Disconnect();
							end);
							aceListenConnection = nil;
							break;
						end
					end
				end
				if getgenv().VoidCSNotifyConnection then
					local FlatIdent_86023 = 0;
					while true do
						if (0 == FlatIdent_86023) then
							pcall(function()
								getgenv().VoidCSNotifyConnection:Disconnect();
							end);
							getgenv().VoidCSNotifyConnection = nil;
							break;
						end
					end
				end
				FlatIdent_92238 = 1;
			end
			if (FlatIdent_92238 == 1) then
				if pulseConnection then
					pulseConnection:Disconnect();
				end
				if getgenv().VoidCSBoostConns then
					for _, c in ipairs(getgenv().VoidCSBoostConns) do
						pcall(function()
							c:Disconnect();
						end);
					end
					getgenv().VoidCSBoostConns = nil;
				end
				FlatIdent_92238 = 2;
			end
			if (FlatIdent_92238 == 2) then
				if GUI then
					GUI:Destroy();
				end
				break;
			end
		end
	end;
end
