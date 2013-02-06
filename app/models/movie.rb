class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title, :year

  def director
    return Director.find_by_id(self.director_id)
  end

end
