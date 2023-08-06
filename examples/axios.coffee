require '../glu'
axios = require 'axios'

fetch = (url, headers) ->

    try
        res = await axios.get url, {headers}
        console.log res.data

    catch err

        log.error err.code

        if err.response # request made but server responded with an error
            log.error err.response.status
            log.error err.response.data

        else if err.request # request failed to send
            log.error err.request

        else # request failed to be created
            log.error err.config
