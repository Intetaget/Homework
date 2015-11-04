require 'pry'

WINS = [[0,1,2], [3,4,5], [6,7,8],
        [0,3,6], [1,4,7], [2,5,8],
        [0,4,8], [2,4,6]]
end

def get_player1
  	puts "Please enter first players name name " 
  	gets.chomp
end

def get_player2
	puts "Thank you, now now please enter the second name and we will start the game"
  	gets.chomp
end

def show_grid(dog)
	puts "	#{dog[0]} #{dog[1]} #{dog[2]}"
	puts "	#{dog[3]} #{dog[4]} #{dog[5]}"
	puts "	#{dog[6]} #{dog[7]} #{dog[8]}"
end

def show
  puts " #{@spaces[0]} #{@spaces[1]} .."
end

def get_move(board, current_player)
  puts "#{current_player} What is your move?"
  gets.chomp.to_i - 1
end

def game_over?(board)
  win?(board) || draw?(board)
end

def win?(board)
  WINS.any? do |win|
    items = win.collect { |x| board[x] }
    items == ["X", "X", "X"] || items == ["O", "O", "O"]
  end
#puts "Congratulations #{current_player} You won!"
end

def draw?(board)
  board.all? { |x| x.class == String }
end



def tic_tac_toe(board)
	greeting
	player1 = get_player1
  player2 = get_player2
  current_player = player1
  player_pieces = { player1 => "X", player2 => "O" }
  puts "#{player1} will be X, #{player2} will be O's.  You start #{player1}, go ahead !"
  until game_over?(board)
    show_grid(board)
    move = get_move(board, current_player)
    board[move] = player_pieces[current_player]
      # TODO: Flip the players?
    if current_player == player1
      current_player = player2
    else
      current_player = player1
    end
  end
end


#puts "Congratulations #{current_player} You won!"

#binding.pry

