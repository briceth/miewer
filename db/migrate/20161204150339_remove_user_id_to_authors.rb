class RemoveNationalityToActors < ActiveRecord::Migration[5.0]
  def change
    remove_column :actors, :nationality, :string
  end
end
