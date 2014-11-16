Given(/^a video$/) do
  @video = Video.create(title: 'First video')
end

When(/^I visit the videos page$/) do
  visit videos_path
end

Then(/^I should see the video$/) do
  expect(page).to have_text(@video.title)
end
