require 'rails_helper'

describe 'with users and roles' do

  def log_in_as(user)
    visit new_user_session_path
    fill_in('user_email', with: user.email)
    fill_in('user_password', with: user.password)
    click_button('Log in')
  end

  let(:user) { User.create(email: 'test@example.com', password: 'password') }

  it 'allows a logged in user to view the videos index page' do
    log_in_as(user)
    visit(videos_path)
    expect(current_path).to eq(videos_path)
  end

  it 'does not allow user to see the videos page if not logged in' do
    visit(videos_path)
    expect(current_path).to eq(new_user_session_path)
  end

end
