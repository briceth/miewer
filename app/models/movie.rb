class Movie < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :user, optional: true
  has_many :filmings, dependent: :destroy
  has_many :actors, through: :filmings
  has_many :reviews, as: :reviewable

  validates :title,
            presence: true,
            uniqueness: true,
            length: { minimum: 2 }
validates :description, length: { minimum: 0, maximum: 2000 }
validates :picture, presence: true

  accepts_nested_attributes_for :filmings
end
