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
  		puts "#{self.name}: What is your move?"
  		gets.chomp.to_i - 1
  	end

  private
  def get_name
    puts "What is your name?"
    gets.chomp
  end

end