Feature: RPN Calculator supports times operation
  As Dr Piotr Rudniki
  I want to times numbers via std in and output a result

Background:
  Given a file named "test_input_rpn_numbers_times" with:
  """
  5
  2
  *
  q
  """
      
  Scenario: input with * operator
    When I run "cat test_input_rpn_numbers_times| ruby ../../calculate.rb"
    Then I should see:
    """
    5
    2
    10
    goodbye
    """

