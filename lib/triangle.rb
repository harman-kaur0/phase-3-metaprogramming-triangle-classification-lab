class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    is_valid?

  end

  def kind
    if @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    else
      :isosceles
    end
  end

  def is_valid?
    if @side_1 > 0 && @side_2 > 0 && @side_3 > 0 && @side_1 + @side_2 > @side_3 && @side_2 + @side_3 > @side_1 && @side_1 + @side_3 > @side_2
      nil
    else 
      raise TriangleError
    end 
  end
    
  class TriangleError < StandardError
  end
end
