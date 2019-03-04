require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Mark", "e29", "Ruby")

    assert_equal("Mark", student.student_name())
  end

  def test_student_cohort
    student = Student.new("Mark", "e29", "Ruby")

    assert_equal("e29", student.student_cohort())
  end

  def test_set_student_name
    student = Student.new("Mark", "e29", "Ruby")
    student.student_name = "Emily"
    assert_equal("Emily", student.student_name)
  end

  def test_student_talks
    student = Student.new("Mark", "e29", "Java")

    assert_equal("I can talk", student.student_talks)
  end

  def test_student_fav_language
    student = Student.new("Mark", "e29", "Ruby")

    assert_equal("I love Ruby", student.student_fav_language)
  end

end
