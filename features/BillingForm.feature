Feature: As a online shopper
  I want to know which field I should fix if I made a mistake in the billing form
  So I can finish my purchase

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
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     | 

Scenario Outline: Fill the form with the wrong zip code 0000
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 0000               |
    | Phone       | 123-123-1234           |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1234-123456-12345    |
    | Expiration  | 11/31              |
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then A notification pops up "Please enter a valid zip code in this field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     | 

Scenario Outline: Fill the form with the wrong card number 1
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126             |
    | Phone       | 123-123-1234           |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1    |
    | Expiration  | 11/31              |
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then A notification pops up "Please enter a valid card number of the form '1234-123456-12345' in this field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1  |
  | External Frame Backpack| 3     | 

Scenario Outline: Fill the form with the wrong phone number
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126             |
    | Phone       | 123-123-123          |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1234-123456-12345   |
    | Expiration  | 11/31              |
    
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then A notification pops up "Please enter a valid phone number in this field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1  |
  | External Frame Backpack| 3     | 


  Scenario Outline: Fill the form with empty Name
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        |            |
    | Address     | perez    |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126             |
    | Phone       | 123-123-123          |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1234-123456-12345   |
    | Expiration  | 11/31              |
    
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then A notification pops up "This is a required field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1  |
  | External Frame Backpack| 3     | 


   Scenario Outline: Fill the form with empty Address
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | pepito           |
    | Address     |   |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126             |
    | Phone       | 123-123-123          |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1234-123456-12345   |
    | Expiration  | 11/31              |
    
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then A notification pops up "This is a required field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1  |
  | External Frame Backpack| 3     | 

  Scenario Outline: Fill the form with empty city
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | pepito           |
    | Address     | perez  |
    | City        |         |
    | State       | cochabamba                 |
    | Zip         | 33126             |
    | Phone       | 123-123-123          |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1234-123456-12345   |
    | Expiration  | 11/31              |
    
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then A notification pops up "This is a required field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1  |
  | External Frame Backpack| 3     | 

   Scenario Outline: Fill the form with empty state
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | pepito           |
    | Address     | perez  |
    | City        | cochabamba        |
    | State       |                 |
    | Zip         | 33126             |
    | Phone       | 123-123-123          |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1234-123456-12345   |
    | Expiration  | 11/31              |
    
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then A notification pops up "This is a required field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1  |
  | External Frame Backpack| 3     | 

  Scenario Outline: Fill the form with a incorrect date
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | pepito           |
    | Address     | perez  |
    | City        | cochabamba        |
    | State       | cochabamba        |
    | Zip         | 33126             |
    | Phone       | 123-123-123          |
    | E-mail      | pepito@borland.com |
    | Card Type   | American Express   |
    | Card Number | 1234-123456-12345   |
    | Expiration  | 11^31              |
    
  Then I click on the same as bill
  When I click on the "Place The order" Button
  Then A notification pops up "Please enter a valid date of the form 'MM/YY' in this field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1  |
  | External Frame Backpack| 3     |