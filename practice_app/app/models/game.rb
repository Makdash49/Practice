class Game < ActiveRecord::Base

	has_many :guesses

	def self.random_floor
		rand(1..100)
	end

end
