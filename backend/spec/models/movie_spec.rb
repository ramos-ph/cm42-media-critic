require "rails_helper"

RSpec.describe Movie do
  describe '.to_hash' do
    let(:movie_id) { 1 }
    let(:movie) {
      described_class.new(
        id: movie_id,
        director: "George Lucas",
        writer: "George Lucas",
        title: "Star Wars",
        producer: "George Lucas",
        production_company: "Lucasfilm",
        cast: ["Han Solo", "Princess Leia"],
        year: 1977
      )
    }

    context 'when movie id is present' do
      it 'returns movie hash' do
        expect(movie.to_hash).to eq({
          id: movie_id,
          director: "George Lucas",
          writer: "George Lucas",
          title: "Star Wars",
          producer: "George Lucas",
          production_company: "Lucasfilm",
          cast: ["Han Solo", "Princess Leia"],
          year: 1977
        })
      end
    end

    context 'when movie id is not present' do
      let(:movie_id) { nil }

      it 'returns movie hash without id' do
        expect(movie.to_hash).to eq({
          director: "George Lucas",
          writer: "George Lucas",
          title: "Star Wars",
          producer: "George Lucas",
          production_company: "Lucasfilm",
          cast: ["Han Solo", "Princess Leia"],
          year: 1977
        })
      end
    end
  end
end
