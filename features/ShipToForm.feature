Feature: As an online shopper of GMO website
  I want to know which field I should fix if I made a mistake in the ship to form
  So I can finish my purchase

Background:
    Given I am at GMO online site
    When I click the "About the Enter GMO Online" button

Scenario Outline: Fill the ship to form with the correct data
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
  Then I fill the ship to form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234           |
  When I click on the "Place The order" Button
  Then I see the succesful notification
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     |
  | Glacier Sun Glasses    | 2     |

  Scenario Outline: Fill the ship to form with an empty name
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
  Then I fill the ship to form with the following data
    | Name        |             |
    | Address     | perez    |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234           |
  When I click on the "Place The order" Button
  Then A notification pops up "This is a required field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     |
  | Glacier Sun Glasses    | 2     |

  Scenario Outline: Fill the ship to form with an empty Address
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
  Then I fill the ship to form with the following data
    | Name        | pepito            |
    | Address     |     |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234           |
  When I click on the "Place The order" Button
  Then A notification pops up "This is a required field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     |
  | Glacier Sun Glasses    | 2     |

  Scenario Outline: Fill the ship to form with an empty city
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
  Then I fill the ship to form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        |        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234           |
  When I click on the "Place The order" Button
  Then A notification pops up "This is a required field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     |
  | Glacier Sun Glasses    | 2     |

  Scenario Outline: Fill the ship to form with an empty state
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
  Then I fill the ship to form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        | cochabamba      |
    | State       |                  |
    | Zip         | 33126               |
    | Phone       | 123-123-1234           |
  When I click on the "Place The order" Button
  Then A notification pops up "This is a required field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     |
  | Glacier Sun Glasses    | 2     |

  Scenario Outline: Fill the ship to form with the wrong zip
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
  Then I fill the ship to form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        | cochabamba      |
    | State       | cochabamba                 |
    | Zip         | 000               |
    | Phone       | 123-123-1234           |
  When I click on the "Place The order" Button
  Then A notification pops up "Please enter a valid zip code in this field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     |
  | Glacier Sun Glasses    | 2     |

  Scenario Outline: Fill the ship to form with the wrong phone number
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
  Then I fill the ship to form with the following data
    | Name        | pepito            |
    | Address     | perez    |
    | City        | cochabamba      |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-123           |
  When I click on the "Place The order" Button
  Then A notification pops up "Please enter a valid phone number in this field."
  Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 1   |
  | External Frame Backpack| 3     |
  | Glacier Sun Glasses    | 2     |