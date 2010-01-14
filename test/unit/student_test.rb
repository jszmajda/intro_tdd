require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  
  test "gpa is the average of the sum of the student's grades" do
    s = students(:one)
    sum = s.grades.inject(0) { |sum, grade| sum + grade.grade }
    average = sum.to_f / s.grades.size.to_f
    assert average == s.gpa
  end

  test "student one fails" do
    assert students(:one).pass == false
  end

  test "student three passes" do
    assert students(:three).pass == true
  end

  test "student two fails" do
    assert students(:two).pass == false
  end
end
