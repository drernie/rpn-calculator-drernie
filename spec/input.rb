# First tests

require 'rpn_init'

RSpec.describe "Input" do
  before do
    @rpn = rpn_init()
  end
  
  it "Takes a integer string and returns an integer" do
    result = @rpn.call "4"
    expect(result).to eq 4
  end

  it "Takes negative integers" do
    result = @rpn.call "-4"
    expect(result).to eq -4
  end

  it "Takes a decimal string and returns a float" do
    result = @rpn.call "5.1"
    expect(result).to eq 5.1
  end

  it "Takes negative floats" do
    result = @rpn.call "-5.1"
    expect(result).to eq -5.1
  end

  it "Returns error on invalid numbers" do
    result = @rpn.call "-5.1.a"
    expect(result).to match "Error"
  end  

end
