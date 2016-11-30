class Movie < ApplicationRecord
  belongs_to :user
  has_many :filmings
  has_many :actors, through: :filmings
end
