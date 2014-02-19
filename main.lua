-- Composer
local composer = require("composer")
composer.recycleOnSceneChange = true

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Go to scene: Lock
composer.gotoScene("app.controllers.overlays.lockController", { effect = "fade", time = 500 })
