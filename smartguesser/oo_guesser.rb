require "./human"
require "./random"
require "./counting"
require "./smart1"
require 'pry'

class GuessingGame
  def initialize(player)
    @player = player
  end

  def play
    number = rand(1..100)
    result = nil
    guess = @player.get_guess(result)
    count = 1
    #binding.pry
    until guess == number
      if guess > number
        puts "Too High!"
        result = :high   #Fails right here!!!
      else
        puts "Too Low!"
        result = :low
      end
      guess = @player.get_guess(result)
      count += 1
    end
    puts "You win! Took #{count} tries. The number was #{number}."
  end
end

# game1 = GuessingGame.new(CountingPlayer.new)
# game2 = GuessingGame.new(RandomPlayer.new)
# game3 = GuessingGame.new(RandomPlayer.new)
# game4 = GuessingGame.new(HumanPlayer.new)
game5 = GuessingGame.new(SmartPlayer.new)

#game1.play
game5.play


#puts "just screwing around"