class RemoveInfoToActors < ActiveRecord::Migration[5.0]
  def change
    remove_column :actors, :info, :string
  end
end
