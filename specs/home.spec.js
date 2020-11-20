// spec.js
describe('Title', function () {
  it('should have a title', function () {
    // browser.ignoreSynconization = true;

    browser.get('/');

    expect(browser.getTitle()).toEqual('Airline Tickets, Flights & Airfare: Book Direct - Official Site | JetBlue');
  });
});
