class Review < ApplicationRecord
  belongs_to :user
  belongs_to :review, polymorphic: true
end
