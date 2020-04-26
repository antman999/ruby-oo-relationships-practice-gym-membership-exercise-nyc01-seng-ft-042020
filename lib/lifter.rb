require 'pry'
class Lifter
  attr_reader :name, :lift_total
@@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def self.all
    @@all
  end
  def memberships
    # Get a list of all the memberships that a specific lifter has X
    Membership.all.select do |mem|
      mem.lifter == self 
  end
end
  # Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map do |mem|
      mem.gyms
  end
end
def lift_total(name,cost)
  Membership.new(cost,self,name) 
end
# Get the average lift total of all lifters 
def average
lift_Average = @@all.map do |lyft|
  lyft.lift_total
end
lift_Average.sum / lift_Average.size
end
def liftsum
  lift_total.map do |total|
    total.sum
end
end
end

