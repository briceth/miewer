class AddInfoToActors < ActiveRecord::Migration[5.0]
  def change
    add_reference :actors, :info, :string
  end
end
