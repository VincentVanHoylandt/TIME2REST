class Offer < ApplicationRecord
  belongs_to :user
  has_many :seens, dependent: :destroy

  validates :user, presence: true
  validates :description, presence: true, length: { minimum: 50, maximum: 2500 }
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :salary, presence: true
  validates :job_title, presence: true
end
