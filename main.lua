local firebase = require "plugin.firebaseAnalytics"

firebase.init()
firebase.logEvent("select_content", {content_type = "hello", item_id= "world"})
