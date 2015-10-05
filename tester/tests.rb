require './board'

require 'minitest/autorun'

class BoardTests < MiniTest::Test
	def test_can_build_a_board
		assert Board.new
	end

	def test_can_make_move
		board = Board.new
		board.move!(5, "X")
		assert board.valid_move?(6)
		refute board.valid_move?(5)#checking for input!!!!
	end

	def test_can_detect_valid_move
      # TODO: If a space isn't taken, it's valid.
	end
end
