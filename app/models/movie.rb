class Movie < ApplicationRecord
  belongs_to :user, optional: true
  has_many :filmings
  has_many :actors, through: :filmings
  has_many :reviews, as: :reviewable

  validates :title, presence: true, uniqueness: true
end
