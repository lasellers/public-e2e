/*
node scripts/puppeteer.pdf.js
 */
const puppeteer = require('puppeteer');

(async () => {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();
    await page.goto('https://www.cnn.com');
    await page.pdf({path: 'logs/puppeteer.pdf', format: 'A4'});

    await browser.close();
})();
