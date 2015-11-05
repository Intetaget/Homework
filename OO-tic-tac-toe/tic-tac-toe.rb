require "./board"
require "./player_tic_tac"
require "./ttgame"
require "./computerplayer"

greeting

def new_game
  puts "do you want to play against the computer? If so, press X."
  puts " The computer's choices will be noted with C, and make the" 
  puts " first move make your choice please"
  i_choose_the_pc = gets.chomp.to_s
  if i_choose_the_pc.upcase == "X"
    player1 = ComputerPlayer.new
  else  
    player1 = Player.new("X")
  end
  player2 = Player.new("O")
  board = Board.new

  current_player = player1
  until board.game_over?
      board.show
      puts "#{current_player.name}: What is your move?"
      move = current_player.get_move
      #binding.pry
      until board.valid_move?(move)
          puts "#{current_player.name} Give me a proper option"
          move = current_player.get_move
      end
      board.move!(move, current_player.letter)
    if current_player == player1
       current_player = player2
    else
       current_player = player1
    end
  end  
end   
  


def play_again
  puts" Would you like to play again?  Choose Y or N"
  play = gets.chomp.upcase
  if play == "Y"
    new_game
  else
    puts "Thank you for playing, now exit the program"
  end
end  

new_game
play_again
