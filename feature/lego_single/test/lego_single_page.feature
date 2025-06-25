Feature: Display Lego Item

  Scenario: Showing a title
    Given I have a widget LegoSinglePage with title "Bionicle"
    Then I see {'Lego Item'} text
    And I see {'Bionicle'} text
