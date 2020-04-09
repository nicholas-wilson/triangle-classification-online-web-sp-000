class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    if !valid_triangle?(side1, side2, side3)
      raise TriangleError
    else
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end
  end

  def kind
    if (@side1 == @side2) && (@side2 == @side3)
      :equilateral
    elsif (@side1 == @side2) || @side1 == @side3 || @side3 == @side2
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?(side1, side2, side3)
    if (side1 + side2 > side3) && (side1 + side3 > side2) && (side3 + side2 > side1)
      true
    else
      false
    end
  end

  class TriangleError < StandardError
    def message
      "Was not given a valid triangle"
    end
  end
end