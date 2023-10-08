Feature: Demo Nopcommerce's topmenu acceptance criteria
  As a user
  I would like to check acceptance criteria of Nopcommerce topmenu
  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And User click on enter button
    Then User is on given URL

    Scenario: Verify that user can navigate to books category
      When User is on given URL
      And Click on books tab on top menu
      Then User is navigated to books category page

    Scenario: Verify that user can see the books category page with filters and list of products
      When User is on given URL
      And Click on books tab on top menu
      And Check Filters and List tab
      Then Books category page is displayed with filters and list tabs

    Scenario: Verify that user can see 'Sortby' filter on books category page
      When User is on books category page
      And Check 'Sortby' filter is present
      Then 'Sortby' filter is available on books category page

    Scenario:  Verify that user can see 'Display' filter on books category page
      When User is on books category page
      And Check 'Display' filter is present
      Then 'Display' filter is available on books category page

    Scenario:  Verify that user can see 'Grid' tab on books category page
      When User is on books category page
      And Check 'Grid' tab is present
      Then 'Grid' tab is available on books category page

    Scenario: Verify that user can see 'List' tab on books category page
      When User is on books category page
      And Check 'List' tab is present
      Then 'List' tab is available on books category page

    Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sortby' filter
      When User is on books category page
      And Click on 'Sortby' Filter
      And Check that 'Name: A to Z' selection is present
      Then 'Name: A to Z' selection is present in 'Sortby' filter

    Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sortby' filter
      When User is on books category page
      And Click on 'Sortby' filter
      And Check that 'Name: A to Z' is first in order
      Then 'Name: A to Z' is first option in order

    Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected(Note: Products are filtered in alphabetical order)
      When User is on books category page
      And Click on 'Sortby' filter
      And Select 'Name: A to Z' filter
      Then All products are displayed in alphabetical order