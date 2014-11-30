Given(/^a video$/) do
  @video = Video.create(title: 'First video')
end

When(/^I visit the videos page$/) do
  visit videos_path
end

Then(/^I should see the video$/) do
  expect(page).to have_text(@video.title)
end

When(/^I select the video$/) do
  click_on(@video.title)
end

Given(/^some videos$/) do
  @first_video = Video.create(title: 'A Night on Earth')
  @second_video = Video.create(title: 'Paris Texas')
end

Then(/^I should see the videos$/) do
  expect(page).to have_text(@first_video.title)
  expect(page).to have_text(@second_video.title)
end

When(/^I upload a video$/) do
  click_on 'New'
  fill_in 'Title', with: 'Wings of Desire'
  @video = Video.new(title: 'Wings of Desire')
  click_on 'Add video'
end
