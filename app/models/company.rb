class Company < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :employees, dependent: :destroy
end
