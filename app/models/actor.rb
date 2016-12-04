# == Schema Information
#
# Table name: actors
#
#  id          :integer          not null, primary key
#  age         :integer
#  profession  :string
#  biography   :text
#  nationality :string
#  user_id     :integer
#  image_id    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  first_name  :string
#  last_name   :string
#
# Indexes
#
#  index_actors_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_477d25671f  (user_id => users.id)
#

class Actor < ApplicationRecord
  mount_uploader :image_id, PhotoUploader
  belongs_to :user
  has_many :filmings, dependent: :destroy
  has_many :movies, through: :filmings
  has_many :reviews, as: :reviewable

end
