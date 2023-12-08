require "rails_helper"

RSpec.describe Movies::Update do
  it "updates a movie" do
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

    described_class.new(
      params: {
        id: movie.id,
        director: "George Lucas",
        writer: "George Lucas",
        title: "Star Wars: The Old Republic",
        producer: "George Lucas",
        production_company: "Lucasfilm",
        cast: ["Han Solo", "Princess Leia"],
        year: 1977
      }
    ).call!

    updated_movie = Movies::FindById.new(id: movie.id).call

    expect(updated_movie.id).to eq(movie.id)
    expect(updated_movie.director).to eq("George Lucas")
    expect(updated_movie.writer).to eq("George Lucas")
    expect(updated_movie.title).to eq("Star Wars: The Old Republic")
    expect(updated_movie.producer).to eq("George Lucas")
    expect(updated_movie.production_company).to eq("Lucasfilm")
    expect(updated_movie.cast).to eq(["Han Solo", "Princess Leia"])
    expect(updated_movie.year).to eq(1977)
    expect(updated_movie.created_at).to eq(movie.created_at)
    expect(updated_movie.updated_at).to be > movie.updated_at
  end
end
