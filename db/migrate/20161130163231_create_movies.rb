class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :date
      t.text :description
      t.string :picture
      t.references :user, foreign_key: true
      t.string :participant_type
      t.integer :participant_id

      t.timestamps
    end
  end
end
