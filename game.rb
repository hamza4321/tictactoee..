require_relative 'player'
require_relative 'board'

class Game
  attr_reader :joueurs

  def initialize()
    @joueurs = Array.new
    @mark = ["X", "O"]
  end

  def inscription_joueurs
    2.times do |index|
      puts "Quel est votre pseudo?"
      pseudo = gets.chomp
      mark = @mark[index]
      @joueurs[index] = Player.new(pseudo, mark)
      puts "Bonjour #{@joueurs[index].name} (vous jouez avec les #{@joueurs[index].mark})!"
      puts
  end
    puts
    mon_plateau = Board.new()
    mon_plateau.afficher()
    puts
  end