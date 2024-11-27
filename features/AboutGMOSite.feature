Feature:  
As an online shopper I want to access to the about as apart because 
I want to know how the page was made,
so I have confidence when using the site.
‌
Scenario: Look for the information of the site
    Given I am at GMO online site
    When I click the "About the GMO Site" button
    Then I see the list of technologies used for the site
    
        | HTML 3.2 |
        | HTML Browser Extensions |
        | Animation |
        | JavaScript |
        | CGI |
        | Java |
        | ActiveX |
        | Client-side processes |
        | Server-side processes |