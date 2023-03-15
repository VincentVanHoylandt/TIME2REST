class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom, dependent: :destroy
end
