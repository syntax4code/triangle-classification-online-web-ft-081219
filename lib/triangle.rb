class Triangle  #Triangle class that accepts three arguments on initialization

end

  attr_reader :side1, :side2, :side3
  @sides = []

  def initialize(side1, side2, side3) #the 3 arguments that are initialized
    @side1, @side2, @side3 = side1, side2, side3
    @sides = [side1, side2, side3]
  end

  def kind  # the kind method returns, as a symbol, :equilateral, :isosceles, :scalene
      validate_triangle
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        :isosceles
      else
        :scalene

      end

    end

    def validate_triangle
        real_triangle = [(a + b > c), (a + c > b), (b + c > a)] #this is a basic algorithm for determining real triangles
        [a, b, c].each do |side|    # this iterates over the real_triangle array and shoves false into TriangleError if false.
          real_triangle << false if side <= 0
        raise TriangleError if real_triangle.include?(false)
        end
        class TriangleError < StandardError   # the kind method should raise a custom error, TriangleError if the triangle is invalid

      end

  end
