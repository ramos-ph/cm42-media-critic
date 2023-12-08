require "rails_helper"

RSpec.describe Movies::Find do
  it "returns movies" do
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

    movies = described_class.new.call

    expect(movies.first).to be_a(Movie)
    expect(movies.count).to eq(1)
  end
end
