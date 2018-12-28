class Employee < ApplicationRecord
  validates :name, presence: true,
                    length: { minimum: 5 }
  validates :department, presence: true,
                    length: { minimum: 1}
  has_one :employee_detail
  has_many :employee_attendances
  has_many :employee_leaves
end
