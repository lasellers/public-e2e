const { element, browser } = require("protractor");

fdescribe('form', function () {
  beforeAll(async function () {
    await browser.get('/');
  })

  // $('#jb-radio-1').click()
  // $('input[type="radio"]:checked').val()
  it('roundtrip', async function () {
    //await element(by.id('jb-radio-1')).click();
    browser.actions().mouseMove(element(by.id('jb-radio-1'))).click().perform();
    let selected = element(by.css('input[type="radio"]:checked'));
    let value = await selected.getAttribute('value');
    expect(value).toEqual('OW')
  });

  // $('#jb-radio-0').click()
  // $('input[type="radio"]:checked').val()
  it('one way', async function () {
    // await element(by.id('jb-radio-0')).click();
    // await browser.actions().mouseMove(element(by.id('jb-radio-0'))).click().perform();
    let clickScript = "document.getElementById('jb-radio-0').click();"
    await browser.driver.executeScript(clickScript).then(async function () {
      browser.sleep(3000);
    });

    let selected = element(by.css('input[type="radio"]:checked'));
    let value = await selected.getAttribute('value');
    expect(value).toEqual('RT')

  });

});