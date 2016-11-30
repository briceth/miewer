class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.integer :age
      t.string :profession
      t.text :biography
      t.string :nationality
      t.references :user, foreign_key: true
      t.string :image_id

      t.timestamps
    end
  end
end
