Feature: As a online shopper
  I want to clear all the field of the table of products
  So I can decide which product should I buy

Background:
    Given I am at GMO online site
    When I click the "About the Enter GMO Online" button

@maximize
Scenario Outline: Clean the form when I entered data
  And I write the quantities for the product in the table
  
    | product                | value |   
    | 3 Person Dome Tent     | 20    | 
    | External Frame Backpack| 21     |  
    | Glacier Sun Glasses    | 22     | 
    | Padded Socks           | 23    | 
    | Hiking Boots           | 24    |  
    | Back Country Shorts    | 25    |
  When I click the Reset button
  Then The form looks like the initial table 
    | product                | value |
    | 3 Person Dome Tent     | 0 |
    | External Frame Backpack| 0 |
    | Glacier Sun Glasses    | 0 |
    | Padded Socks           | 0 |
    | Hiking Boots           | 0 |
    | Back Country Shorts    | 0 |