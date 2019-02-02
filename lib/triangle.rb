class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
   @a == @b && @b == @c && @c == @a
     :equilateral
  end

class TriangleError < StandardError
end
end
