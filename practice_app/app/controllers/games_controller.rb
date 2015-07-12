class GamesController < ApplicationController
  def new
  	@game = Game.first
  	@last_guess = Guess.last
  	if @last_guess.floor == @game.breakfloor
  		@message = "You got it right!!!"
  	else
  		@message = "Waiting for the correct guess..."
  	end

  	if @last_guess.floor >= @game.breakfloor
  		@egg_message = "You broke the egg!"
  		@game.update_attributes(eggs: @game.eggs - 1)
  	else
  		@egg_message = "The egg did not break"
  	end
  	# @game.update_attributes(breakfloor: Game.random_floor)
  	@guess = @game.guesses.build
  	@guess.save
  end

end
