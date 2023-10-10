require "rails_helper"

RSpec.describe "Games", type: :request do
  describe "DELETE /api/games/:id" do
    context "when game exists" do
      let!(:game) { Game.create(title: "Stardew Valley", description: "The best game", year: 2016) }

      it "responds with 204" do
        expect { delete "/api/games/#{game.id}" }
          .to change { Game.count }.by(-1)

        expect(response).to have_http_status(:no_content)
      end
    end

    context "when game does not exist" do
      it "responds with 204" do
        delete "/api/games/123"

        expect(response).to have_http_status(:no_content)
      end
    end
  end
end
