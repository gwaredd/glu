axios = require 'axios'

fetch = (url, headers) ->

    try
        res = await axios.get url, {headers}
        console.log res.data

    catch err

        error err.code

        if err.response # request made but server responded with an error
            error err.response.status
            error err.response.data

        else if err.request # request failed to send
            error err.request

        else # request failed to be created
            log err.config

