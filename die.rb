class Die

  attr_reader :number_of_sides, :prng
  attr_accessor :value

  def initialize(number_of_sides, prng)
    @number_of_sides = number_of_sides
    @value = 1
    @prng = prng
  end

  def roll!
    self.value = prng.rand(1..number_of_sides)
  end

  def to_s
    "#{self.value}"
  end

end
