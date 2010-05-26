Feature: RPN Calculator supports plus operation
  As Dr Piotr Rudniki
  I want to add numbers via std in and output a result

  Background:
    Given a file named "test_input_rpn_numbers_plus" with:
    """
    5
    1
    +
    q
    """
    
  Scenario: input with + operator
    When I run "cat test_input_rpn_numbers_plus | ruby ../../calculate.rb"
    Then I should see:
    """
    5
    1
    6
    goodbye
    """

