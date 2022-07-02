local firebaseAnalytics = require "plugin.firebaseAnalytics"
local firebaseConfig =  {
  apiKey= "AIzaSyBouW3qRDbDGIGreQj1Gk0-kBWZtLqzCc0",
  authDomain= "corona-sdk-4-82825584.firebaseapp.com",
  databaseURL= "https://corona-sdk-4-82825584.firebaseio.com",
  projectId= "corona-sdk-4-82825584",
  storageBucket= "corona-sdk-4-82825584.appspot.com",
  messagingSenderId= "652763858765",
  appId= "1:652763858765:web:68320c1e0dec341d095904",
  measurementId= "G-CHT4LV5J43"
}
--^notice simple convertion of js to lua by removing : and replacing with =

firebaseAnalytics.init(firebaseConfig, function (e)
  if(e.isError)then
      print("Firebase Analytics could not load :(")
  end
) -- params only used for web, but don't cause issues with platforms
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
