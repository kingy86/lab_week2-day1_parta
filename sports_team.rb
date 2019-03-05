class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def team_name
    return @team_name
  end

  def players_name
    return @players[0]
  end

  def coach_name
    return @coach
  end

  def set_coach_name
    return @coach
  end

  def adding_player(players, player)
    @players << player
    puts @players
  end

  def find_player_by_name(players, player)
    players = []
    for player in players
      if player == players
      end
      return player
    end
    p player
  end

  def team_points(points, result)
    case result
      when "win"
        @points += 3
      when "draw"
        @points += 1
      end
  end












end
