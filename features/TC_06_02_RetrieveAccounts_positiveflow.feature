Feature: Sunny day Scenarios -To retrieve all the accounts available in the given session with differet test data and user requirements

@RetrieveAccounts @TestAccountData
Scenario: To retieve the Accounts with valid session from bank with less number of accounts
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain href

Scenario: To retrieve accounts with valid session from bank with large number of accounts
Given I make a GET request to ACCOUNT_URL
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain iban

Scenario: To retrieve accounts with valid session from a bank with different types of accounts
Given I make a GET request to ACCOUNT_URL
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain iban

Scenario: To retrieve accounts with valid session from a bank with different types of accounts and the account status is accurate
Given I make a GET request to ACCOUNT_URL
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain iban

Scenario: To retrieve accounts multiple times with valid session from a bank and validate the response for consistent data format
Given I make a GET request to ACCOUNT_URL
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain iban

Scenario: To retrieve accounts with valid session with concuurent users to verify API handles concurrent users
Given I make a GET request to ACCOUNT_URL
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain iban






