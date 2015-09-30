require "./human"
require "./random"
require "./counting"
require "./smart"

class GuessingGame
  def initialize(player)
    @player = player
  end

  def play
    number = rand(1..100)
    result = nil
    guess = @player.get_guess(result)
    count = 1
    until guess == number
      if guess > number
        puts "Too High!"
        result = ??
      else
        puts "Too Low!"
        result = ??
      end
      guess = @player.get_guess(result)
      count += 1
    end
    puts "You win! Took #{count} tries. The number was #{number}."
  end
end

game1 = GuessingGame.new(CountingPlayer.new)
# game2 = GuessingGame.new(RandomPlayer.new)
# game3 = GuessingGame.new(RandomPlayer.new)
# game4 = GuessingGame.new(HumanPlayer.new)

game1.play


puts "just screwing around"