class Role < ActiveRecord::Base
  attr_accessible :actor_id, :character_name, :movie_id

  def actor
    return Actor.find_by_id(self.actor_id)
  end

  def movie
    return Movie.find_by_id(movie_id)
  end

end
