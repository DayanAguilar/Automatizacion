Feature: As a online shopper
  I want to see my receipt
  So I can see where my product will be shipped 

Background:
    Given I am at GMO online site
    When I click the "About the Enter GMO Online" button

Scenario Outline: Fill the form with the correct data
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234           |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1234-123456-12345    |
    | Expiration  | 11/31              |
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then I see the succesful notification
  Then I see the following data in the receipt
    | Name        | pepito           |
    | Address     | perez     |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234          |
Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 2   |
  | External Frame Backpack     | 2   |