class RemoveStudentGpa < ActiveRecord::Migration
  def self.up
    remove_column :students, :gpa
  end

  def self.down
    add_column :students, :gpa, :float
  end
end
