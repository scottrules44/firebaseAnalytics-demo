local firebase = require "plugin.firebaseAnalytics"

firebase.init()
firebase.LogEvent("select_content", {content_type = "hello", item_id= "world"})
firebase.SetUserProperties("favorite_food", "burger")