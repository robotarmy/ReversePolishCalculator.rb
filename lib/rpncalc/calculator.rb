module Calculator
  include RPNOperation
   def calculate(input)
    result = nil
    begin
      result = operation(input)
    rescue
      result = "#{$!.message} - Reset Calculator"
      reset
    end
    return  result
  end
end
