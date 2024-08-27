class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :enrollment_no, presence: true, uniqueness: true
  validates :student_id, uniqueness: { scope: :course_id, message: "has already been enrolled in this course" }
end
