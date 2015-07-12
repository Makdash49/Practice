class Game < ActiveRecord::Base

	has_many :guesses

	def random_floor
		rand(1..100)
	end

end
