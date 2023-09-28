require "rails_helper"

RSpec.describe "Games", type: :request do
  let(:response_json) { JSON.parse(response.body) }

  let(:params) do
    {
      "game" => {
        "title" => "Stardew Valley",
        "description" => "The best game",
        "year": 2016
      }
    }
  end

  describe "POST /api/games" do
    context "when create params are valid" do
      it "responds with 201" do
        expect { post "/api/games", params: params }
          .to change { Game.count }.by(1)

        expect(response).to have_http_status(:created)
      end
    end

    context "when create params are invalid" do
      it "responds with 422" do
        post "/api/games", params: { "game" => { "title" => "", "description" => "", "year" => "" } }

        expect(response_json).to eq({ "error" => "Could not create a game" })
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
