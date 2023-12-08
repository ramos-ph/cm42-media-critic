require "rails_helper"

RSpec.describe "Movies", type: :request do
  let(:response_json) { JSON.parse(response.body) }
  let(:create_params) {
    {
      director: "George Lucas",
      writer: "George Lucas",
      title: "Star Wars",
      producer: "George Lucas",
      production_company: "Lucasfilm",
      cast: ["Han Solo", "Princess Leia"],
      year: 1977
    }
  }
  let(:update_params) do
    {
      "movie" => {
        "title": "Star Wars 2"
      }
    }
  end

  describe "PATCH /api/movies/:id" do
    context "when movie exists" do
      let!(:movie) { Movies::Create.new(params: create_params).call! }

      it "responds with 200" do
        patch "/api/movies/#{movie.id}", params: update_params

        expect(response).to have_http_status(:no_content)
      end
    end

    context "when movie does not exist" do
      it "responds with 404" do
        patch "/api/movies/1", params: update_params

        expect(response).to have_http_status(:not_found)
      end
    end

    context "when update params are invalid" do
      let!(:movie) { Movies::Create.new(params: create_params).call! }

      it "responds with 422" do
        patch "/api/movies/#{movie.id}", params: { "movie" => { "title" => "", "year" => "" } }

        expect(response_json).to eq({ "error" => "Could not update a movie" })
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
