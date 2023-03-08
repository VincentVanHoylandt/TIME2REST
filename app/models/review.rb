class Review < ApplicationRecord
  belongs_to :user
  belongs_to :appliance

  validates :content, :rating, presence: true
end
