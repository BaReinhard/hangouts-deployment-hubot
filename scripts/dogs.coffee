
http = require 'http'
module.exports = (robot) ->
    robot.hear /dog/i, (res) ->
        http.get { host: 'https://dog.ceo/api/breeds/image/random' }, (r) ->
            r.on 'data', (chunk) ->
                res.reply "Nice"
            
                
    