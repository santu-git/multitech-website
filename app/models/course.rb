class Course < ApplicationRecord
  has_one_attached :syllabus
  validates :name,              presence: true
  validates :code,              presence: true
  validates :duration,          presence: true
  validates :details,           presence: true
end
