# rpn_init.rb
# Ernest Prabhakar
# 6-APR-2016
#
# Wrap Eval for use by REPL

require_relative './rpn_parse'

def rpn_init
  rpn_number /\A\s*[+-]?\d+\z/ , -> s {Integer(s)}
  rpn_number /\A\s*[+-]?\d+\.\d+\z/ , -> s {Float(s)}
  rpn_operator /\A\+\z/, -> a,b {a + b}
  rpn_operator /\A\-\z/, -> a,b {a - b}
  rpn_operator /\A\*\z/, -> a,b {a * b}
  rpn_operator /\A\/\z/, -> a,b {1.0 * a / b}
  -> x {
    rpn_parse x
  }
end
