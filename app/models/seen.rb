class Seen < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  validates :user, :offer, presence: true
end
