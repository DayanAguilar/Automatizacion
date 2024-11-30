Feature: As an online shopper 
  I want the system to calculate the total of products cost
  so I can see the final ammout

Background:
    Given I am at GMO online site
    When I click the "About the Enter GMO Online" button

Scenario: Fill the quantity of two different products
	And I write the quantities for the product in the table

    | product                | input |   
    | 3 Person Dome Tent     | 20     | 
    | External Frame Backpack| 20    |  

    When I click on the "Place an order" Button
    Then I see the Product Total
    And I see the correct Sales Tax
    And I see the Grand Total


Scenario: Fill the quantity of six different products
	And I write the quantities for the product in the table

    | product                | input |   
    | 3 Person Dome Tent     | 20    | 
    | External Frame Backpack| 21     |  
    | Glacier Sun Glasses    | 22     | 
    | Padded Socks           | 23    | 
    | Hiking Boots           | 24    |  
    | Back Country Shorts    | 25    |

    When I click on the "Place an order" Button
    Then I see the Product Total
    And I see the correct Sales Tax
    And I see the Grand Total