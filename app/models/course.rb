class Course < ApplicationRecord
  validates :name,              presence: true
  validates :code,              presence: true
  validates :duration,          presence: true
  validates :details,           presence: true
end
