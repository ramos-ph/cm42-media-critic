class Movie
  attr_accessor :director, :writer, :title, :producer, :production_company, :cast, :year

  def initialize(director:, writer:, title:, producer:, production_company:, cast:, year:)
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
      director: @director,
      writer: @writer,
      title: @title,
      producer: @producer,
      production_company: @production_company,
      cast: @cast,
      year: @year
    }
  end
end
