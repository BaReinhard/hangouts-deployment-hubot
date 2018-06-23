
axios = require 'axios'
module.exports = (robot) ->
    robot.hear /dog/i, (res) ->
        axios.get "https://dog.ceo/api/breeds/image/random", (r) ->
            res.reply r.message
    