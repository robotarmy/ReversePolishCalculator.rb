Feature: RPN Calculator supports minus operation
  As Dr Piotr Rudniki
  I want to minus numbers via std in and output a result

  Background:
    Given a file named "test_input_rpn_numbers_minus" with:
    """
    5
    1
    -
    q
    """
    
  Scenario: input with - operator
    When I run "cat test_input_rpn_numbers_minus | ruby ../../calculate.rb"
    Then I should see:
    """
    5
    1
    4
    goodbye
    """
 
