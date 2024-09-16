local width = 12
local height = 4
local distance = 12

local turnLeft = true

for w = 1, width do
    -- height
	for h = 1, height do
		-- dig forward
		for d = 1, distance do
			turtle.dig()
			turtle.forward()
		end

		-- back
		for d = 1, distance do
			turtle.back()
		end
        
        turtle.up()
	end
    

    -- back down
    for h = 1, height do
        turtle.down()
    end
    
    -- to the side
    if turnLeft then
    	turtle.turnLeft()
    	turtle.forward()
        turtle.turnRight()
	else
        turtle.turnRight()
        turtle.forward()
        turtle.turnLeft()
	end
end
