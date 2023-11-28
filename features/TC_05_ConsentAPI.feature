Feature: To retrieve URL that the end-user must visit to consent to the Bank for Account Data

Scenario: To get the consent url when instructed by 1426 error in AccountsAPI

Given I make a GET request to /ics/v3/consent/sessionId
And I set path param sessionId to $M{App.sessionId}
And I set query param scope to accounts
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain href
