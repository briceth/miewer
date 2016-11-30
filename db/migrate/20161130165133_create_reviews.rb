class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.string :review_type
      t.integer :review_id
      t.text :body

      t.timestamps
    end
  end
end
