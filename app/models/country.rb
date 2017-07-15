class Country < ApplicationRecord
  has_many :cities, dependent: :destroy
end
