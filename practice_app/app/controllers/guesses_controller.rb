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
    @guess = Guess.new(guess_params)
    if @guess.save
      @game = Game.find(@guess.game_id)

      if @guess.floor >= @game.breakfloor
        @game.update_attributes(eggs: @game.eggs - 1)
      end
    redirect_to @game
    else
      redirect_to(:back)
    end
  end

  private

    def guess_params
      params.require(:guess).permit(:floor, :game_id)
    end

end
