describe 'String Extensions', ->

  it 'count()', ->

    str = "abcxabc"

    str.count( 'a' ).should.equal 2
    str.count( 'x' ).should.equal 1
    str.count( 'z' ).should.equal 0
    
    str.count( 'ab' ).should.equal 0
    str.count( '' ).should.equal 0
    str.count( null ).should.equal 0
    str.count( 7 ).should.equal 0

    "".count( 'a' ).should.equal 0

  it 'chalk()', ->

    "%r{text}".chalk().should.equal '\u001b[31mtext\u001b[39m'
    "%g{text}".chalk().should.equal '\u001b[32mtext\u001b[39m'
    "%b{text}".chalk().should.equal '\u001b[94mtext\u001b[39m'
    "%y{text}".chalk().should.equal '\u001b[33mtext\u001b[39m'
    "%m{text}".chalk().should.equal '\u001b[35mtext\u001b[39m'
    "%c{text}".chalk().should.equal '\u001b[36mtext\u001b[39m'
    "%w{text}".chalk().should.equal '\u001b[37mtext\u001b[39m'

    ">%r{a} %g{b} %b{c}<".chalk().should.equal '>\u001b[31ma\u001b[39m \u001b[32mb\u001b[39m \u001b[94mc\u001b[39m<'

    "%x{text}".chalk().should.equal '%x{text}'


  it 'format()', ->

    # basic
    "num={0}".format(1).should.equal "num=1"
    "{3},{2},{1},{0}".format('a',3,4.1,true).should.equal "true,4.1,3,a"

    # bad indicies
    "num={100}".format(1).should.equal "num={100}"
    "num={-1}".format(1).should.equal "num={-1}"

    # padding
    "a{0:12}b".format('hello').should.equal  "ahello       b"
    "a{0:-12}b".format('hello').should.equal "a       hellob"
    "a{0:4}b".format('hello').should.equal  "ahellob"

    "a{0:4}b".format(12345678).should.equal  "a12345678b"
    "a{0:12}b".format(12345678).should.equal  "a12345678    b"
    "a{0:-12}b".format(12345678).should.equal  "a    12345678b"
