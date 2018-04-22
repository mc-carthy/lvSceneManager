Scene = require "src/scenes/_sceneManager"

local InitialScene = "level1"

function love.load()
    Scene.Load(InitialScene)
end

function love.update(dt)
    Scene.update(dt)
end

function love.draw()
    Scene.draw()
end

function love.keypressed(key)
    Scene.keypressed(key)
end