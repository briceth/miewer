class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :actors
  has_many :movies
  has_many :authors
  has_many :reviews
end
