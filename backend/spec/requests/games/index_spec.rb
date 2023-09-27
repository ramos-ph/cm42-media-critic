require "rails_helper"

RSpec.describe "Games", type: :request do
  let(:response_json) { JSON.parse(response.body) }

  describe "GET /api/games" do
    context "when there are no games" do
      it "responds with an empty array" do
        get "/api/games"

        expect(response_json).to eq([])
        expect(response).to have_http_status(:ok)
      end
    end

    context "when there are games" do
      let!(:game) { Game.create(title: "Stardew Valley", description: "The best game", year: 2016) }

      it "responds with an array of games" do
        get "/api/games"

        expect(response_json.first).to include({
          "title" => "Stardew Valley",
          "description" => "The best game",
          "year" => 2016
        })
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
