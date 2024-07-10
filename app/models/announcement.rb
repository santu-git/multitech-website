class Announcement < ApplicationRecord

  scope :by_published,     lambda{where(published: true)}
end
