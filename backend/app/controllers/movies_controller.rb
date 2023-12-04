class MoviesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :movie_not_found

  def index
    render json: Movies::Find.new.call
  end

  def create
    movie = Movies::Create.new(params: movie_params).call

    render json: movie, status: :created
  rescue ActiveRecord::RecordInvalid
    render json: { error: "Could not create a movie" }, status: :unprocessable_entity
  end

  def update
    Movies::Update.new(params: movie_params.merge(id: params[:id]), movie: Movie).call

    render status: :no_content
  end

  def show
    movie = Movies::FindById.new(id: params[:id]).call

    render json: movie
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

  def movie_not_found
    render json: { error: "Movie not found" }, status: :not_found
  end
end
