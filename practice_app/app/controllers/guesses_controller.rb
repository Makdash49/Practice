class GuessesController < ApplicationController

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
