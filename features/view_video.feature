Feature: View a video

  Scenario: I can watch a video
    Given a video
    When I visit the videos page
    And I select the video
    Then I should see the video

  Scenario: I can see a list of videos
    Given some videos
    When I visit the videos page
    Then I should see the videos

  Scenario: I can upload a video
    When I visit the videos page
    And I upload a video
    Then I should see the video
