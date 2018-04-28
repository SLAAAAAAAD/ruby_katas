require 'rspec'
require_relative '../katas/area_of_a_triangle'

def three_points(x0, y0, x1, y1, x2, y2)
  [Point.new(x0, y0), Point.new(x1, y1), Point.new(x2, y2)]
end

describe 'it should return the area of a triangle defined by three points' do

  it 'should work for whole numbers' do
    triangle = three_points 0, 0, 4, 0, 4, 3
    expect(area_of_triangle triangle[0], triangle[1], triangle[2]).to eq 6
  end

  it 'should work with floats' do
    triangle = three_points 1.1, 1.1, 5.5, 1.1, 5.5, 4.4
    expect(area_of_triangle triangle[0], triangle[1], triangle[2]).to eq 7.26
  end

  it 'should work with negative numbers' do
    triangle = three_points -1, -1, 3, -1, 3, 2
    expect(area_of_triangle triangle[0], triangle[1], triangle[2]).to eq 6
  end

  it 'should be accurate to within 1%' do
    triangle = three_points (-4 * Math::PI), (2 * Math::PI), (-4 * Math::PI), (-1 * Math::PI), 0, (-1 * Math::PI)
    a = 6 * Math::PI ** 2
    b = (area_of_triangle triangle[0], triangle[1], triangle[2])
    error_percent = 100 - 100 * b / a
    expect(error_percent).to be < 1
    expect(error_percent).to be > -1
  end

  it 'should return 0 when all three points are in-line' do
    triangle = three_points -2, 0, 0, 0.5, 1, 0.75
    expect(area_of_triangle triangle[0], triangle[1], triangle[2]).to eq 0
  end
end
