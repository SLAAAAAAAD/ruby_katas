# Find the area of a triangle
#
# using the formula a=(1/2)bh where b is the length of a leg of the triangle
# and h is the perpendicular distance from that leg to the opposite vertex.
#
# The triangle is defined by three coordinate pairs.
# A simple Point class is provided, though you may add to it if you wish

# One easy way to deal with the points given is to translate all points such that p0 is at the origin,
# and then rotate all points such that p1 lays on the x axis. Then we can easily get b = p1.x, and h = p2.y

def area_of_triangle(p0, p1, p2)
  # translate all points by the inverse of p0
  # do p0 last!
  p1.translate (0 - p0.x), (0 - p0.y)
  p2.translate (0 - p0.x), (0 - p0.y)
  p0.translate (0 - p0.x), (0 - p0.y)

  # rotate p1 and p2 clockwise by the angle of p1
  # don't bother to do p0, it's is already at (0,0)
  # do p1 last!
  p2.rotate(0 - p1.angle)
  p1.rotate(0 - p1.angle)

  # b = p1.x because p1 is on the x axis now
  # h = p2.y because the triangle is now laying flat and p2.y is the farthest point from the x axis
  a = p1.x * p2.y / 2

  # if p2.y is negative, you need to flip the end result because areas can't be negative
  a *= -1 if a < 0
  a
end

class Point
  attr_accessor(:x, :y)

  def initialize(x, y)
    @x = x
    @y = y
  end

  # simple method for two-dimensional translation
  def translate(x, y)
    @x += x
    @y += y
  end

  # returns the angle from the positive x axis in radians.
  # yes the x and y are meant flipped in the method call.
  def angle
    Math.atan2(@y, @x)
  end

  # this example uses Ruby's built in complex number variable type, and Euler's formula: e^(i*pi) = -1
  # with this method you do not have to worry about quadrants or signs getting flipped,
  # and it is much simpler code-wise.
  # Normal trigonometry will work too.
  def rotate(angle)
    c = Complex(@x, @y) * Math::E ** (Complex(0, 1) * angle)
    @x = c.rect[0]
    @y = c.rect[1]
  end
end
