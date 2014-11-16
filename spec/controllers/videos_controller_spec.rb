require 'rails_helper'

RSpec.describe VideosController, :type => :controller do
  
  describe 'GET index' do

    it 'displays the index view' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
