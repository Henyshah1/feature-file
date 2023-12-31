Feature: Books category
  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopcommerce.com/" in browser
    And I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"
      Examples:
      |categories       |
      |computer         |
      |Electronic       |
      |Apparel          |
      |Digital downloads|
      |Books            |
      |Jewellery        |
      |Gift card        |

  Scenario Outline: I should be able to see books page with filters
    When I select books category from top menu tabs on homepage
    Then I should be navigated to books category page
    And I should be able to see "<filters>"
      Examples:
      |filters  |
      |Sortby   |
      |Display  |
      |Grid tab |
      |List tab |

  Scenario Outline: I should be able to see list of terms of each filter
    When I click on "<filter>"
    Then I should be able to see "<list>" in dropdown menu
      Examples:
      |filter |list                                                                          |
      |Sortby |Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on|
      |Display|3, 6, 9                                                                       |

  Scenario Outline: I should be able to choose any filter option with specific result
    When I click "<filter>"
    And I click on any "<option>"
    Then I should be able to choose any filter option from the list
    And I should be able to see "<result>"
      Examples:
      |filter |option             |result                                                           |
      |Sortby |Name: A to Z       |sorted product with the product name in alphabetical order A to Z|
      |Sortby |Name: Z to A       |sorted product with the product name in alphabetical order Z to A|
      |Sortby |Price: Low to High |sorted product with the price in descending order                |
      |Sortby |Price: High to Low |sorted product with the price in ascending order                 |
      |Sortby |Created on         |Recently added product should be show first                      |
      |Display|3                  |3 product in a page                                              |
      |Display|6                  |6 product in a page                                              |
      |Display|9                  |9 product in a page                                              |

  Scenario Outline: I should be able to see product display format according display format type as per given picture in SRS document
    When I click on "<display format icon>"
    Then I should be able to see product display format according display format type as per given picture in SRS document
      Examples:
      |display format icon|
      |Gird               |
      |List               |