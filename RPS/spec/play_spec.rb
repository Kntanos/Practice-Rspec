require "rps"

describe Game do

    describe ".play" do
        context do 
            "when Kostas plays rock and Computer plays scissors"
            it "should return Kostas won!" do
                player_1 = Player.new("Kostas")
                player_2 = Player.new("Computer")
                game = Game.new(player_1, player_2)
                
                allow(player_1).to receive(:make_choice).and_return("rock")
                allow(player_2).to receive(:make_choice).and_return("scissors")
                
                expect(game.play()).to eq "Kostas won!"
            end
        end  
    end
end