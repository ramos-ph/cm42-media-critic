class Movie
  attr_accessor :id, :director, :writer, :title, :producer, :production_company, :cast, :year, :created_at, :updated_at

  def initialize(id: nil, director:, writer:, title:, producer:, production_company:, cast:, year:, created_at: nil, updated_at: nil)
    @id = id
    @director = director
    @writer = writer
    @title = title
    @producer = producer
    @production_company = production_company
    @cast = cast
    @year = year
    @created_at = created_at
    @updated_at = updated_at
  end

  def to_hash
    {
      id: @id,
      director: @director,
      writer: @writer,
      title: @title,
      producer: @producer,
      production_company: @production_company,
      cast: @cast,
      year: @year,
      created_at: @created_at,
      updated_at: @updated_at
    }.compact
  end
end
