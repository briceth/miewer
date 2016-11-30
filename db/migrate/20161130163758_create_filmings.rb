class CreateFilmings < ActiveRecord::Migration[5.0]
  def change
    create_table :filmings do |t|
      t.references :actor, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
