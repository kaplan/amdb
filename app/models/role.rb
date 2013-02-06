class Role < ActiveRecord::Base
  attr_accessible :actor_id, :character_name, :movie_id
end
