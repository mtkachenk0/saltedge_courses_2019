require_relative "../../app/hui"
require 'spec_helper'

describe Hui do
  it "has length of 20" do
    expect(Hui::LENGTH).to eq(20)
  end
end
