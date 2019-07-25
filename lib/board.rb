require_relative 'boardcase'

class Board 
	attr_accessor :board_cases, :players

	def initialize
		@board_cases = [a1 = BoardCase.new("a1"),
			a2 = BoardCase.new("a2"),
			a3 = BoardCase.new("a3"),
			b1 = BoardCase.new("b1"),
			b2 = BoardCase.new("b2"),
			b3 = BoardCase.new("b3"),
			c1 = BoardCase.new("c1"),
			c2 = BoardCase.new("c2"),
			c3 = BoardCase.new("c3")]
	end

	def play_turn(player)
		puts "Quelle case voulez-vous occuper?"
		print "> "
		case_choice = gets.chomp
		binding.pry
		@board_cases.map! do |finder|
			if finder.reference == case_choice
				finder.value = player
			end
		end
	end

	def victory?
		if @board_cases[0] == @board_cases[1] && @board_cases[0] == @board_cases[2]
			puts "victory"
		elsif @board_cases[3] == @board_cases[4] && @board_cases[3] == @board_cases[5]
			puts "victory"
		elsif @board_cases[6] == @board_cases[7] && @board_cases[6] == @board_cases[8]
			puts "victory"
		elsif @board_cases[0] == @board_cases[3] && @board_cases[0] == @board_cases[6]
			puts "victory"
		elsif @board_cases[1] == @board_cases[4] && @board_cases[1] == @board_cases[7]
			puts "victory"
		elsif @board_cases[2] == @board_cases[5] && @board_cases[2] == @board_cases[8]
			puts "victory"
		elsif @board_cases[0] == @board_cases[4] && @board_cases[0] == @board_cases[8]
			puts "victory"
		elsif @board_cases[2] == @board_cases[4] && @board_cases[0] == @board_cases[6]
			puts "victory"
		end
	end

end