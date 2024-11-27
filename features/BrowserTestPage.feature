Feature: Compare browser differences on GMO site

  Scenario: View list of differences between browsers
    Given I am at GMO Browser Page
    When I click the "Browser Test Page" button
    Then I see the list of differences
      | Internet Explorer 3.0      |
      | Netscape Navigator 3.0     |
      | Blinking Text              |
      | dot bullets                |
      | circle bullets             |
      | square bullets             |
      | Colored Horizontal Rules   |
      | Definition Text Style      |
      | (should be an italic font) |
      | Trademarks are important™  |
      | Table Properties           |
