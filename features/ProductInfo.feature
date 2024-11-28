Feature: View product details on the store
  As a customer
  I want to view the details of a product
  So that I can decide whether I want to purchase it

  Scenario: View details of the "3 Person Dome Tent" product
    Given the user is on the product page
    Then the product title should be "3 Person Dome Tent"
    And the subtitle should be "Our best 3 person backpack dome tent"
    And the price should be "$ 299.99"
    And the stock quantity should be "23"
    And the item number should be "1000"
    And the product description should be "Here's a superb three-season mountaineering/backpacking tent at a great price! This dome sleeps 3 and weighs in at only 4.5 lbs. Unique quick-clips provide fast and easy setup. Tough, coated-nylon taffeta floor withstands lots of use. Rain fly and integral vestibule included. Imported"
