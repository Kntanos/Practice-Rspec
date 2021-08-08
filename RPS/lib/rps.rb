class Game
  attr_accessor :person_1, :person_2
      def initialize(player_1, player_2)
      @person_1 = player_1
      @person_2 = player_2
      end

      def play()
        "You played #{person_1.choice} and Computer played #{person_2.choice}."
        combo = { "scissors" => "paper", "paper" => "rock", "rock" => "scissors" }
        if person_1.choice == person_2.choice
          "It's a draw!"
        elsif combo[person_1.choice] == person_2.choice
          "Kostas won!"
        else
          "Computer won!"
        end
      end
  end

  class Player
      attr_accessor :name, :choice
      def initialize(name)
          @name = name
          @choice = make_choice
      end

      def make_choice
          ["rock", "paper", "scissors"].sample
      end
  end
 
  player_1 = Player.new("Kostas")
      
  player_2 = Player.new("Computer")
  
  game = Game.new(player_1, player_2)
  game.play()
