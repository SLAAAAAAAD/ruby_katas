require 'rspec'
require_relative '../katas/significant_figures'

describe 'it should do stuff' do
  it 'should do stuff' do
    expect(round(43096, 4)).to eq(43100)
    expect(round(430.96, 4)).to eq(431)
    expect(round(0.0043096, 4)).to eq(0.00431)
    expect(round(43096, 2)).to eq(43000)
    expect(round(4.3096, 2)).to eq(4.3)
  end
end