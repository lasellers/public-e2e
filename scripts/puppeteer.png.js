/*
node scripts/puppeteer.png.js
 */
const puppeteer = require('puppeteer');

(async () => {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();
    await page.goto('https://www.cnn.com');
    await page.screenshot({path: 'logs/puppeteer.png'});

    await browser.close();
})();
