class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def standard_student_name
    @student_names.map! do |name|
      name.capitalize
    end
  end

  def end_time
    "#{(@start_time.to_i + @hours_in_school_day)}:00"
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def convert_end_time_to_clock_time
    if (@start_time.to_i + @hours_in_school_day) > 12
      "#{(@start_time.to_i + @hours_in_school_day) - 12}:00"
    else
      "#{(@start_time.to_i + @hours_in_school_day)}:00"
    end
  end
end
