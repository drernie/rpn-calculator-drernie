# First tests

require 'rpn_parse'

RSpec.describe "Parse" do
  it "Returns only error if nothing configured" do
    result = rpn_parse "1"
    expect(result).to match "Error"
  end  

  it "Returns rpn_number if properly configured" do
    rpn_number /\d+/, -> s {Integer(s)}
    result = rpn_parse "1"
    expect(result).to eq 1
  end  

end
