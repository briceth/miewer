class AddAuthorIdToFilmings < ActiveRecord::Migration[5.0]
  def change
    add_reference :filmings, :author, foreign_key: true
  end
end
