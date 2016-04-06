# First tests

require 'rpn_parse'

RSpec.describe "Parse" do
  before do
    rpn_reset()
  end

  after do
    rpn_reset()
  end
  
  it "Returns only error if nothing configured" do
    result = rpn_parse "1"
    expect(result).to match "Error"
  end  

  it "Returns rpn_number if properly configured" do
    rpn_number /\d+/, -> s {Integer(s)}
    result = rpn_parse "1"
    expect(result).to eq 1
  end  

  it "Uses rpn_operator if properly configured" do
    rpn_number /\d+/, -> s {Integer(s)}
    rpn_operator /\+/, -> a,b {a + b}
    rpn_parse "5"
    rpn_parse "8"
    result = rpn_parse "+"
    expect(result).to eq 13
  end  

end
