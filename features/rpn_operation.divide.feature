Feature: RPN Calculator supports divide operation
  As Dr Piotr Rudniki
  I want to divide numbers via std in and output a numbers

Background:
  Given a file named "test_input_rpn_numbers_divide" with:
  """
  10
  2
  /
  q
  """
  Given a file named "test_input_rpn_numbers_divide_with_remainder" with:
  """
  10
  3
  /
  q
  """
    
  Scenario: input with / operator : whole numbers 
    When I run "cat test_input_rpn_numbers_divide | ruby ../../calculate.rb"
    Then I should see:
    """
    10
    2
    5
    goodbye
    """

  Scenario: input with / operator : float numbers 
    When I run "cat test_input_rpn_numbers_divide_with_remainder| ruby ../../calculate.rb"
    Then I should see:
    """
    10
    3
    3.33333333333333
    goodbye
    """
    
