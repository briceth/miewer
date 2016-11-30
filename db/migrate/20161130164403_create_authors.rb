class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.text :biography
      t.text :nationality
      t.references :user, foreign_key: true
      t.string :image_id

      t.timestamps
    end
  end
end
