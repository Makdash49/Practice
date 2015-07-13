class GamesController < ApplicationController

  def new
  end

  def create
    @game = Game.create(breakfloor: Game.random_floor,
                        player: ThronesFaker.name)
    redirect_to @game
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @guess = Guess.new

    if @game.guesses.last
      if @game.guesses.last.floor > @game.breakfloor
        @message = "You Broke an Egg!"
      elsif @game.guesses.last.floor == @game.breakfloor
        @message = "You guessed the break floor!"
      end

      if @game.eggs <= 0
        @game_message = "The Game is Over!!!"
      end

    end
  end

end











