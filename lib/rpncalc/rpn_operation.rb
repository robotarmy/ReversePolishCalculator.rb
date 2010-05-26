module RPNOperation
   include FloatToSimpleFormat 
  attr_accessor :stack
  def reset
    self.stack = []
  end
  def operation(op)
    self.stack ||= reset()
    result = op
    if ['+','-','*','/'].include? op 
      unless stack.size >= 2
          raise MissingOperandsError.new
      end
      second = format_input(stack.pop)
      first  = format_input(stack.pop)
      result = format_result(first.send(op,second))
    end
    stack << result
    result
  end
end

