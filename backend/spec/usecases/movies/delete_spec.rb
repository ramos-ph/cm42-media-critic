require "rails_helper"

RSpec.describe Movies::Delete do
  it "deletes a movie" do
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

    expect(Movies::Find.new.call).not_to be_empty

    described_class.new(id: movie.id).call

    expect(Movies::Find.new.call).to be_empty
  end
end
