module Calculator
  include RPNOperation
  include FloatToSimpleFormat 
  attr_accessor :stack
  attr_accessor :input
  def calculate(input)
    self.stack ||= []
    self.input = input
    return run_op
  end
  def run_op
    result = nil
    begin
    result = operation(self.input,stack)
    self.stack << format_input(result)
    result = format_result(result)
    rescue
      result = "#{$!.message} - Reset Calculator"
      self.stack = nil
    end
    return  result
  end
end
