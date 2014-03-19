# Description:
#   Reason why people is working from home today
#
# Commands:
#   hubot why is NAME wfh today

module.exports = (robot) ->
  wfhData =
    'yuichi': "His dish washer broke again"

  robot.respond /why is (.*) wfh today/i, (msg) ->
    name = msg.match[1]
    if name of wfhData
      msg.send wfhData[msg.match[1]]
    else
      msg.send "He's just being lazy"
