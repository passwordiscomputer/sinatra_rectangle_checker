class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end

  def square
    if @length == @width
      return "This is a square"
    end
    "This is not a square"
  end
end
