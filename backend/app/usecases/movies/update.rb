class Movies::Update
  def initialize(params:, movie: Movie, repository: MoviesRepository)
    @params = params
    @movie = movie
    @repository = repository
  end

  def call
    movie = @movie.new(
      id: @params[:id],
      director: @params[:director],
      writer: @params[:writer],
      title: @params[:title],
      producer: @params[:producer],
      production_company: @params[:production_company],
      cast: @params[:cast],
      year: @params[:year]
    )

    current_movie = @repository.find(movie.id)
    current_movie.update!(movie.to_hash)
  end
end
