class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  scope :lower_username, -> (username) { where("lower(username) like ?", "%#{username}%")  }

  has_many :basket
  has_many :order
  has_one_attached :avatar

end
