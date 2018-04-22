local level1 = {}

local x = 0

function level1.load ()
    print "Level 1 loaded"
end

function level1.unload()
    print "Level 1 unloaded"
end

function level1.update(dt)
    x = x + 32 * dt
end

function level1.draw()
    love.graphics.print("Hello from level1",x,0)
end

function level1.keypressed(key)
    if key == "return" then
        Scene.Load("level2")
    elseif key == "escape" then
        love.event.quit()
    end
end

return level1