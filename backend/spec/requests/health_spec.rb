require "rails_helper"

RSpec.describe HealthController, type: :request do
  describe "#index" do
    it "responds with 'ok'" do
      get "/api/health"

      expect(response).to have_http_status(:ok)
      expect(response.body).to include("ok")
    end
  end
end
