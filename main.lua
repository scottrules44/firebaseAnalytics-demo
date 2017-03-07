local firebaseAnalytics = require "plugin.firebaseAnalytics"
firebaseAnalytics.init()
local widget = require("widget")

local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor( 1,.5,0 )

local title = display.newText( {text = "Firebase Analytics", fontSize = 30} )
title.width, title.height = 300, 168
title.x, title.y = display.contentCenterX, 168*.5
title:setFillColor(1,0,0)
local eventLog1
eventLog1 = widget.newButton( {
        x = display.contentCenterX,
        y = display.contentCenterY,
        id = "log1",
        labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } },
        label = "logEvent Hello , World",
        onEvent = function ( e )
                if (e.phase == "ended") then
                        firebaseAnalytics.logEvent("select_content", {content_type = "hello", item_id= "world"})
                        print( "event logged" )
                end
        end
} )
