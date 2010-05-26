Feature: RPN Calculator supports basic edge cases
  As Dr Piotr Rudniki
  I want to inform the user if they hit edge cases and reset the calculator
  Background:
    Given a file named "test_input_rpn_numbers_that_break" with:
    """
    5
    1
    + 
    +
    +
    1
    1
    +
    q
    """
    Given a file named "test_input_rpn_numbers_with_divide_by_zero" with:
    """
    5
    1
    / 
    0
    /
    1
    1
    +
    q
    """

    Scenario: input with stack underflow operator
    When I run "cat test_input_rpn_numbers_that_break| ruby ../../calculate.rb"
    Then I should see:
    """
    5
    1
    6
    Expects 2 Operands - Reset Calculator
    Expects 2 Operands - Reset Calculator
    1
    1
    2
    goodbye
    """
    Scenario: input with divide by zero
    When I run "cat test_input_rpn_numbers_with_divide_by_zero | ruby ../../calculate.rb"
    Then I should see:
    """
    5
    1
    5
    0
    Infinity - Reset Calculator
    1
    1
    2
    goodbye
    """

