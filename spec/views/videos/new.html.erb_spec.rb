require 'rails_helper'

describe 'videos/new.html.erb' do
  
  it 'renders the new page with the correct input fields and buttons' do
    assign(:video, Video.new) 
    render
    expect(rendered).to have_text('Add a video')
    expect(rendered).to have_field('video[title]')
    expect(rendered).to have_button('Add video')
  end
end
