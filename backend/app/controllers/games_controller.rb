class GamesController < ApplicationController
  def index
    @games = Game.all

    render json: @games
  end

  def create
    @game = Game.new(game_params)

    @game.save!

    render json: @game, status: :created
  rescue
    raise ApiException::UnprocessableEntity.new("Could not create a game")
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)

    render json: @game, include: [:platforms, :developers, :publishers, :genres]
  end

  def show
    @game = Game.find(params[:id])

    render json: @game, include: [:platforms, :developers, :publishers, :genres]
  rescue ActiveRecord::RecordNotFound
    raise ApiException::NotFound.new("Game not found")
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
end
