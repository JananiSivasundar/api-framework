Feature: To retreive the access token and a refresh token from the authentication server using the client secret and client id

    @AccessToken @TestAccountData
    Scenario: Get the AccessToken for the user
        Given I make a POST request to /auth/realms/sandbox/protocol/openid-connect/token
        And I set header accept to application/json
        And I set header authorization to Bearer $M{App.token}
        And I set header Content-type to application/x-www-form-urlencoded
        And I set form-urlencoded data grant_type to $M{App.grantType}
        And I set form-urlencoded data client_id to $M{App.clientId}
        And I set form-urlencoded data client_secret to $M{App.clientSecret}
        And I receive a response
        Then I expect response body should contain access_token
        Then I expect the response body should have access token