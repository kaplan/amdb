class Director < ActiveRecord::Base
  attr_accessible :dob, :name, :slug

  def movies
    return Movie.where(:director_id => self.id)
  end

  # def to_param
  #   persisted? ? to_key.join('-') : nil
  # end

  def to_param
    slug
    # "#{id}-#{name.parameterize}"
    # "#{id} #{name}".parameterize
    # [id, name.parameterize].join("-")
  end

end
