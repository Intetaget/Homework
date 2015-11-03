#require "pry"

class ComputerPlayer
	def initialize(name = "The computer one")
		@name = name
	end 

	def comp_move
		rand(0..9)
	end

	def name
		@name
	end
end