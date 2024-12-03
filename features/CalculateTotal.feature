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
    Then I see the Product Total as "9598.80"
    And I see the correct Sales Tax as "479.94"
    And I see the Grand Total as "10083.74"


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
    Then I see the Product Total as "14995.65"
    And I see the correct Sales Tax as "749.78"
    And I see the Grand Total as "15750.43"


Scenario: Fill the quantity of six different products with high values
	And I write the quantities for the product in the table

    | product                | input |   
    | 3 Person Dome Tent     | 1000000    | 
    | External Frame Backpack| 1000000    |  
    | Glacier Sun Glasses    | 1000000    | 
    | Padded Socks           | 1000000    | 
    | Hiking Boots           | 1000000    |  
    | Back Country Shorts    | 1000000    |

    When I click on the "Place an order" Button
    Then I see the Product Total as "702770000.00"
    And I see the correct Sales Tax as "35138500.00"
    And I see the Grand Total as "737908505.00"

Scenario: Fill the quantity of six different products with high values
	And I write the quantities for the product in the table

    | product                | input |   
    | 3 Person Dome Tent     | 1000000    | 
    | Back Country Shorts    | 1000000    |

    When I click on the "Place an order" Button
    Then I see the Product Total as "324940000.00"
    And I see the correct Sales Tax as "16247000.00"
    And I see the Grand Total as "341187005.00"

Scenario: Fill the quantity of six different products with high values
	And I write the quantities for the product in the table

    | product                | input |   
    | 3 Person Dome Tent     | 1000000    | 
    | Hiking Boots           | 1000000    |  
  
    When I click on the "Place an order" Button
    Then I see the Product Total as "409890000.00"
    And I see the correct Sales Tax as "20494500.00"
    And I see the Grand Total as "430384505.00"