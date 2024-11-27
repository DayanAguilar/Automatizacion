Feature: GMO Online Site Catalog

Scenario: Verify Online Catalog items
    Given I am at GMO online catalog
    When I click the "About the Enter GMO Online" button
    Then I see the Online Catalog
        | Item Number | Item Name               | Unit Price | Order Quantity |
        | 1000        | 3 Person Dome Tent      | $299.99    | 0              |
        | 1001        | External Frame Backpack | $179.95    | 0              |
        | 1002        | Glacier Sun Glasses     | $67.99     | 0              |
        | 1003        | Padded Socks            | $19.99     | 0              |
        | 1004        | Hiking Boots            | $109.90    | 0              |
        | 1005        | Back Country Shorts     | $24.95     | 0              |