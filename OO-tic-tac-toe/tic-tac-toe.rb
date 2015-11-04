require "./board"
require "./player_tic_tac"
require "./ttgame"
require "./computerplayer"

greeting

def new_game
  puts "do you want to play against the computer? If so, press x."
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
      # board[move] = current_player.letter
      # binding.pry
      board.move!(move, current_player.letter)
      if current_player == player1
        current_player = player2
      else
        current_player = player1
      end
    end

    ## postmortem here?
end
new_game
def play_again
  puts" Would you like to play again?  Choose Y or N"
  play = gets.chomp.upcase
  if play == "Y"
  new_game
  else
  play = "N"
  puts "Thank you for playing, now exit the program"
  end
end  
play_again



