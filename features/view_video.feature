Feature: View a video

  Scenario: I can watch a video
    Given I am a logged in user
    And a video
    When I visit the videos page
    And I select the video
    Then I should see the video

  Scenario: I can see a list of videos
    Given I am a logged in user
    And some videos
    When I visit the videos page
    Then I should see the videos

  Scenario: I can upload a video
    Given I am a logged in user
    When I visit the videos page
    And I upload a video
    Then I should see the video
