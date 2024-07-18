class Notification < ApplicationRecord
  validates :message, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  scope :active_notifications, ->{where("start_date <= ? AND ? <= end_date",Date.today, Date.today)}
end
