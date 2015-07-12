class GamesController < ApplicationController
  def new
  	# @game = Game.create(breakfloor: rand(1..100))
  	@game = Game.create
  	@game.update_attributes(breakfloor:@game.random_floor)
  end
end
