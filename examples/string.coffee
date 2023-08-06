
 stringFixedWidth = (str,width) ->
    return "".padEnd width, ' ' unless str
    return str.padEnd( width, ' ' ) if str.length <= width
    return str.slice( 0, width - 3 ) + '...'

