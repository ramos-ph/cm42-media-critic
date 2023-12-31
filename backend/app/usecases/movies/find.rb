class Movies::Find
  def initialize(repository: MoviesRepository)
    @repository = repository
  end

  def call
    @repository.all.map do |movie|
      Movie.new(
        id: movie.id,
        director: movie.director,
        writer: movie.writer,
        title: movie.title,
        producer: movie.producer,
        production_company: movie.production_company,
        cast: JSON.parse(movie.cast),
        year: movie.year,
        created_at: movie.created_at,
        updated_at: movie.updated_at
      )
    end
  end
end
