# glu
> Environment for glue scripts

## Global Functions

### Globals

*Utils*

    die
    sleep

*Logging*

    print
    warn
    error
    dump

*Global Libraries*

    _
    fs-extra as fs
    path
    chalk
    glob
    moment
    yaml (custom)
    json (custom)

### Logging

    log.info
    log.warn
    log.error
    log.fatal

    log.debug       verbose output
    log.http
    log.file

    log.ok          success (green)
    log.alert       notice or banner (yellow)


## Imported Libraries

* [axios](https://axios-http.com/) - promise based HTTP client
* [chalk@4.1.2](https://github.com/chalk/chalk) - terminal string styling
* [commander](https://github.com/tj/commander.js) - command line args
* [crypto-js](https://github.com/brix/crypto-js) - hashing
* [fs-extra](https://github.com/jprichardson/node-fs-extra) extra fs utils
* [glob](https://github.com/isaacs/node-glob) file globbing
* [js-yaml](https://github.com/nodeca/js-yaml) - yaml support
* [lodash](https://lodash.com/) - functional programming
* [moment](https://momentjs.com/docs/) - date and time
* [winston](https://github.com/winstonjs/winston) - logging library (uses [logform](https://github.com/winstonjs/logform) for formatting and loggingunder the hood)


# References


## Not Installed Libraries

* [mocha](https://mochajs.org/) - unit testing
* [chai](http://www.chaijs.com/) - assertion library
* [chancejs](https://github.com/chancejs/chancejs) - generating random test data
* [cheerio](https://github.com/cheeriojs/cheerio) - html scraping
* [voca](https://vocajs.com/) - for when string.format isn't quite enough
* [d3](https://github.com/d3/d3)
* [pug](https://github.com/pugjs/pug) - templating

## Runtimes

* [PhantomJS](http://phantomjs.org/) - headless browser (testing/automation)
* [Electron](https://electronjs.org/) - node based desktop app 'container'
* Puppeteer

## Tools

* [ngrok](https://ngrok.com/) - for testing webhook callbacks (reverse proxy/tunnel?)
