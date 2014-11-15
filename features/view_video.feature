Feature: View a video

  Scenario: I can watch a video
    Given a video
    When I visit the videos page
    Then I should see the video
