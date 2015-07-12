class GamesController < ApplicationController
  def new
  	@game = Game.first
  	@game.update_attributes(breakfloor: Game.random_floor)
  	@guess = @game.guesses.build
  	@guess.save
  end

end
