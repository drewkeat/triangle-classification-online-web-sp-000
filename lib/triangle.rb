require 'pry'
class Triangle
  attr_accessor :s1, :s2, :s3, :kind
  
  KINDS = {
    equilateral: 1,
    isosceles: 2,
    scalene: 3
  }

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def sides
    [@s1, @s2, @s3]
  end

  def equal_sides
    sides.uniq.length
  end
#will return the number of equal sides
  def kind
    KINDS.key(equal_sides)
  end
#will return: equilateral, if equal_sides == 3; isoceles, if equal_sides == 2; scalene, if equal_sides == 0
end
binding.pry