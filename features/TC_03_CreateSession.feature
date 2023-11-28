Feature: To create a session to return a session id which is required to pass in the header while calling account and Payments API

    @sessionid @TestAccountData
    Scenario: Create a Session Id
        Given I make a POST request to /ics/v3/session
        And I set header Content-Type to application/json
        And I set header accept to application/json
        And I set header authorization to 'Bearer $S{TOKEN}'
        And I set header x-device-id to $M{App.device_id}
        And I set body to
            """
            {
                "bankId": "VmVzdGp5c2tCYW5rLmRlbm1hcmsudjFWRUhPREsyMg=="
            }
            """
        And I receive a response
        Then I expect response body should contain sessionId
