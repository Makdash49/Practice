class GamesController < ApplicationController
  def new
  	@game = Game.create
  	@game.update_attributes(breakfloor:@game.random_floor)
  end

  def update
  end

end
