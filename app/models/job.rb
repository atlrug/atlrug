class Job < ActiveRecord::Base
  validates :title, :email, :name, :start_date, :end_date, :description,
            :requirement, presence: true
  validates :email, format: /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i
  validate :validate_end_date_before_start_date

  def validate_end_date_before_start_date
    if end_date && start_date
      errors.add(:end_date, 'End date must be greater than start date.'
                ) if end_date <= start_date
    end
  end
end
