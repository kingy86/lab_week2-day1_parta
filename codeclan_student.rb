class Student

  # attr_reader :student_name, :cohort
  # attr_writer :student_name, :cohort

  def initialize(student_name, cohort, language)
    @student_name = student_name
    @cohort = cohort
    @language = language
  end

  def student_name
    return @student_name
  end

  def student_cohort
    return @cohort
  end

  def set_student_name
    return @student_name
  end

  def student_talks
    if @student_name == "Mark"
      return "I can talk"
    else
      return nil
    end
  end

  def student_fav_language
    case @language
    when "Ruby"
      return "I love Ruby"
    else
    return "I love Morag"
    end
  end



end
