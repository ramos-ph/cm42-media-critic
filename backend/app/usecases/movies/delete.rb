class Movies::Delete
  def initialize(id:, repository: MoviesRepository)
    @id = id
    @repository = repository
  end

  def call
    @repository.delete(@id)
  end
end
