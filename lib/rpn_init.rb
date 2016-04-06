# rpn_init.rb
# Ernest Prabhakar
# 6-APR-2016
#
# Wrap Eval for use by REPL

require_relative './rpn_eval'

def rpn_init
  rpn_eval = RPNEval.new
  -> x {
    rpn_eval.call x
  }
end
