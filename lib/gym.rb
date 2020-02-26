class Gym
  attr_reader :name, :memberships

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|membership| membership.lifter}
  end
end
