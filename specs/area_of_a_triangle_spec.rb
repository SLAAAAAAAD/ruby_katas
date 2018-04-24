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
    triangle = three_points 0.5, 0.5, 4.5, 0.5, 4.5, 3.5
    expect(area_of_triangle triangle[0], triangle[1], triangle[2]).to eq 6
  end

  it 'should work with negative numbers' do
    triangle = three_points -1, -1, 3, -1, 3, 2
    expect(area_of_triangle triangle[0], triangle[1], triangle[2]).to eq 6
  end

  it 'should have a certain degree of accuracy' do
    triangle = three_points -2, -2, 2, 0, 0, 2
    a = Math.sqrt(8) * 1.5 * math.sqrt(2)
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
