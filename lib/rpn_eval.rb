# rpn_repl.rb
# Ernest Prabhakar
# 5-APR-2016
#
# Parse string
# Maintain stack
# Perform operations
# Return 'Error' on invalid input

# Parser Regex from http://stackoverflow.com/questions/8071533/convert-input-value-to-integer-or-float-as-appropriate-using-ruby

class RPNEval
  attr :stack
  def initialize()
    @stack = []
  end
    
  def call(input)
    value = case(input)
    when /\A\s*[+-]?\d+\.\d+\z/
        @stack << input.to_f
    when /\A\s*[+-]?\d+(\.\d+)?[eE]\d+\z/
        @stack << input.to_f
    when /\A\s*[+-]?\d+\z/ 
        @stack << input.to_i
    when /\A[\+\-\*\/]\z/
      return "Error: insufficient operands" unless @stack.length > 1
      b = @stack.pop
      a = @stack.pop
      case(input)
      when /\+/
        @stack << a + b
      when /\-/
        @stack << a - b
      when /\*/
        @stack << a * b
      when /\//
        @stack << 1.0 * a / b
      end
    else 
      return "Error: Unknown input: #{input}"
    end
    @stack[-1]
  end
end
