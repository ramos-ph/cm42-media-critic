class MoviesController < ApplicationController
  def index
    render json: Movies::Find.new.call
  end

  def create
    movie = Movies::Create.new(params: movie_params).call!

    render json: movie, status: :created
  rescue ActiveRecord::RecordInvalid
    raise ApiException::UnprocessableEntity.new("Could not create a movie")
  end

  def update
    Movies::Update.new(params: movie_params.merge(id: params[:id]), movie: Movie).call!

    render status: :no_content
  rescue ActiveRecord::RecordInvalid
    raise ApiException::UnprocessableEntity.new("Could not update a movie")
  end

  def show
    movie = Movies::FindById.new(id: params[:id]).call

    render json: movie
  rescue ActiveRecord::RecordNotFound
    raise ApiException::NotFound.new("Movie not found")
  end

  def destroy
    Movies::Delete.new(id: params[:id]).call

    render status: :no_content
  end

  private

  def movie_params
    params
      .require(:movie)
      .permit(:director, :writer, :title, :producer, :production_company, :year, cast: [])
  end
end
