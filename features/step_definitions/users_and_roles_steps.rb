Given(/^I am a registered user$/) do
  @user = User.create(email: 'test@example.com', password: 'secret_password')
end

When(/^I login$/) do
  visit new_user_session_path
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: @user.password
  click_on 'Log in'
end

Given(/^I am a logged in user$/) do
  step "I am a registered user"
  step "I login"
end

Then(/^I should be on the index page$/) do
  expect(current_path).to eq(root_path)
end

When(/^I visit the sign up page$/) do
  visit new_user_registration_path
end

When(/^I register$/) do
  fill_in 'Email', with: 'test@ix.com'
  fill_in 'Password', with: 'very_secret'
  fill_in 'Password confirmation', with: 'very_secret'
  click_on 'Sign up'
end

Then(/^I should be a registered user$/) do
  expect(User.count).to eq(1)
  expect(User.find(1).email).to eq('test@ix.om')
end


