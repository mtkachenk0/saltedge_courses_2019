# Question:
describe "#symbolize" do
  it "creates an array of symbols" do
    arr = %w|b c d c a|
    expected = [:b, :c, :d, :c, :a]
    expect(arr.symbolize).to eq expected
  end
end

# Answer:
class Array
  def symbolize
    map(&:to_sym)
  end
end


# 2.1 Question:
describe "#has_string?" do
  it "returns true if self has a string" do
    arr = [:bob, "the", 42]
    expect(arr.has_string?).to eq true
  end

  it "returns false if self doesn't have a string" do
    arr = [:shut, :em, :down]
    expect(arr.has_string?).to eq false
  end
end


# 2.2 Question:
describe "#sort_by_length" do
  it "orders words from smallest to largest" do
    arr = %w|this is the story of a girl|
    expected = %w|a is of the this girl story|
    expect(arr.sort_by_length).to eq expected
  end
end


# 2.3 Question:
describe "#mean" do
  it "calculates average" do
    arr = [1, 2, 3, 4]
    expect(arr.mean).to eq 2.5
  end
end


# 2.4 Question:
describe "#unzip" do
  it "deconstructs nested array" do
    nums = [1, 2, 3]
    lets = %w|a b c|
    zipped = nums.zip(lets)
    expected = [["a", "b", "c"], [1, 2, 3]]
    expect(zipped.unzip).to eq expected
  end
end


# 2.5 Question:
describe "#super_compact" do
  it "removes nil and empty elements" do
    arr = [:bob, "", nil, [], "joe"]
    expected = [:bob, "joe"]
    expect(arr.super_compact).to eq expected
  end
end
