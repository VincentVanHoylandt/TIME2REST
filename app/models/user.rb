class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :offers, dependent: :destroy
  has_many :experiences, dependent: :destroy
  has_many :seens, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :job_title, :first_name, :last_name, :age, presence: true
end
