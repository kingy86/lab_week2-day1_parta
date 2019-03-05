require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestStudent < MiniTest::Test

  def test_team_name
      @players = ["Flo Kamberi"]
      team = Team.new("Hibernian", @players, "Neil Lennon", 0)

      assert_equal("Hibernian", team.team_name())
  end

  def test_players_name
      @players = ["Flo Kamberi"]
      team = Team.new("Hibernian", @players, "Neil Lennon", 0)

      assert_equal("Flo Kamberi", team.players_name())
  end

  def test_coach_name
      @players = ["Flo Kamberi"]
      team = Team.new("Hibernian", @players, "Neil Lennon", 0)

      assert_equal("Neil Lennon", team.coach_name)
  end

  def test_set_coach_name()
    @players = ["Flo Kamberi"]
      team = Team.new("Hibernian", @players, "Neil Lennon", 0)


      team.coach = 'Paul Heckingbottom'
      assert_equal("Paul Heckingbottom", team.coach)
  end

  def test_adding_player()
    @players = ["Flo Kamberi"]
    team = Team.new("Hibernian", @players , "Paul Heckingbottom", 0)

    team.adding_player(@players, "Paul Hanlon")
    assert_equal([ "Flo Kamberi", "Paul Hanlon" ], team.players)
  end

  def test_find_player_by_name
    @players = ["Flo Kamberi", "Paul Hanlon"]
    team = Team.new("Hibernian", @players , "Paul Heckingbottom", 0)

    team.find_player_by_name(@players, "Flo Kamberi")
    assert_equal("Flo Kamberi", team.players)
  end

  def test_team_points
    @players = ["Flo Kamberi", "Paul Hanlon"]
    team = Team.new("Hibernian", @players , "Paul Heckingbottom", 0)

    team.team_points(@points, "win")
    assert_equal(3, team.points )
  end


end
