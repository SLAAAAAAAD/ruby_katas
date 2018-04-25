# Find the area of a triangle
#
# using the formula a=(1/2)bh where b is the length of a leg of the triangle
# and h is the perpendicular distance from that leg to the opposite vertex.
#
# The triangle is defined by three coordinate pairs.
# A simple Point class is provided, though you may add to it if you wish

def area_of_triangle(p0, p1, p2)
  # your awesome code here
end

class Point
  attr_accessor(:x, :y)

  def initialize(x, y)
    @x = x
    @y = y
  end
  # more of your awesome code here if you wish
end
