	h = 2
	x = 0
	y = 0
	z = 0
	s = 3
	succes, data = turtle.inspectDown()
function refl
	local cur_slot = turtle.getSelectedSlot()
	turtle.select(h)
	local f = turtle.getFuelLevel()
	local j = turtle.getItemCount()
	if f == 0 then 
		turtle.refuel()
	elseif
		print('Place fuel in 2nd slot Nigga and press enter')
		read()
		turtle.refuel
	end
	turtle.select(cur_slot)
end
refl()
function collect()
	local succes, data = turtle.inspectDown()
	if data.metadata == 7 then
		turtle.digDown()
		turtle.select(s)
		turtle.placeDown()
	else
		turtle.forward()
		y = y + 1
	end
	
	if y == 9 then
		turtle.turnLeft()
		turtle.forward()
		turtle.turnLeft()
		z = z + 1
		x = x + 1
	end
	if y == 18 then
		turtle.turnRight()
		turtle.forward()
		turtle.turnRight()
		y = y - 18
		z = z + 1
		x = x + 1
	end
end

function chest()
	turtle.select(4)
	turtle.dropDown()
	turtle.select(s)
	local r = turtle.getItemCount()
	local d = r - 8
	if r > 8 then
		turtle.dropDown(d)
	end
end
function back()
	turtle.turnRight()
	while x > 0 do
		turtle.forward()
		x = x - 1
	end
end

if x == 9 then
	back()
	chest()
	turtle.turnLeft()
	z = 0
	
end
while z < 9 do
	collect()
end