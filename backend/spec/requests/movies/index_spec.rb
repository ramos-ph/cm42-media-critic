require "rails_helper"

RSpec.describe "Movies", type: :request do
  let(:response_json) { JSON.parse(response.body) }

  describe "GET /api/movies" do
    context "when there are no movies" do
      it "responds with an empty array" do
        get "/api/movies"

        expect(response_json).to eq([])
        expect(response).to have_http_status(:ok)
      end
    end

    context "when there are movies" do
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

      it "responds with an array of movies" do
        get "/api/movies"

        expect(response_json.first).to include({
          "title" => "Star Wars",
          "cast" => ["Han Solo", "Princess Leia"],
          "year" => 1977
        })
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
