class GuessesController < ApplicationController


  # def update
  # 	# puts "*" * 100
  # 	# p params[:id]
  # 	@guess = Guess.find(params[:id])

  # 	# puts "&" * 100
  # 	# p @guess.game.id

  # 	# puts "params[:floor] " * 10
  # 	# p params[:guess][:floor]

  # 	@guess.update_attributes(floor: params[:guess][:floor])
  # 	redirect_to root_path
  # end

  def create
    @guess = Guess.create(guess_params)
    @game = Game.find(@guess.game_id)


    redirect_to @game

  end

  private

    def guess_params
      params.require(:guess).permit(:floor, :game_id)
    end

end
