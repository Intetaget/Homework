#require "pry"

class ComputerPlayer
	def initialize(name = "The computer one")
		@name = name
		@letter = "C"
	end 

	def get_move
		rand(0..9)
	end

	def name
		@name
	end
	def letter
		@letter
	end
end