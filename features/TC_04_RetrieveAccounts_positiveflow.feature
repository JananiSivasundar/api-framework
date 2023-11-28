Feature: Sunny day Scenarios -To retrieve all the accounts available in the given session

@RetrieveAccounts @TestAccountData
Scenario: To retieve the Accounts with valid session from bank with where consent is required
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to session_id
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain href

Scenario: To retrieve accounts with valid session from bank with no consent required
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain iban

