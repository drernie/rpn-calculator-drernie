# Stub for testing

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
    else 
      return "Error: Unknown input: #{input}"
    end
    @stack[-1]
  end
end
