module FloatToSimpleFormat
  def format_input(value)
    value.to_f
  end
  def format_result(float_value)
    if float_value.to_i == float_value
      float_value.to_i
    else 
      float_value
    end
  end
end
