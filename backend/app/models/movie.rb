class Movie
  attr_accessor :id, :director, :writer, :title, :producer, :production_company, :cast, :year

  def initialize(id: nil, director:, writer:, title:, producer:, production_company:, cast:, year:)
    @id = id
    @director = director
    @writer = writer
    @title = title
    @producer = producer
    @production_company = production_company
    @cast = cast
    @year = year
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
      year: @year
    }.compact
  end
end
