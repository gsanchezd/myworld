class Job < ApplicationRecord
  belongs_to :city
  belongs_to :company
end
