require "rails_helper"

RSpec.describe "Movies", type: :request do
  let(:response_json) { JSON.parse(response.body) }

  let(:params) do
    {
      "movie" => {
        "director" => "George Lucas",
        "writer" => "George Lucas",
        "title" => "Star Wars",
        "producer" => "George Lucas",
        "production_company" => "Lucasfilm",
        "cast" => ["Han Solo", "Princess Leia"],
        "year" => 1977
      }
    }
  end

  describe "POST /api/movies" do
    context "when create params are valid" do
      it "responds with 201" do
        expect { post "/api/movies", params: params }
          .to change { MoviesRepository.count }.by(1)

        expect(response).to have_http_status(:created)
      end
    end

    context "when create params are invalid" do
      it "responds with 422" do
        post "/api/movies", params: { "movie" => { "title" => "", "year" => "" } }

        expect(response_json).to eq({ "error" => "Could not create a movie" })
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
