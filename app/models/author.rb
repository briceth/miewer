# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  biography   :text
#  nationality :text
#  user_id     :integer
#  image_id    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_authors_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_46e884287b  (user_id => users.id)
#

class Author < ApplicationRecord
  belongs_to :user
  has_many :filmings
  has_many :movies, through: :filmings
  has_many :actors, through: :filmings
  has_many :reviews, as: :reviewable

  validates :first_name, presence: true
  validates :last_name, presence: true
end
