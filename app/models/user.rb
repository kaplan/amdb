class User < ActiveRecord::Base
  attr_accessible :userid, :username

  validates_presence_of :username
  validates_uniqueness_of :username

  # has

  # belongs

end
