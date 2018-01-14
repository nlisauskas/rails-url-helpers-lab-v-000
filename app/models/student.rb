class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    set_student
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
  end
end