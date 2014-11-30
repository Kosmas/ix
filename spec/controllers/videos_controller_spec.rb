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
  
  describe 'GET new' do

    it 'displays the new view' do
      get :new
      expect(response).to render_template(:new)
    end
  end

#  describe 'POST create' do
#    it 'creates a video' do
#      post :create, video: { title: 'Wings of Desire' }
#      expect(response).to redirect_to(videos_path)
#      expect(assigns(:action).video.title).to eq('Wings of Desire')
#    end
#  end
end
