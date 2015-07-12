class GuessesController < ApplicationController

  def update
  	# puts "*" * 100
  	# p params[:id]
  	@guess = Guess.find(params[:id])

  	# puts "&" * 100
  	# p @guess.game.id

  	# puts "params[:floor] " * 10
  	# p params[:guess][:floor]

  	@guess.update_attributes(floor: params[:guess][:floor])
  end
end
