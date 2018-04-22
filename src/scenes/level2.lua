local level1 = {}

local y = 0

function level1.load ()
    print "Level 2 loaded"
end

function level1.unload()
    print "Level 2 unloaded"
end

function level1.update(dt)
    y = y + 32 * dt
end

function level1.draw()
    love.graphics.print("Hello from level2",0,y)
end

function level1.keypressed(key)
    if key == "return" then
        Scene.Load("level1")
    elseif key == "escape" then
        love.event.quit()
    end
end

return level1