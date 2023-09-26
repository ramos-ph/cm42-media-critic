class GamesController < ApplicationController
  def index
    @games = Game.all

    render json: { data: @games }
  end

  def show
    @game = Game.find(params[:id])

    render json: { data: @game }, include: [:platforms, :developers, :publishers]
  end
end
