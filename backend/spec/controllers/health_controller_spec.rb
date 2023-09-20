require "rails_helper"

RSpec.describe HealthController, type: :controller do
  context "GET index" do
    it "responds with 'pong'" do
      get :index

      expect(response).to have_http_status(:ok)
    end
  end
end