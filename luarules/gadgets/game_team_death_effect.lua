function gadget:GetInfo()
	return {
		name = "Team Death Effect",
		desc = "blows up a teams units in a gradual/wave like manner",
		author = "Floris", -- original: KDR_11k (David Becker)",
		date = "September 2021",
		license = "",
		layer = 1,
		enabled = true
	}
end

-- this gadget wont do: Spring.KillTeam(...)

if not gadgetHandler:IsSyncedCode() then
	return
end

local wavePeriod = 600

--local spSpawnCEG = Spring.SpawnCEG
local spDestroyUnit = Spring.DestroyUnit
local spGetUnitPosition = Spring.GetUnitPosition
local DISTANCE_LIMIT = math.max(Game.mapSizeX,Game.mapSizeZ) * math.max(Game.mapSizeX,Game.mapSizeZ)
local destroyUnitQueue = {}

local function getSqrDistance(x1,z1,x2,z2)
	local dx, dz = x1-x2, z1-z2
	return (dx*dx) + (dz*dz)
end

local function wipeoutTeam(teamID, originX, originZ, attackerUnitID, periodMult)	-- only teamID is required
	periodMult = periodMult or 1
	local gf = Spring.GetGameFrame()
	local maxDeathFrame = 0
	local teamUnits = Spring.GetTeamUnits(teamID)
	for i=1, #teamUnits do
		local unitID = teamUnits[i]
		local x,_,z = spGetUnitPosition(unitID)
		local deathFrame
		if originX then
			deathFrame = 6 + math.floor((math.min(((getSqrDistance(x, z, originX, originZ) / DISTANCE_LIMIT) * wavePeriod*0.6), wavePeriod) + math.random(0,wavePeriod/2.5)) * periodMult)
		else
			deathFrame = 6 + math.floor((math.random(1, wavePeriod*0.3) + math.random(0,wavePeriod/2.5)) * periodMult)
		end
		maxDeathFrame = math.max(maxDeathFrame, deathFrame)
		if destroyUnitQueue[unitID] == nil then
			destroyUnitQueue[unitID] = {
				frame = gf + deathFrame,
				attackerUnitID = attackerUnitID,
			}
		end

		-- neutralize units
		Spring.SetUnitNeutral(unitID, true)
		Spring.SetUnitSensorRadius(unitID, 'los', 0)
		Spring.SetUnitSensorRadius(unitID, 'airLos', 0)
		Spring.SetUnitSensorRadius(unitID, 'radar', 0)
		Spring.SetUnitSensorRadius(unitID, 'sonar', 0)
		--Spring.SetUnitNoMinimap(unitID, true)
	end
	GG.maxDeathFrame = GG.maxDeathFrame and math.max(GG.maxDeathFrame, maxDeathFrame) or maxDeathFrame	-- storing frame of total unit wipeout
end

local function wipeoutAllyTeam(allyTeamID, attackerUnitID, originX, originZ, periodMult)	-- only allyTeamID is required

	-- xmas gadget uses this (to prevent creating xmasballs)
	if not _G.destroyingTeam then _G.destroyingTeam = {} end
	_G.destroyingTeam[allyTeamID] = true

	-- define smaller destruction period when few units
	local totalUnits = 0
	for _, teamID in ipairs(Spring.GetTeamList(allyTeamID)) do
		local units = Spring.GetTeamUnits(teamID)
		totalUnits = totalUnits + #units
	end
	periodMult = (periodMult or 1) * math.max(0.33, math.min(1, totalUnits / 300))	-- make low unitcount blow up faster

	-- destroy all teams
	for _, teamID in ipairs(Spring.GetTeamList(allyTeamID)) do
		wipeoutTeam(teamID, originX, originZ, attackerUnitID, periodMult)
	end
end

GG.wipeoutTeam = wipeoutTeam
GG.wipeoutAllyTeam = wipeoutAllyTeam

function gadget:GameFrame(gf)
	if next(destroyUnitQueue) then
		for unitID, defs in pairs(destroyUnitQueue) do
			if gf > defs.frame then
                if defs.attackerUnitID then
					spDestroyUnit(unitID, true, nil, defs.attackerUnitID)
				else
					spDestroyUnit(unitID, true) -- if 4th arg is given, it cannot be nil (or engine complains)
                end
				destroyUnitQueue[unitID] = nil
			end
		end
	end
end
