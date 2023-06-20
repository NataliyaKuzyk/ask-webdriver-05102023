@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//textarea[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

    #Scenario for http://gibiru.com
  @predefined2
  Scenario: Search Engine for http://gibiru.com
    Given I open url "http://gibiru.com"
    Then I should see page title contains "Gibiru"
    #Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "Tomato" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then element with xpath "//div[@id='web-results']" should contain text "Tomatoes"
    #And I wait for 5 sec

    #Scenario for https://duckduckgo.com
  @predefined3
  Scenario: Search Engine for https://duckduckgo.com
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='searchbox_input']" should be present
    Then I type "Tomato" into element with xpath "//input[@id='searchbox_input']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='react-layout']" to be present
    Then element with xpath "//div[@id='react-layout']" should contain text "Tomato"
    #And I wait for 3 sec

    #Scenario for  https://swisscows.com
  @predefined4
  Scenario: Search Engine for  https://swisscows.com
    Given I open url " https://swisscows.com"
    Then I should see page title contains "Swisscows"
    Then element with xpath "//input[@type='search']" should be present
    Then I type "Tomato" into element with xpath "//input[@type='search']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "tomato"
    #And I wait for 3 sec

    #Scenario for https://www.searchencrypt.com
  @predefined5
  Scenario: Search Engine for https://www.searchencrypt.com
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title contains "Search Encrypt"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Tomato" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    Then element with xpath "//section[@class='serp__results container']" should contain text "tomato"
    #And I wait for 3 sec

    #Scenario for  https://www.startpage.com
  @predefined6
  Scenario: Search Engine for https://www.startpage.com
    Given I open url " https://www.startpage.com"
    Then I should see page title contains "Startpage"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "Tomato" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@id='search-btn']"
    Then I wait for element with xpath "//div[@class='layout']" to be present
    Then element with xpath "//div[@class='layout']" should contain text "tomato"
    #And I wait for 3 sec

    #Scenario for https://www.ecosia.org
  @predefined7
  Scenario: Search Engine for https://www.ecosia.org
    Given I open url "https://www.ecosia.org"
    Then I should see page title contains "Ecosia"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Tomato" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//main[@id='main']" to be present
    Then element with xpath "//main[@id='main']" should contain text "tomato"
    #And I wait for 3 sec

    #Scenario for https://www.wiki.com/
  @predefined8
  Scenario: Search Engine for https://www.wiki.com/
    Given I open url "https://www.wiki.com/"
    Then I should see page title contains "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Tomato" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//input[@name='btnG']"
    And I wait for 2 sec
    Then I should see page title contains "Form is not secure"
    Then element with xpath "//body[@id='body']" should be present
    And I click on element with xpath "//button[@id='proceed-button']"
    And I wait for 2 sec
    Then I should see page title contains "Wiki.com"
    Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then element with xpath "//*[contains(text(), 'tomato')]" should contain text "tomato"
    And I wait for 3 sec
  
  #Scenario for https://www.givewater.com/
  @predefined9
  Scenario: Search Engine for https://www.givewater.com/
    Given I open url "https://www.givewater.com/"
    Then I should see page title contains "giveWater Search Engine"
    Then element with xpath "//div[@class='pum-content popmake-content']" should be present
    Then I click on element with xpath "//button[@aria-label='Close']"
    Then element with xpath "//input[@id='site-search']" should be present
    #And I wait for 5 sec
    Then I type "Tomato" into element with xpath "//input[@id='site-search']"
    And I click on element with xpath "//button[@id='button-addon2']"
    And I wait for 2 sec
    Then I should see page title contains "GiveWater Web Search"
    Then I wait for element with xpath "//div[@class='layout__mainline']" to be present
    Then element with xpath "//div[@class='layout__mainline']" should contain text "tomato"
    #And I wait for 3 sec

  #Scenario for https://ekoru.org/
  @predefined10
  Scenario: Search Engine for https://ekoru.org/
    Given I open url "https://ekoru.org/"
    Then I should see page title contains "Ekoru"
    Then element with xpath "//input[@id='fld_q']" should be present
    Then I type "Cucumber" into element with xpath "//input[@id='fld_q']"
    And I click on element with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@id='div_results']" to be present
    And I wait for 3 sec
    Then element with xpath "//div[@id='serp_organic']/div[1]/div[@class='serp-result-web-text']" should contain text "cucumber"

    #java.lang.AssertionError:





  