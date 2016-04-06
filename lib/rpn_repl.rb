require_relative './rpn_eval'

PROMPT = "> "
EXIT_MESSAGE = "Thank you for trying Dr. Ernie's RPN Calculator. Goodbye!"

def check_for_end(input)
  if input.nil? or input == "q\n" then
    abort EXIT_MESSAGE
  end
end

def run
  rpn_eval = RPNEval.new
  
  loop do
    printf PROMPT
    input = gets
    check_for_end(input)
    result = rpn_eval.call input.chomp!
    puts result
  end
end