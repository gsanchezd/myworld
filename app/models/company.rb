class Company < ApplicationRecord
  has_many :jobs, dependent: :destroy
end
