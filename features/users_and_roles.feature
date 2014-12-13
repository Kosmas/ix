Feature: Users and Roles

  Scenario: I can login as a user
    Given I am a registered user
    When I login
    Then I should be on the index page
