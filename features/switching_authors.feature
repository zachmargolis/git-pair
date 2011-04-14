Feature: Switching an author(s)
  In order to create commits on behalf of a pair of programmers
  A user should be able to
  switch the current pair

  Scenario: switching from one pair to another
    Given I have set my email template to "devs@example.com"
    When I add the author "Linus Torvalds <linus>"
    And I add the author "Junio C Hamano <junio>"
    And I switch to "linus junio"
    Then the email address should be "devs+linus+junio@example.com"
    