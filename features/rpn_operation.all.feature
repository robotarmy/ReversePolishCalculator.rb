Feature: RPN Calculator supports all operators
  As Dr Piotr Rudniki
  I want to run many operators on numbers via std in and output a numbers

  Background:
    Given a file named "test_input_rpn_numbers_w_all_nested" with:
    """
    5
    1
    + 
    5
    -
    10
    *
    2
    /
    q
    """
    Scenario: input with all operator
    When I run "cat test_input_rpn_numbers_w_all_nested| ruby ../../calculate.rb"
    Then I should see:
    """
    5
    1
    6
    5
    1
    10
    10
    2
    5
    goodbye
    """

