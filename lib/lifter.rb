class Lifter
  attr_reader :name, :lift_total, :gym, :membership

  @@all = []

  def initialize(name, lift_total, gym)
    @name = name
    @lift_total = lift_total
    @gym = gym
    @membership = membership
    @@all << self
  end

  def self.all 
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|gym| gym.lifter}
    
    binding.pry
    
  end

  def new_membership
    Membership.new(cost, self, gym)
  
  # binding.pry
  
  end

end
