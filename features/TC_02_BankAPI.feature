Feature: To retrieve all the supported banks and verify that the each bank object should contain detailed information about the bank which could be used for calling correcpoding API's

    @RetrieveBankIds @TestAccountData
    Scenario: To retrieve the lst of all banks
        Given I make a GET request to /ics/v3/banks
        And I set header x-device-id to $M{App.device_id}
        And I set header accept to application/json
        And I set header authorization to 'Bearer $S{TOKEN}'
        And I receive a response
        Then I expect response body should contain country