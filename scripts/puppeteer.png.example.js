// node scripts/puppeteer.png.example.js
const puppeteer = require('puppeteer');
 
(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://example.com');
  await page.screenshot({path: 'logs/puppeteer.example.png'});
 
  await browser.close();
})();