/*
node scripts/puppeteer.jpg.js
 */
const puppeteer = require('puppeteer');

(async () => {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();
    await page.goto('https://abcnews.go.com/');
    await page.screenshot({path: 'logs/puppeteer.jpg'});

    await browser.close();
})();
