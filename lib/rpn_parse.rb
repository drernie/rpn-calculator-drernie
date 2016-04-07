# parse.rb
# Ernest Prabhakar
# 5-APR-2016
#
# Manage stack
# Configure parser
#
# See https://github.com/drernie/rpn-calculator-drernie/wiki for motivation and tradeoffs

class RPNParse
  
  attr :stack, :parsers
  
  def initialize
    @stack = []
    @parsers = []
  end

  def number(pattern, transform)
    @parsers << -> string {
      @stack << transform.call(string) if pattern.match(string)
    }
  end

  def operator(pattern, behavior)
   @parsers << -> string {
      return nil unless pattern.match(string)
      return "Error: insufficient operands" unless @stack.length > 1
      b = @stack.pop
      a = @stack.pop
      @stack << behavior.call(a,b)
    }
  end

  def call(string)
    @parsers.each do |parser|
      result = parser.call(string)
      return @stack[-1] if result
    end
    return "Error: Unknown input: #{string}"
  end

end