class Student < ApplicationRecord
  validates :name,          presence: true
  # validates :father_name,   presence: true
  # validates :address,       presence: true
  has_one_attached :image, dependent: :destroy

  has_many :enrollments
  has_many :courses, through: :enrollments
 
  
  after_create :generate_reg_no

  def generate_reg_no
    self.update_attributes(reg_no: "MTI-R#{Time.new.year}-#{id}")
  end

  def display_name
    "#{reg_no} - #{name}"
  end
end
