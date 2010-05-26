module RPNOperation
   def operation(op,stack)
    result = op
    if ['+','-','*','/'].include? op 
      unless stack.size >= 2
          raise MissingOperandsError.new
      end
      second = stack.pop
      first  = stack.pop
      result = first.send(op,second)
    end
    result
  end
end

