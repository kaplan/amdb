class Vote < ActiveRecord::Base
  attr_accessible :movie_id, :user_id

  # NOTE:
  # if you want to use the has_many through helper
  # you need to use the belongs_to helper in the model you're pulling thorugh

  belongs_to :user
  # def user
  #   return User.find_by_id(self.user_id)
  # end

  belongs_to :movie
  # def movie
  #   return Movie.find_by_id(self.movie_id)
  # end

end
