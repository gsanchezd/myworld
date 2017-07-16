class City < ApplicationRecord
  belongs_to :country
  has_many :jobs
  has_many :users
end
