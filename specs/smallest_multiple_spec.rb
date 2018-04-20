require 'rspec'
require_relative '../katas/smallest_multiple'

describe 'should return the smallest possible multiple' do
  it 'should return the smallest possible multiple' do
    expect(smallest_multiple(10)).to eq 2520
    expect(smallest_multiple(11)).to eq 27720
    expect(smallest_multiple(20)).to eq 232792560
    expect(smallest_multiple(21)).to eq 232792560
    expect(smallest_multiple(30)).to eq 2329089562800
    expect(smallest_multiple(100)).to eq 69720375229712477164533808935312303556800
  end
end
