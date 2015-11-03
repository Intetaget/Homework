require "./board"
require "./player_tic_tac"
require "./ttgame"
require "./computerplayer"

greeting



def choosing_player
  puts "do you want to play against the computer?, press x"
  puts " The computer will be noted with C, and make the first move"
  puts "Make your choice please"
  i_choose_the_pc = gets.chomp.to_s
    if i_choose_the_pc=="X"
      then player1=ComputerPlayer.new("I'm the computer")
      player2 = Player.new("O")
      board = Board.new
      else  
      player1 = Player.new("X")
      player2 = Player.new("O")
      board = Board.new
end




current_player = player1
  until board.game_over?
      board.show
      move = current_player.get_move    #NEED TO GET COMPUTER MOVE IN HERE!!!!
      # board[move] = current_player.letter
      board.move!(move, current_player.letter)
      if current_player == player1
        current_player = player2
      else
        current_player = player1
      end
    end    
  end

   choosing_player   

