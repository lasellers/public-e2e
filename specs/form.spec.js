const { element, browser } = require("protractor");

fdescribe('form', function () {
  beforeAll(async function () {
    await browser.get('/');
  })

  // $('#jb-radio-1').click()
  // $('input[type="radio"]:checked').val()
  it('One Way', async function () {
    //await element(by.id('jb-radio-1')).click();
    browser.actions().mouseMove(element(by.id('jb-radio-1'))).click().perform();
    let selected = element(by.css('input[type="radio"]:checked'));
    let value = await selected.getAttribute('value');
    expect(value).toEqual('OW')
  });

  // $('#jb-radio-0').click()
  // $('input[type="radio"]:checked').val()
  it('Roundtrip', async function () {
    // await element(by.id('jb-radio-0')).click();
    // await browser.actions().mouseMove(element(by.id('jb-radio-0'))).click().perform();

    // Clicking the One-Way button first causes an issue where it covers the RT button we are trying to click
    // so, we have to do a work-around that comes up on occasion to get by this -- I'd call it a bug -- with the 
    // webdriverjs. We basically execute straight Javascript on the browser to force it to work.
    let clickScript = "document.getElementById('jb-radio-0').click();"
    await browser.driver.executeScript(clickScript).then(async function () {
    });

    let selected = element(by.css('input[type="radio"]:checked'));
    let value = await selected.getAttribute('value');
    expect(value).toEqual('RT')

  });

});