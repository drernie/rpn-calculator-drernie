# First tests

require 'rpn_parse'

RSpec.describe "Parse" do
  before do
    @rpn = RPNParse.new()
  end
  
  it "Returns only error if nothing configured" do
    result = @rpn.call "1"
    expect(result).to match "Error"
  end  

  it "Returns rpn.number if properly configured" do
    @rpn.number /\d+/, -> s {Integer(s)}
    result = @rpn.call "1"
    expect(result).to eq 1
  end  

  it "Uses rpn.operator if properly configured" do
    @rpn.number /\d+/, -> s {Integer(s)}
    @rpn.operator /\+/, -> a,b {a + b}
    @rpn.call "5"
    @rpn.call "8"
    result = @rpn.call "+"
    expect(result).to eq 13
  end  

end
