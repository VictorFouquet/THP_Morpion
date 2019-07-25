require_relative 'board'
require_relative 'show'
require_relative 'player'

class Game
	attr_accessor :current_player, :status, :board, :players

	def initialize
		puts "Veuillez saisir le nom du joueur 1."
		player1 = Player.new(gets.chomp, "X")
		puts "Veuillez saisir le nom du joueur 2."
		player2 = Player.new(gets.chomp, "O")
		@players = [player1, player2]
		@board = Board.new
		@status = "on going"
		@current_player = @players[0]
	end

	def turn
		 #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
		
	end
end