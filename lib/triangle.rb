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
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
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



class TriangleError < StandardError   # triangle error code

end
