class User < ApplicationRecord

  validates :username, presence: true, length: { minimum: 3, maximum: 64 }
  validates :password, presence: true, length: { minimum: 8, maximum: 64 }
  validates :email, presence: true, length: {minimum: 5, maximum: 500 }
  validates_uniqueness_of :username

  has_many :sessions
  has_many :tweets
end
