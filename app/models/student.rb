class Student < ApplicationRecord
  validates :name,          presence: true
  validates :father_name,   presence: true
  validates :address,       presence: true
  has_one_attached :image, dependent: :destroy
 
  
  after_create :generate_reg_no

  def generate_reg_no
    self.update_attributes(reg_no: "MTA#{Time.new.year}#{id}")
  end
end
