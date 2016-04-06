# rpn_repl.rb
# Ernest Prabhakar
# 5-APR-2016
#
# I/O Functions for REPL
# Generate Prompt
# Handle exit conditions
# Call evaluator
# Repeat

require_relative './rpn_init'

PROMPT = "> "
EXIT_MESSAGE = "\nThank you for trying Dr. Ernie's RPN Calculator. Goodbye!"

def check_for_end(input)
  if input.nil? or input == "q\n" then
    abort EXIT_MESSAGE
  end
end

def run
  rpn = rpn_init()
  
  loop do
    printf PROMPT
    input = gets()
    check_for_end(input)
    result = rpn.call input.chomp!
    puts result
  end
end