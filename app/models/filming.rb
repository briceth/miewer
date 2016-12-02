# == Schema Information
#
# Table name: filmings
#
#  id         :integer          not null, primary key
#  actor_id   :integer
#  movie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#
# Indexes
#
#  index_filmings_on_actor_id   (actor_id)
#  index_filmings_on_author_id  (author_id)
#  index_filmings_on_movie_id   (movie_id)
#
# Foreign Keys
#
#  fk_rails_756668361e  (actor_id => actors.id)
#  fk_rails_ec460be44a  (author_id => authors.id)
#  fk_rails_ff2405190d  (movie_id => movies.id)
#

class Filming < ApplicationRecord
  belongs_to :actor
  belongs_to :movie
end
