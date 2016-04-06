# Operator tests

require 'rpn_init'

RSpec.describe "Operate" do
  before do
    @rpn = rpn_init()
  end
  
  it "Adds two numbers (sample #1)" do
    @rpn.call "5"
    @rpn.call "8"
    result = @rpn.call "+"
    expect(result).to eq 13
  end

  it "Subtracts two numbers" do
    @rpn.call "5"
    @rpn.call "8"
    result = @rpn.call "-"
    expect(result).to eq -3
  end

  it "Multiplies two numbers" do
    @rpn.call "5"
    @rpn.call "8"
    result = @rpn.call "*"
    expect(result).to eq 40
  end

  it "Divides two numbers" do
    @rpn.call "5"
    @rpn.call "8"
    result = @rpn.call "/"
    expect(result).to eq 0.625
  end
  
  it "passes sample input #2" do
    @rpn.call "-3"
    @rpn.call "-2"
    @rpn.call "*"
    @rpn.call "5"
    result = @rpn.call "+"
    expect(result).to eq 11
  end

  it "passes sample input #3" do
    @rpn.call "2"
    @rpn.call "9"
    @rpn.call "3"
    @rpn.call "+"
    result = @rpn.call "*"
    expect(result).to eq 24
  end

  it "passes sample input #4" do
    @rpn.call "20"
    @rpn.call "13"
    @rpn.call "-"
    @rpn.call "2"
    result = @rpn.call "/"
    expect(result).to eq 3.5
  end

end
