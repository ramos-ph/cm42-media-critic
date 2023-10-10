require "rails_helper"

RSpec.describe "Games", type: :request do
  let(:response_json) { JSON.parse(response.body) }

  let(:params) do
    {
      "game" => {
        "title": "Stardew Valley"
      }
    }
  end

  describe "PATCH /api/games/:id" do
    context "when game exists" do
      let!(:game) { Game.create(title: "Stardew", year: 2016) }

      it "responds with 200" do
        patch "/api/games/#{game.id}", params: params

        expect(response_json).to include({ "title" => "Stardew Valley" })
        expect(response).to have_http_status(:ok)
      end
    end

    context "when game does not exist" do
      it "responds with 404" do
        patch "/api/games/1", params: params

        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
