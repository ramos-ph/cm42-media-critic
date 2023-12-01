class MoviesController < ApplicationController
  def index
    render json: Movies::Find.new.call
  end

  def create
    movie = Movies::Create.new(params: movie_params).call

    render json: movie, status: :created
  rescue ActiveRecord::RecordInvalid
    render json: { error: "Could not create a movie" }, status: :unprocessable_entity
  end

  private

  def movie_params
    params
      .require(:movie)
      .permit(:director, :writer, :title, :producer, :production_company, :year, cast: [])
  end
end
