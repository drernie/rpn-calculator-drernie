# Stub for testing

class RPNEval
  attr :stack
  def initialize()
    stack = []
  end
  
  def call(number)
    value = Integer(number)
    value
  end
end
