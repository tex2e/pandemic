// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

import Utils from "./utils"
import socket from "./socket"

let channel = socket.channels[0]
let gameEventEmit = $("#game-event-emit")
let gameEventOn = $("#game-event-on")

window.channel = channel;

// emit
gameEventEmit.submit(function () {
  let val = $(this).find("input[type=text]").val()
  channel.push("new_event", {body: val})
  return false;
})

// on
channel.on("new_event", payload => {
  let eventItem = $("<li>");
  eventItem.text(`[${Date()}] ${payload.body}`)
  gameEventOn.append(eventItem)
})
