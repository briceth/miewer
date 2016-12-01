class AddReviewableTypeAndReviewableIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :reviewable_type, :string
    add_column :reviews, :reviewable_id, :integer
  end
end
