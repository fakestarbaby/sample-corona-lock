-- Composer and scene
local composer = require("composer")
local scene = composer.newScene()

-- View
local view = require("app.views.menuView").new()

-- Create scene
function scene:create(event)
  local group = self.view

  -- Insert view
  group:insert(view)
end

-- Show scene
function scene:show(event)
  local group = self.view
  local phase = event.phase

  if phase == "will" then
  elseif phase == "did" then
  end
end

-- Hide scene
function scene:hide(event)
  local group = self.view
  local phase = event.phase

  if phase == "will" then
  elseif phase == "did" then
  end
end

-- Destroy scene
function scene:destroy(event)
  local group = self.view
end

-- Add event listeners
scene:addEventListener("create",  scene)
scene:addEventListener("show",    scene)
scene:addEventListener("hide" ,   scene)
scene:addEventListener("destroy", scene)

return scene
