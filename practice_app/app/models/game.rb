class Game < ActiveRecord::Base

	def random_floor
		rand(1..100)
	end

end
