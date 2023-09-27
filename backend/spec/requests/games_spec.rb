require "rails_helper"

RSpec.describe GamesController, type: :request do
  let(:response_json) { JSON.parse(response.body) }

  describe "#index" do
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

  describe "#show" do
    context "when game is not found" do
      it "responds with 404"
    end

    context "when game is found" do
      it "responds with the game"
    end
  end

  describe "#create" do
    context "when create params are valid" do
      it "responds with 201"
    end
  end
end
