class AddCategoryToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :category, :string
  end
end
