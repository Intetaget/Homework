require 'pry'
class Board
	def initialize
		@spaces = (1..9).to_a
	end
	
	# nums = ["dog", "cat", "monkey","whatever"]
	# nums[2] = "chimp"

	def show
	  puts "	#{@spaces[0]} #{@spaces[1]} #{@spaces[2]}"
	  puts "	#{@spaces[3]} #{@spaces[4]} #{@spaces[5]}"
	  puts "	#{@spaces[6]} #{@spaces[7]} #{@spaces[8]}"
	end

	WINS = [[0,1,2], [3,4,5], [6,7,8],
        [0,3,6], [1,4,7], [2,5,8],
        [0,4,8], [2,4,6]]


	def move!(location, piece)
		## how do we changes the board with the location and piece
		@spaces[location] = piece
	end
	
	def valid_move?(location)
		@spaces[location-1].is_a?(Fixnum)	
	end	

	def win?
  		WINS.any? do |win|
    		items = win.collect { |x| @spaces[x] }
    		items == ["X", "X", "X"] || items == ["O", "O", "O"]
    	end
  	end

	def game_over?
  	  win? || draw?
  	end

  	def draw?
  	  @spaces.all? { |x| x.class == String }
  	end
end