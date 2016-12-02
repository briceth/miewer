class RemoveParticipantIdAndParticipantTypeToMovies < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :participant_id, :integer
    remove_column :movies, :participant_type, :string
  end
end
