class Movies::Find
  def initialize(repository: MoviesRepository)
    @repository = repository
  end

  def call
    @repository.all
  end
end
