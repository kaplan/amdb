class User < ActiveRecord::Base
  attr_accessible :userid, :username

  validates_uniqueness_of :username

  has_many :votes
  # def votes
  #   return Vote.where(:user_id => self.id)
  # end

end
