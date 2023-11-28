Feature: To authorize the consent url received in consent api from the UI application

Scenario Outline: As a user, I can log into the secure area

Given I navigate to the required consent url
And I enter the Credentials for login <username> <password>
And I click private option
And I enter the birthdaynumber and submit
And I check all the relevant boxes and confirm
Then I receive the response redirected to the webpage




