class Dog < ApplicationRecord
  has_many :employees
  accepts_nested_attributes_for :employees

  def owner_count
    self.employees.count
  end

  def employees_ids=(ids)
    self.employees.clear
    ids.each do |i|
      em = Employee.find(i)
      self.employees << em
    end
  end
end
