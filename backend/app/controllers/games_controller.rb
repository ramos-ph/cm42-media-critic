class GamesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :game_not_found

  def index
    @games = Game.all

    render json: @games
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created
    else
      render json: { error: "Could not create a game" }, status: :unprocessable_entity
    end
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)

    render json: @game, include: [:platforms, :developers, :publishers, :genres]
  end

  def show
    @game = Game.find(params[:id])

    render json: @game, include: [:platforms, :developers, :publishers, :genres]
  end

  def destroy
    Game.delete(params[:id])

    render status: :no_content
  end

  private

  def game_params
    params
      .require(:game)
      .permit(:title, :description, :year,
        developer_ids: [], platform_ids: [], genre_ids: [], publisher_ids: [])
  end

  def game_not_found
    render json: { error: "Game not found" }, status: :not_found
  end
end
