Feature: Users and Roles

  Scenario: I can register as a user
    When I go to the registration page
    And I register
    Then I should be a registered user

  Scenario: I can login as a user
    Given I am a registered user
    When I login
    Then I should be on the index page
