Feature: To retrieve all the accounts available in the given session with invalid data and unexpected server/client conditions, unlimited concurrent users

Scenario: To verify the API with Invalid SessionId
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-device-id to $M{App.device_id}
And I set header x-session-id to abcdef123
And I receive a response
Then I expect response body should contain href

Scenario: To verify the API with Invalid Access Token
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to Bearer hfsfu123
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain href

Scenario: To verify the API with Invalid device ID
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to XXXYYYZ
And I receive a response
Then I expect response body should contain href

Scenario: To verify the API for retrieving accounts from a Bank for the user having no associated accounts
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain href

Scenario: To verify the API response by exceeding the limited number of requests.
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain href

Scenario: TO verify the API for the server error /client error
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to 'Bearer $S{TOKEN}'
And I set header x-session-id to $M{App.sessionId}
And I set header x-device-id to $M{App.device_id}
And I receive a response
Then I expect response body should contain href