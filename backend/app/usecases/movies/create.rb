class Movies::Create
  def initialize(params:, movie: Movie, repository: MoviesRepository)
    @params = params
    @movie = movie
    @repository = repository
  end

  def call
    movie = @movie.new(
      director: @params[:director],
      writer: @params[:writer],
      title: @params[:title],
      producer: @params[:producer],
      production_company: @params[:production_company],
      cast: @params[:cast],
      year: @params[:year]
    )
    @repository.create!(movie.to_hash)
  end
end
