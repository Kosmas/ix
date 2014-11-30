require 'rails_helper'

describe 'videos/index' do
  let(:video_1) { Video.create!(title: 'First video') }
  let(:video_2) { Video.create!(title: 'Second video') }

  it 'renders the index page with correct dom elements' do
    @videos = [video_1, video_2]
    render
    expect(rendered).to have_text(video_1.title)
    expect(rendered).to have_text(video_2.title)
    expect(rendered).to have_text('New')
  end
end
