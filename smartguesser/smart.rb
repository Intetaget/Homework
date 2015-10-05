STARTNUMBER = 50
class smart
  	number = rand(1..100)
  		until guess == number
  			if STARTNUMBER < number
  			then 1.5 * STARTNUMBER
				else (STARTNUMBER)/1.5
				end
end

class smartplayer
  def initialize
    @guess=50
  end

# :low, : high

def get_guess(last_result
  if last _reulst ==low@min = @guesse
    elseif last_result == :high
    @max = @guess)
    else @guess






 
    #@count = 0

  # def play
  #   number = rand(1..100)
  #   result = nil
  #   guess = 50(result)
  #   action1 = 1
  #   until guess == number
  #     if guess > number
  #       guess/2
  #       result = ??
  #     else
  #       puts "Too Low!"
  #       result = ??
  #     end
  #     guess = @player.get_guess(result)
  #     count += 1
  #   end
  #   puts "You win! Took #{count} tries. The number was #{number}."




# Then add a new file smart.rb containing a SmartPlayer class. 
# The new player should make an intelligent to decision about how to guess based on the 
# result of the last guess. Note that this requires tweaking the definition of get_guess 
# to take an argument in each player class and that the result of the last guess must be 
# passed from the GuessingGame class.