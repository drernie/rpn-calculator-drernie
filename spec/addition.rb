# First tests

require 'rpn_eval'

RSpec.describe "Addition" do
  it "Takes and returns a string with a number" do
    rpn_eval = RPNEval.new
    result = rpn_eval.call "4"
    expect(result).to eq "4"
  end
end
