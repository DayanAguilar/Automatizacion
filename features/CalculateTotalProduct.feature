Feature: As an online shopper of GMO website
  I want the system to calculate totals, taxes and shipping costs
  so I can see the final ammout I need to pay

Background:
    Given I am at GMO online site
    When I click the "About the Enter GMO Online" button

Scenario Outline: Fill the quantity of just one product
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  Then I see the total price for each product
  Examples:
    | product                | value |   
    | 3 Person Dome Tent     | 1     | 
    | External Frame Backpack| 1     |  
    | Glacier Sun Glasses    | 1     | 
    | Padded Socks           | 1     | 
    | Hiking Boots           | 1     |  
    | Back Country Shorts    | 1     |

Scenario Outline: Fill the quantity of just one product with different values
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  Then I see the total price for each product
  Examples:
    | product                | value |   
    | 3 Person Dome Tent     | 2     | 
    | External Frame Backpack| 3     |  
    | Glacier Sun Glasses    | 4     | 
    | Padded Socks           | 1000000000     | 
    | Hiking Boots           | 30    |  
    | Back Country Shorts    | 20    |


Scenario Outline: Fill the quantity of just with different characters
  And I write "<value>" in the value box "<product>"
  When I click on the "Place an order" Button
  Then A notification pops up "Please enter only digits in this field."
  Examples:
    | product                | value |   
    | 3 Person Dome Tent     | p     | 
    | External Frame Backpack| different     |  
    | Glacier Sun Glasses    | a     | 
    | Padded Socks           | w     | 
    | Hiking Boots           | 30q    |  
    | Back Country Shorts    | 20 qe   |
