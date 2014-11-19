require 'rails_helper'

RSpec.describe VideosController, :type => :controller do
  
  describe 'GET index' do
    it 'displays the index view' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET show' do
   let(:video) { Video.create(title: 'Very nice video') }

   it 'displays the show view' do
     get :show, id: video.id
     expect(response).to render_template(:show)
   end
  end
end
