class Actor < ApplicationRecord
  mount_uploader :image_id, PhotoUploader
  belongs_to :user
  has_many :filmings
  has_many :movies, through: :filmings
  has_many :authors, through: :filmings
  has_many :reviews, as: :reviewable
end
