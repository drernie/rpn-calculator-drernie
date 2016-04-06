# First tests

require 'rpn_eval'

RSpec.describe "Input" do
  it "Takes a integer string and returns an integer" do
    rpn_eval = RPNEval.new
    result = rpn_eval.call "4"
    expect(result).to eq 4
  end

end
