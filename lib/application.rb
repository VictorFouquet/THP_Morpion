require_relative 'game'

class Application

	def perform
		my_game = Game.new
		Show.new.show_board(my_game.board.board_cases)
		my_game.board.play_turn(my_game.players[0].symbol)
		Show.new.show_board(my_game.board.board_cases)
	end
end


