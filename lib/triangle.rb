class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
  @b == @b || @c == @c
    :isoceles
  end

class TriangleError < StandardError
end
end
