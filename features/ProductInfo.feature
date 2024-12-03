Feature: View product details on the store
  As a customer
  I want to view the details of a product
  So that I can decide whether I want to purchase it
Background:
    Given I am at GMO online site
    When I click the "About the Enter GMO Online" button
Scenario Outline: Look for a product and item number in the borland store        
    And I click on the product "<product>"
    Then I should see the item id "<item>"
    Examples: 
      | product                | item |
      | 3 Person Dome Tent     | 1000 |
      | External Frame Backpack| 1001 |
      | Glacier Sun Glasses    | 1002 |
      | Padded Socks           | 1003 |
      | Hiking Boots           | 1004 |
      | Back Country Shorts    | 1005 |