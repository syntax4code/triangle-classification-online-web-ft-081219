class Triangle  #Triangle class that accepts three arguments on initialization

end

  attr_reader :side1, :side2, :side3
  @sides = []

  def initialize(side1, side2, side3) #the 3 arguments that are initialized
    @side1, @side2, @side3 = side1, side2, side3
    @sides = [side1, side2, side3]
  end

  def kind  #Give your Triangles an instance method, kind that returns, as a symbol, :equilateral, :isosceles, :scalene
      validate_triangle
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end

  def negative?
    @sides.each do |length|
      if(length <= 0)
        return true
      end
    end
  end

  def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end

  def scalene?
    (@side1 != @side2) && (@side1!= @side3) && (@side2 != @side3)
  end

  def isosceles?
    (@side2 == @side3) || (@side1 == @side2) || (@side1 = @side3)
  end

  def valid?
    (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
  end

end

class TriangleError < StandardError   # triangle error code

end
