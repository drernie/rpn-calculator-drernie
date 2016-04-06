# rpn_parse.rb
# Ernest Prabhakar
# 5-APR-2016
#
# Manage stack
# Configure parser
#
# See https://github.com/drernie/rpn-calculator-drernie/wiki for motivation and tradeoffs

STACK = []

PARSERS = []

def rpn_number(pattern, transform)
  PARSERS << -> string {
    STACK << transform.call(string) if pattern.match(string)
  }
end

def rpn_operator(pattern, behavior)
 PARSERS << -> string {
    return nil unless pattern.match(string)
    return "Error: insufficient operands" unless STACK.length > 1
    b = STACK.pop
    a = STACK.pop
    behavior.call(a,b)
  }
end

def rpn_parse(string)
  PARSERS.each do |parser|
    result = parser.call(string)
    return STACK[-1] if result
  end
  return "Error: Unknown input: #{string}"
end

