require "rails_helper"

RSpec.describe "Health", type: :request do
  it "responds with 'pong'" do
    get "/api/health"

    expect(response).to have_http_status(:ok)
    expect(response.body).to include("pong")
  end
end