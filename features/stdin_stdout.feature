Feature: Calculator reads Standard in and writes Standard out.
  As Dr Piotr Rudniki
  I want to input numbers via std in and output a numbers

Background:
    Given a file named "test_input_numbers" with:
    """
    5
    1
    3
    q
    """
  
  Scenario: input without operators
    When I run "cat test_input_numbers | ruby ../../calculate.rb"
    Then I should see:
    """
    5
    1
    3
    goodbye
    """


