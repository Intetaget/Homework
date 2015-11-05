#require 'pry'

class Player
	def initialize(letter)
		@name = get_name
		@letter = letter
	end

	def name
		@name
	end

	def letter
		@letter
	end

	def get_move
  		gets.chomp.to_i
  	end

  private
  def get_name
    puts "What is your name? Human player"
    gets.chomp
  end

end