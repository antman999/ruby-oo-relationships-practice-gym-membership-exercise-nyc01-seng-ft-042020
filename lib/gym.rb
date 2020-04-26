require 'pry'
class Gym
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  #get a list of all the gyms
  def self.all
    @@all
  end
  def memberships
    Membership.all.collect do |mem|
      mem.gym == self
  end
end
def lifters_certain_gym
  Lifter.map do |f|
    f.gym
  #Get a list of all the lifters that have a membership to a specific gym
end
end

def lifters_this_gym
  Lifter.all.map do |f|
    f.gym == self
    end
#get a list of the names of all lifters that have a membership to that gym

end

end
