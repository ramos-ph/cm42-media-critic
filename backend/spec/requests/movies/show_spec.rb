require "rails_helper"

RSpec.describe "Movies", type: :request do
  let(:response_json) { JSON.parse(response.body) }

  describe "GET /api/movies/:id" do
    context "when there is a movie" do
      let!(:game) {
        Movies::Create.new(
          params: {
            director: "George Lucas",
            writer: "George Lucas",
            title: "Star Wars",
            producer: "George Lucas",
            production_company: "Lucasfilm",
            cast: ["Han Solo", "Princess Leia"],
            year: 1977
          }
        ).call
      }

      it "responds with a movie" do
        get "/api/movies/#{game.id}"

        expect(response_json).to include({
          "title" => "Star Wars",
          "cast" => ["Han Solo", "Princess Leia"],
          "year" => 1977
        })
        expect(response).to have_http_status(:ok)
      end
    end

    context "when there is no movie" do
      it "responds with an error" do
        get "/api/movies/1"

        expect(response_json).to eq({ "error" => "Movie not found" })
        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
