Feature: As an online shopper of GMO website
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

Scenario Outline: Fill the form with the different name
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | dayan            |
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
    | Name        | dayan           |
    | Address     | perez     |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234          |
Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 2   |
  | External Frame Backpack     | 2   |

Scenario Outline: Fill the form with a different address
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | dayan            |
    | Address     | catolica    |
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
    | Name        | dayan           |
    | Address     | catolica     |
    | City        | cochabamba        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234          |
Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 2   |
  | External Frame Backpack     | 2   |

Scenario Outline: Fill the form with the different city
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | dayan            |
    | Address     | catolica    |
    | City        | lapaz        |
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
    | Name        | dayan           |
    | Address     | catolica     |
    | City        | lapaz        |
    | State       | cochabamba                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234          |
Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 2   |
  | External Frame Backpack     | 2   |

Scenario Outline: Fill the form with the different state
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | dayan            |
    | Address     | catolica    |
    | City        | lapaz        |
    | State       | cercado                 |
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
    | Name        | dayan           |
    | Address     | catolica     |
    | City        | lapaz        |
    | State       | cercado                 |
    | Zip         | 33126               |
    | Phone       | 123-123-1234          |
Examples:
  | product                | value | 
  | 3 Person Dome Tent     | 2   |
  | External Frame Backpack     | 2   |