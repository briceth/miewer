class RemoveRiviewTypeAndRiviewIdToReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :review_type, :string
    remove_column :reviews, :review_id, :integer
  end
end
