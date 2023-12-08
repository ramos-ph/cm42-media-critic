require "rails_helper"

RSpec.describe Movies::FindById do
  it "returns a movie" do
    movie = Movies::Create.new(
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

    movie = described_class.new(id: movie.id).call

    expect(movie.id).to eq(movie.id)
  end
end
