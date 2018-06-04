MetalSpotHandler = class(Module)


function MetalSpotHandler:Name()
	return "MetalSpotHandler"
end

function MetalSpotHandler:internalName()
	return "metalspothandler"
end

function MetalSpotHandler:Init()
	self.spots = self.game.map:GetMetalSpots()
end

function distance(pos1,pos2)
	local xd = pos1.x-pos2.x
	local zd = pos1.z-pos2.z
	local yd = pos1.y-pos2.y
	dist = math.sqrt(xd*xd + zd*zd + yd*yd*yd)
	return dist
end

function MetalSpotHandler:ClosestFreeSpot(unittype,position)
	local pos = nil
	local bestDistance = 10000

	spotCount = self.game.map:SpotCount()
	for i,v in ipairs(self.spots) do
		local p = v
		local dist = distance(position,p)
		if dist < bestDistance then
			if self.game.map:CanBuildHere(unittype,p) then
				--checking for unit positions
				local spGetUnitsInRectangle = Spring.GetUnitsInRectangle
				local radius = 100
				local units_found = spGetUnitsInRectangle(p.x - radius, p.z - radius, p.x + radius, p.z + radius)
				if #units_found == 0 then
					bestDistance = dist
					pos = p
				end					
			end
		end
	end
	return pos
end
