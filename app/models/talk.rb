class Talk < ActiveRecord::Base
  validates :title, :email, :duration, :description, :presence => true
  validates :duration, :numericality => { :greater_than => 0, :only_integer => true }
  validates :email, :format => /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/i

  scope :pending, where(:approved => false)
end
