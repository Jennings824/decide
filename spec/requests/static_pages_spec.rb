require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /missed' do
    it 'renders the missed page successfully' do
      get missed_path
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('You have been missed')
    end
  end
end
