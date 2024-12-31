module.exports =
  makeId: (length) ->
    characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
    [0...length].map( -> characters.charAt Math.floor Math.random() * characters.length ).join ''
