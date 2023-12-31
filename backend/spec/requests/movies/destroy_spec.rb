require "rails_helper"

RSpec.describe "Movies", type: :request do
  describe "DELETE /api/movies/:id" do
    context "when movie exists" do
      let!(:movie) {
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
        ).call!
      }

      it "responds with 204" do
        expect { delete "/api/movies/#{movie.id}" }
          .to change { MoviesRepository.count }.by(-1)

        expect(response).to have_http_status(:no_content)
      end
    end

    context "when movie does not exist" do
      it "responds with 204" do
        delete "/api/movies/123"

        expect(response).to have_http_status(:no_content)
      end
    end
  end
end
