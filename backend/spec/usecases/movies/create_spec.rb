require "rails_helper"

RSpec.describe Movies::Create do
  it "creates a movie" do
    movie = described_class.new(
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

    expect(movie.id).to be_present
    expect(movie.director).to eq("George Lucas")
    expect(movie.writer).to eq("George Lucas")
    expect(movie.title).to eq("Star Wars")
    expect(movie.producer).to eq("George Lucas")
    expect(movie.production_company).to eq("Lucasfilm")
    expect(movie.cast).to eq(["Han Solo", "Princess Leia"])
    expect(movie.year).to eq(1977)
    expect(movie.created_at).to be_present
    expect(movie.updated_at).to be_present
  end
end
