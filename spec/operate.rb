# Operator tests

require 'rpn_eval'

RSpec.describe "Operate" do
  before do
    @rpn_eval = RPNEval.new
  end
  
  it "Adds two numbers (sample #1)" do
    @rpn_eval.call "5"
    @rpn_eval.call "8"
    result = @rpn_eval.call "+"
    expect(result).to eq 13
  end

  it "Subtracts two numbers" do
    @rpn_eval.call "5"
    @rpn_eval.call "8"
    result = @rpn_eval.call "-"
    expect(result).to eq -3
  end

  it "Multiplies two numbers" do
    @rpn_eval.call "5"
    @rpn_eval.call "8"
    result = @rpn_eval.call "*"
    expect(result).to eq 40
  end

  it "Divides two numbers" do
    @rpn_eval.call "5"
    @rpn_eval.call "8"
    result = @rpn_eval.call "/"
    expect(result).to eq 0.625
  end
  
  it "passes sample input #2" do
    @rpn_eval.call "-3"
    @rpn_eval.call "-2"
    @rpn_eval.call "*"
    @rpn_eval.call "5"
    result = @rpn_eval.call "+"
    expect(result).to eq 11
  end

  it "passes sample input #3" do
    @rpn_eval.call "2"
    @rpn_eval.call "9"
    @rpn_eval.call "3"
    @rpn_eval.call "+"
    result = @rpn_eval.call "*"
    expect(result).to eq 24
  end

  it "passes sample input #4" do
    @rpn_eval.call "20"
    @rpn_eval.call "13"
    @rpn_eval.call "-"
    @rpn_eval.call "2"
    result = @rpn_eval.call "/"
    expect(result).to eq 3.5
  end

end
