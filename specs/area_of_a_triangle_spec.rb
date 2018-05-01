require 'rspec'
require_relative '../katas/area_of_a_triangle'

def three_points(x0, y0, x1, y1, x2, y2)
  [Point.new(x0, y0), Point.new(x1, y1), Point.new(x2, y2)]
end

def error_percent(expected, got)
  100 - 100 * got / expected
end

def triangle_test(x0, y0, x1, y1, x2, y2, expected)
  triangle = three_points x0, y0, x1, y1, x2, y2
  result = area_of_triangle triangle[0], triangle[1], triangle[2]
  puts "expected: #{expected}"
  puts "got #{result}"
  error = error_percent(expected, result)
  expect(error).to be < 1
  expect(error).to be > -1
end

describe 'it should return the area (within 1% margin of error) of a triangle defined by three points' do

  it 'should work for whole numbers' do
    triangle_test(0, 0, 4, 0, 4, 3, 6)
  end

  it 'should work with floats' do
    triangle_test(1.1, 1.1, 5.5, 1.1, 5.5, 4.4, 7.26)
  end

  it 'should work with negative numbers' do
    triangle_test(-1, -1, 3, -1, 3, 2, 6)
  end

  it 'should return 0 when all three points are in-line' do
    triangle = three_points(-2, 0, 0, 0.5, 1, 0.75)
    expect(area_of_triangle triangle[0], triangle[1], triangle[2]).to eq 0
  end
end
