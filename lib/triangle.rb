class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
  if @a == @b && @b == @c
     :equilateral
     
   elsif
   @a == @b || @b == @c || @a == @c
      :isosceles
   else 
     :scalene
   end
  end

  def valid?
  sum_one_two = @triangle_sides[0] + @triangle_sides[1]
  sum_one_three = @triangle_sides[0] + @triangle_sides[2]
  sum_two_three = @triangle_sides[1] + @triangle_sides[2]

  if (@triangle_sides.none? {|side| side <= 0}) &&
    (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
    return true
  else
    return false
  end
end

class TriangleError < StandardError
end
end
