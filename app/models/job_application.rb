class JobApplication < ApplicationRecord
  belongs_to :user
  belongs_to :job
  validates_uniqueness_of(:user_id, scope: :job_id)

  before_save :default_status
  enum status: [:pending, :approved, :rejected]

  def default_status
    self.status ||= 0
  end
end
