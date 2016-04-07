# rpn.init.rb
# Ernest Prabhakar
# 6-APR-2016
#
# Wrap Eval for use by REPL

require_relative './rpn_parse'

def rpn_init
  rpn = RPNParse.new
  
  rpn.number /\A\s*[+-]?\d+\z/ , -> s {Integer(s)}
  rpn.number /\A\s*[+-]?\d+\.\d+\z/ , -> s {Float(s)}
  rpn.operator /\A\+\z/, -> a,b {a + b}
  rpn.operator /\A\-\z/, -> a,b {a - b}
  rpn.operator /\A\*\z/, -> a,b {a * b}
  rpn.operator /\A\/\z/, -> a,b {1.0 * a / b}
  rpn
end
