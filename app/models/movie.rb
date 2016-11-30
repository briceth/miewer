class Movie < ApplicationRecord
  belongs_to :user, optional: true
  has_many :filmings
  has_many :actors, through: :filmings

  validates :title, presence: true, uniqueness: true
end
