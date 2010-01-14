class Student < ActiveRecord::Base
  has_many :grades

  def gpa
    self.grades.inject(0){ |sum, g| sum + g.grade }.to_f / self.grades.size.to_f
  end

  def pass
    self.gpa >= 3.0
  end
end
