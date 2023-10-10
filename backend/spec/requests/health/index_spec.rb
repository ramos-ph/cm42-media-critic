require "rails_helper"

RSpec.describe "Health", type: :request do
  describe "GET /api/health" do
    it "responds with 'ok'" do
      get "/api/health"

      expect(response).to have_http_status(:ok)
      expect(response.body).to include("ok")
    end
  end
end
