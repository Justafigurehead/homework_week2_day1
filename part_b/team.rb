class Team 

  attr_accessor :name, :coach, :players, :points
  

  def initialize(team_name, coach, players, points)
    @name = team_name
    @coach = coach
    @players = players
    @points = points
  end

  def find_player(the_players, find_player)
    for find_player in players 
      return true
    end 
  end 

  def win_or_lose_points(team_points, win_or_lose)
    if win_or_lose == "win"
      team_points += 1
    else win_or_lose != "win"
      team_points += -1
    end
  end

end 