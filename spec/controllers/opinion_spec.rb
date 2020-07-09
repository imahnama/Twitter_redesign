require 'rails_helper'
RSpec.describe OpinionsController, type: :controller do
  def login(user)
    session[:user_id] = user.id
  end

  before(:each) do
    @user = FactoryBot.create(:user)
    @opinion = FactoryBot.create(:opinion)
    login(@user)
  end
  describe 'GET #index' do
    it 'gets all the user opinions and render index page' do
      get :index
      expect(response).to be_successful
      expect(response).to render_template(:index)
    end
  end

  describe 'POST #create' do
    context 'valid params' do
      it 'creates a new opinion' do
        post :create, params: { opinion: { Text: 'Sample opinion', AuthorId: @user.id } }
        expect(response).to redirect_to(opinions_path)
      end
    end

    context 'invalid params' do
      it 'redirects to index page with invalid params' do
        post :create, params: { opinion: { Text: 1234 } }
        get :index
        expect(response).to render_template(:index)
      end
    end
  end
end
