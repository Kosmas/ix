require 'rails_helper'

describe 'videos/show' do
  let(:first_video) { Video.create!(title: 'This is the first video') }

  it 'renders the show page with correct dom elements' do
    @video = first_video
    render
    expect(rendered).to have_text(@video.title)
  end
end
