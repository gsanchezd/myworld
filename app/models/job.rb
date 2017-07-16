class Job < ApplicationRecord
  belongs_to :city
  belongs_to :company
  has_many :job_applications, dependent: :destroy
end
