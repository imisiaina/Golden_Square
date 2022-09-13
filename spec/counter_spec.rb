require 'counter'

RSpec.describe Counter do
  it "returns the number the count has reached" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "returns the number the count has reached" do
    counter = Counter.new
    counter.add(0)
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "returns the number the count has reached" do
    counter = Counter.new
    counter.add(1)
    counter.add(4)
    counter.add(3)
    result = counter.report
    expect(result).to eq "Counted to 8 so far."
  end
end