class Board
  attr_accessor :contenu

  #Initialiser le tableau de jeu 3x3
  def initialize()
    @contenu = [
      ["t", "i", "c"],
      ["t", "a", "c"],
      ["t", "o", "e"]
    ]
  end

  #Afficher l'état du tableau
  def afficher()
    puts "-------------"
    3.times do |ligne_index|
     
      # puts " ligne #{ligne_index}"
      print '|'
      
      3.times do |colonne_index|
        # print " #{colonne_index} |"
        print " #{@contenu[ligne_index][colonne_index]} |"
      end
      puts
      puts "----+---+----"
    end
  end

end