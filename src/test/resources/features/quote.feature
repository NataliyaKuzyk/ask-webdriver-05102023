#Test Quote application
#https://skryabin.com/market/quote.html
#Author Nataliya K
  
  Feature: Quote Test Scenarios
    Background:
      Given  I open url "https://skryabin.com/market/quote.html"
      Then I resize window to 1920 and 1080

     @quote1
     Scenario: Validate Location address
      #Given  I open url "https://skryabin.com/market/quote.html"
      #Then I resize window to 1920 and 1080
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      #Ipad portrait view
      Then I resize window to 820 and 1180
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      #Phone portrait mode
      Then I resize window to 390 and 844
      Then element with xpath "//b[@id='location']" should not be displayed
      Then I wait for 5 sec

     @quote2
     Scenario: Name field verification
      Then I click on element with xpath "//input[@id='name']"
      Then element with xpath "//input[@id='firstName']" should be displayed
      And I type "first" into element with xpath "//input[@id='firstName']"
      Then element with xpath "//input[@id='middleName']" should be displayed
      And I type "middle" into element with xpath "//input[@id='middleName']"
      Then element with xpath "//input[@id='lastName']" should be displayed
      And I type "last" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should be present
      Then element with xpath "//input[@id='name']" should have attribute "value" as "first middle last"
      And I wait for 5 sec

    @quote3
    Scenario Outline: Name field verification
      Then I click on element with xpath "//input[@id='name']"
      Then element with xpath "//input[@id='firstName']" should be displayed
      And I type "<firstName>" into element with xpath "//input[@id='firstName']"
      Then element with xpath "//input[@id='middleName']" should be displayed
      And I type "<middleName>" into element with xpath "//input[@id='middleName']"
      Then element with xpath "//input[@id='lastName']" should be displayed
      And I type "<lastName>" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should be present
      Then element with xpath "//input[@id='name']" should have attribute "value" as "<full name>"
      And I wait for 2 sec
      Examples:
        | firstName | middleName | lastName | full name |
        | first | middle | last | first middle last |
        | a | b | c | a b c |
        | A | B | C | A B C |
        | A1 | B2 | C3 | A1 B2 C3 |
        | 1 | 2 | 3 | 1 2 3 |
        | A! | B@ | C# | A! B@ C# |
        | a |  | c | a  c |
        | a |  | c | a b |
        |  A |  B |  C |  A  B  C |

      Scenario: Open URL based on your own request and your own method
        Then NataliyaK navigate to "quote app"




