# First tests

require 'rpn_parse'

RSpec.describe "Parse" do
  it "Returns only error if nothing configured" do
    result = rpn_parse "1"
    expect(result).to match "Error"
  end  

  it "Returns number if properly configured" do
    result = rpn_parse "1"
    expect(result).to eq 1
  end  

end
