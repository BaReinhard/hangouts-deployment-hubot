
axios = require 'axios'
module.exports = (robot) ->
    robot.hear /dog/i, (res) ->
        dogs = axios.get("https://dog.ceo/api/breeds/image/random") 
        dogs.then (r) ->
            res.reply r.message
    