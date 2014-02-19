local View = {}

--- Public: new
function View.new()
  local view = display.newGroup()
  local margin = 10

  view.background = display.newRect(view, 0, 0, display.contentWidth, display.contentHeight)
  view.background.anchorX = 0
  view.background.anchorY = 0

  view.title = display.newText(view, "Menu Scene", 0, 0, native.systemFont, 24)
  view.title.anchorX = 0.5
  view.title.anchorY = 0.5
  view.title.x = display.contentCenterX
  view.title.y = display.contentCenterY
  view.title:setFillColor(0)

  return view
end

return View
