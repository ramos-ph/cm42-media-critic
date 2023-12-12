class Movies::FindById
  def initialize(id:, repository: MoviesRepository)
    @id = id
    @repository = repository
  end

  def call
    movie = @repository.find(@id)

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
