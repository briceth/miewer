class RemoveUserIdToAuthors < ActiveRecord::Migration[5.0]
  def change
    remove_column :authors, :user_id, :integer
  end
end
