class RemoveAuthorIdToFilmings < ActiveRecord::Migration[5.0]
  def change
    remove_column :filmings, :author_id, :integer
  end
end
