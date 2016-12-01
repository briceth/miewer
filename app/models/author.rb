class Author < ApplicationRecord
  belongs_to :user
  has_many :filmings
  has_many :movies, through: :filmings
  has_many :actors, through: :filmings
  has_many :reviews, as: :reviewable

  validates :first_name, presence: true
  validates :last_name, presence: true
end
