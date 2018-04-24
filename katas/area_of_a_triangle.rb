# Find the area of a triangle
#
# using the formula a=(1/2)bh where b is the length of a leg of the triangle
# and h is the perpendicular distance from that leg to the opposite vertex.
#
# The triangle is defined by three coordinate pairs.
# A simple Point class is provided, though you may add to it if you wish

def area_of_triangle(p0, p1, p2)
  p1.translate (0 - p0.x), (0 - p0.y)
  p2.translate (0 - p0.x), (0 - p0.y)
  p0.translate (0 - p0.x), (0 - p0.y)

  p2.rotate(0 - p1.angle)
  p1.rotate(0 - p1.angle)

  p1.x * p2.y / 2
end

class Point
  attr_accessor(:x, :y)

  def initialize(x, y)
    @x = x
    @y = y
  end

  def translate(x, y)
    @x += x
    @y += y
  end

  def angle
    Math.atan2(@y, @x)
  end

  def rotate(angle)
    c = Complex(@x, @y) * Math::E ** (Complex(0, 1) * angle)
    @x = c.rect[0]
    @y = c.rect[1]
  end
end