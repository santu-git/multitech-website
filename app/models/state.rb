class State < ApplicationRecord
  has_many :districts

  validates :name, presence: true
  validates :short_name, presence: true

  after_validation :capitalize_short_name

  def capitalize_short_name
    short_name = short_name.capitalize if short_name.present?
  end
end
