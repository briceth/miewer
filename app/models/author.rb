class Author < ApplicationRecord
  belongs_to :user
  has_many :filmings
  has_many :movies, trough: :filmings
  has_many :actors, trough: :filmings
end
