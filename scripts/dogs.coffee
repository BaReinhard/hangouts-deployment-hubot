
module.exports = (robot) ->
    robot.hear /dog/i, (res) ->
        res.reply "More dog stuff to come"
  