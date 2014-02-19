local View = {}

-- Requires
local widget = require("widget")

--- Public: new
function View.new()
  local view = display.newGroup()

  view.background = display.newRect(view, 0, 0, display.contentWidth, display.contentHeight)
  view.background.anchorX = 0
  view.background.anchorY = 0
  view.background:setFillColor(236 / 255, 240 / 255, 241 / 255)

  view.passcodeArea = display.newRect(view, 0, 0, display.contentWidth, display.contentHeight / 4)
  view.passcodeArea.anchorX = 0
  view.passcodeArea.anchorY = 0

  view.passcodeMessage = display.newText(view, "パスコードを入力", 0, 0, native.systemFont, 12)
  view.passcodeMessage.anchorX = 0.5
  view.passcodeMessage.anchorY = 0.5
  view.passcodeMessage.x = display.contentCenterX
  view.passcodeMessage.y = view.passcodeArea.height / 3
  view.passcodeMessage:setFillColor(0)

  view.passcodePhrase1 = display.newImageRect(view, "app/assets/images/passcode_phrase.png", 10, 10)
  view.passcodePhrase1.anchorX = 0.5
  view.passcodePhrase1.anchorY = 0.5
  view.passcodePhrase1.x = display.contentCenterX - 10 * 3
  view.passcodePhrase1.y = view.passcodeArea.height / 3 * 2

  view.passcodePhrase2 = display.newImageRect(view, "app/assets/images/passcode_phrase.png", 10, 10)
  view.passcodePhrase2.anchorX = 0.5
  view.passcodePhrase2.anchorY = 0.5
  view.passcodePhrase2.x = display.contentCenterX - 10
  view.passcodePhrase2.y = view.passcodeArea.height / 3 * 2

  view.passcodePhrase3 = display.newImageRect(view, "app/assets/images/passcode_phrase.png", 10, 10)
  view.passcodePhrase3.anchorX = 0.5
  view.passcodePhrase3.anchorY = 0.5
  view.passcodePhrase3.x = display.contentCenterX + 10
  view.passcodePhrase3.y = view.passcodeArea.height / 3 * 2

  view.passcodePhrase4 = display.newImageRect(view, "app/assets/images/passcode_phrase.png", 10, 10)
  view.passcodePhrase4.anchorX = 0.5
  view.passcodePhrase4.anchorY = 0.5
  view.passcodePhrase4.x = display.contentCenterX + 10 * 3
  view.passcodePhrase4.y = view.passcodeArea.height / 3 * 2

  local centerY = display.contentHeight / 4 + display.contentHeight / 4 * 3 / 2
  local margin = (display.contentHeight / 4 * 3 - 50 * 4) / 5

  view.btn1 = widget.newButton{
    width = 50,
    height = 50,
    label = "1",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn1.anchorX = 0.5
  view.btn1.anchorY = 0.5
  view.btn1.x = display.contentCenterX - margin - 50
  view.btn1.y = centerY - margin * 1.5 - 25 * 3
  view:insert(view.btn1)

  view.btn2 = widget.newButton{
    width = 50,
    height = 50,
    label = "2",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn2.anchorX = 0.5
  view.btn2.anchorY = 0.5
  view.btn2.x = display.contentCenterX
  view.btn2.y = centerY - margin * 1.5 - 25 * 3
  view:insert(view.btn2)

  view.btn3 = widget.newButton{
    width = 50,
    height = 50,
    label = "3",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn3.anchorX = 0.5
  view.btn3.anchorY = 0.5
  view.btn3.x = display.contentCenterX + margin + 50
  view.btn3.y = centerY - margin * 1.5 - 25 * 3
  view:insert(view.btn3)

  view.btn4 = widget.newButton{
    width = 50,
    height = 50,
    label = "4",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn4.anchorX = 0.5
  view.btn4.anchorY = 0.5
  view.btn4.x = display.contentCenterX - margin - 50
  view.btn4.y = centerY - margin * 0.5 - 25 * 1
  view:insert(view.btn4)

  view.btn5 = widget.newButton{
    width = 50,
    height = 50,
    label = "5",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn5.anchorX = 0.5
  view.btn5.anchorY = 0.5
  view.btn5.x = display.contentCenterX
  view.btn5.y = centerY - margin / 2 - 25
  view:insert(view.btn5)

  view.btn6 = widget.newButton{
    width = 50,
    height = 50,
    label = "6",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn6.anchorX = 0.5
  view.btn6.anchorY = 0.5
  view.btn6.x = display.contentCenterX + margin + 50
  view.btn6.y = centerY - margin / 2 - 25
  view:insert(view.btn6)

  view.btn7 = widget.newButton{
    width = 50,
    height = 50,
    label = "7",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn7.anchorX = 0.5
  view.btn7.anchorY = 0.5
  view.btn7.x = display.contentCenterX - margin - 50
  view.btn7.y = centerY + margin / 2 + 25
  view:insert(view.btn7)

  view.btn8 = widget.newButton{
    width = 50,
    height = 50,
    label = "8",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn8.anchorX = 0.5
  view.btn8.anchorY = 0.5
  view.btn8.x = display.contentCenterX
  view.btn8.y = centerY + margin / 2 + 25
  view:insert(view.btn8)

  view.btn9 = widget.newButton{
    width = 50,
    height = 50,
    label = "9",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn9.anchorX = 0.5
  view.btn9.anchorY = 0.5
  view.btn9.x = display.contentCenterX + margin + 50
  view.btn9.y = centerY + margin / 2 + 25
  view:insert(view.btn9)

  view.btn0 = widget.newButton{
    width = 50,
    height = 50,
    label = "0",
    defaultFile = "app/assets/images/btn_lock_number.png",
    overFile = "app/assets/images/btn_lock_number.png",
  }
  view.btn0.anchorX = 0.5
  view.btn0.anchorY = 0.5
  view.btn0.x = display.contentCenterX
  view.btn0.y = centerY + margin * 1.5 + 25 * 3
  view:insert(view.btn0)

  return view
end

return View
