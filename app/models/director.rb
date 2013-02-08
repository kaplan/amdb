class Director < ActiveRecord::Base
  attr_accessible :dob, :name

  validates_presence_of :name

  # has many movies
  def movies
    return Movie.where(:director_id => self.id)
  end

end
