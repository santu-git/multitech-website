class Institute < ApplicationRecord
  belongs_to :state
  belongs_to :district
  has_one_attached :image, dependent: :destroy
  validates :name,              presence: true
  validates :owner_name,        presence: true
  validates :contact_number,    presence: true,
                                numericality: true,
                                length: { minimum: 10, maximum: 15 }
  validates :location,          presence: true
  validates :address,           presence: true
  validates :pin_code,          presence: true
  validate :acceptable_image

  def acceptable_image
    return unless image.attached?
  
    unless image.byte_size <= 1.megabyte
      errors.add(:image, "is too big")
    end
  
    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(image.content_type)
      errors.add(:image, "must be a JPEG or PNG")
    end
  end
end
