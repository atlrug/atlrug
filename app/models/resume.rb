class Resume < ActiveRecord::Base
  validates :email, :name, :personal_info, :career_objective,
    :work_experience, :education, :skill, :presence => true
  validates :email, :format => /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i
end
