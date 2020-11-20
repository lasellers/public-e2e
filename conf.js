/**
 * protractor conf.js
 * 
 */
let envConfig = require('./env.js').envConfig;

exports.config = {
    // seleniumAddress: 'https://www.jetblue.com/',

    directConnect: true,

    jasmineNodeOpts: {
        showColors: true,
        defaultTimeoutInterval:
            100000
    },

    framework: 'jasmine2', //jasmine3

    baseUrl: 'https://www.jetblue.com/',

    params:
    {
        isLoggedIn: false,
        restartBrowserBetweenTests: true,
        DEFAULT_TIMEOUT_INTERVAL: 5000,
        LONG_TIMEOUT_INTERVAL: 60000,
        baseUrl: 'https://www.jetblue.com/',
        minimumWait: 50,
        animationWait: 500,
        wait: 2000,
        maximumWait: 20000,
        debugHelpers: false,
        logBrowserErrors: true,
        browserMode: 'chrome',
        envConfig: require('./env.js').envConfig,
        env: 'production',
    },

    specs: ['specs/*.spec.js'],

    suites: {
        all: ['specs/**/*.spec.js']
    },

    beforeLaunch: function () {
        console.log("beforeLaunch:");
    },

    onPrepare: function () {
        console.log("onPrepare:");

        //
        jasmine.DEFAULT_TIMEOUT_INTERVAL = browser.params.DEFAULT_TIMEOUT_INTERVAL;
        console.log("DEFAULT_TIMEOUT_INTERVAL:" + jasmine.DEFAULT_TIMEOUT_INTERVAL);

        // browser.manage().window().setSize(1600, 1000);

        //const EC = require('protractor').ExpectedConditions;

        beforeEach(function () {
        });

        afterEach(function () {
        });

        afterAll(function () {
        });

    }
    ,

    onComplete: function () {
        console.log("onComplete:");

    }
    ,

    onCleanup: function () {
        console.log("onCleanup: End e2e tests");
    }
    ,

    afterLaunch: function () {
        console.log("afterLaunch:");

    }
    ,

};