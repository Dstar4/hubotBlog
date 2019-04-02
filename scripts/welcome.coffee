# Description:
#   To welcome new members to the community
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:

module.exports = (robot) ->
  conversationId = "CGMQQ9GSG"
  robot.enter (res) ->
    if res.message.room == conversationId
      enterReply = "This is a private onboarding message."
      room = robot.adapter.client.rtm.dataStore.getDMByName res.message.user.name
      robot.messageRoom room.id, enterReply