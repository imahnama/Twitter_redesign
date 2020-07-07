require 'rails_helper'
RSpec.describe OpinionsController, type: :controller do
  describe 'GET #index' do
    it 'gets all the opinions and render index page' do
      get :index
      expect(response).to be_successful
      expect(response).to render_template(:index)
    end
  end
  describe 'GET #create' do
    it 'gives the article show page' do
      get :index
      expect(response).to render_template(:main)
    end
  end
end
