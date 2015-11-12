class SmartPlayer
	def initialize
		@low = 1
		@high = 100
		@guess = 50
	end
	
	def get_guess(result)
		if result == :low
			@low = @guess
			@guess = (@low + @high) / 2
		elsif result == :high
			@high = @guess
			@guess = (@low + @high) / 2
		end
		@guess
	end			
end		




















# guess = 50
# number = rand(1..100)
# until guess == number
#   if guess < number
#   then guess = 1.5 * guess
#   else guess = (guess)/1.5
#   end
# end
