module RPNOperation
   Ops = {
    '+' => lambda {|first, second|
        first + second
      },
    '-' => lambda {|first, second|
        first - second
      },
    '*' => lambda {|first, second|
        first * second
      },
    '/' => lambda {|first, second|
        first / second
      },
  }
  def operation(op,stack)
    result = op
    if Ops.has_key? op 
      unless stack.size >= 2
          raise MissingOperandsError.new
      end
      second = stack.pop
      first  = stack.pop
      result = Ops[op].call(first,second)
    end
    result
  end
end

