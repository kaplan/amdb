class Vote < ActiveRecord::Base
  attr_accessible :movie_id, :user_id

  # belongs to user
  def user
    return User.find_by_id(self.user_id)
  end

  # belongs to movie
  def movie
    return Movie.find_by_id(self.movie_id)
  end

end
