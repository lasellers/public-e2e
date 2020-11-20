describe('menus', function () {
  beforeAll(function () {
    browser.get('/');
  })

  it('main menu text', function () {

    // $('.main-nav-link').text()
    let els = element.all(by.css('.main-nav-link')).getText();
    const expected = [
      "Book", "Travel Info", "My Trips", "TrueBlue", "Sign in", "|", "Join"
    ]
    expect(els).toEqual(expected);
  });

  it('bottom menu text', function () {
    // $('h4.core-blue').text()
    let els = element.all(by.css('h4.core-blue')).getText();
    const expected = [
      "Popular Help Topics", "Get To Know Us", "Policies", "JetBlue In Action", "Stay Connected"
    ]
    expect(els).toEqual(expected);
  });

});