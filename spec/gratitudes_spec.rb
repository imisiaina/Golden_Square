require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns 'Be grateful for: bread, water'" do
    gratitudes = Gratitudes.new
    gratitudes.add("bread")
    gratitudes.add("water")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: bread, water"
  end

  it "returns 'Be grateful for: ' when passed ''" do
    gratitudes = Gratitudes.new
    result = gratitudes.format
    expect(result).to eq "Be grateful for: "
  end
end