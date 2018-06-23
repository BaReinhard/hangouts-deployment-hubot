
axios = require 'axios'
module.exports = (robot) ->
    robot.hear /dog/i, (res) ->
        axios.get "https://dog.ceo/api/breeds/image/random" 
        .then (r) ->
            res.reply r.message
    