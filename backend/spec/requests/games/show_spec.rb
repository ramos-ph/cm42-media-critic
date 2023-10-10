require "rails_helper"

RSpec.describe "Games", type: :request do
  let(:response_json) { JSON.parse(response.body) }

  describe "GET /api/games/:id" do
    context "when game is not found" do
      it "responds with 404" do
        get "/api/games/1"

        expect(response).to have_http_status(:not_found)
      end
    end

    context "when game is found" do
      let!(:game) { Game.create(title: "Stardew Valley", description: "The best game", year: 2016) }

      it "responds with the game" do
        get "/api/games/#{game.id}"

        expect(response_json).to include({
          "title" => "Stardew Valley",
          "description" => "The best game",
          "year" => 2016
        })
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
