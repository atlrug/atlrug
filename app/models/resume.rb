class Resume < ActiveRecord::Base
  validates :email, :format => /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i
end
