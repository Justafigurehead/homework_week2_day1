require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TestSportsTeam < MiniTest::Test

#Set up 
def setup
@team = Team.new("Montrose Magpies","John Smith", ["Jane", "Marcy", "Eleanor", "Helen"], 0)
end 

  # What is the team name?
   def test_team_name
      assert_equal("Montrose Magpies", @team.name)
   end 

   #What is the name of the coach

    def test_coach_name
      assert_equal("John Smith", @team.coach)
    end

    #What are the players
    def test_player_one
      assert_equal("Jane", @team.players[0])
    end

    def test_players
      # players = print @team.players
      assert_equal(["Jane", "Marcy", "Eleanor", "Helen"], @team.players)
    end 

    #Add player to team. 
    def test_add_player
    @team.players.push ('Mary')
    assert_equal("Mary", @team.players[4])
    end 
    
    def test_find_player
      assert_equal(true,@team.find_player(@team.players, "Eleanor"))
    end

    def test_win_or_lose_gain_points

    assert_equal(-1, @team.win_or_lose_points(@team.points, "lose"))
    end


end