# Operator tests

require 'rpn_eval'

RSpec.describe "Operate" do
  before do
    @rpn_eval = RPNEval.new
  end
  
  it "Adds two numbers" do
    @rpn_eval.call "5"
    @rpn_eval.call "8"
    result = @rpn_eval.call "+"
    expect(result).to eq 13
  end

end
