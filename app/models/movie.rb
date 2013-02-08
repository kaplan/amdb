class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title, :year
  validates_presence_of :title, :director_id

  # belongs to director
  def director
    return Director.find_by_id(self.director_id)
  end

  # has many roles
  def roles
    return Role.where(:movie_id => self.id)
  end

  # has many votes
  def votes
    return Vote.where(:movie_id => self.id)
  end

end
