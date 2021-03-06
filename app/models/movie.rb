# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string
#  date        :date
#  description :text
#  picture     :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  available   :boolean
#  category    :string
#
# Indexes
#
#  index_movies_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_2c7f519372  (user_id => users.id)
#

class Movie < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :user, optional: true
  has_many :filmings, dependent: :destroy
  has_many :actors, through: :filmings
  has_many :reviews, as: :reviewable, dependent: :destroy

  validates :title,
            presence: true,
            uniqueness: true,
            length: { minimum: 2 }
  validates :description, presence: true,length: { minimum: 10, maximum: 2000 }
  validates :picture, presence: true
  validates :available, presence: true

  accepts_nested_attributes_for :actors
  validates_associated :actors

  scope :available, -> { where(available: :true) }

end
