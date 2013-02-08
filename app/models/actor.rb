class Actor < ActiveRecord::Base
  attr_accessible :dob, :name

  def roles
    return Role.where(:actor_id => self.id)
  end

  def to_param
    # slug
    # "#{id}-#{name.parameterize}"
    "#{id} #{name}".parameterize
    # [id, name.parameterize].join("-")
  end

end
