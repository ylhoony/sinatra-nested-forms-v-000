class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize
    self.save
  end

  def save
    @@ships << self
  end

  def self.clear
    @@ships.clear
  end

end
