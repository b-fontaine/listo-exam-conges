Feature: Conges


  Scenario: I see Inputs
    Given the app is running
    Then I see {'Période mensuelle'} text
    Then I see {'Début des congés'} text
    Then I see {'Fin des congés'} text

  Scenario: I put my vacations
    Given the app is running
    When I tap {'Période mensuelle'} text
    And I tap {'JUL'} text
    And I tap {'OK'} text
    And I tap {'Début des congés'} text
    And I tap {'8'} text
    And I tap {'OK'} text
    And I tap {'Fin des congés'} text
    And I tap {'20'} text
    And I tap {'OK'} text
    And I tap {'Calculate Working Days'} text
    Then I see <working_date> text for current year
      | working_date |
      | 'YYYY-07-01' |
      | 'YYYY-07-02' |
      | 'YYYY-07-03' |
      | 'YYYY-07-04' |
      | 'YYYY-07-05' |
      | 'YYYY-07-06' |
      | 'YYYY-07-07' |
      | 'YYYY-07-21' |
      | 'YYYY-07-22' |
      | 'YYYY-07-23' |
      | 'YYYY-07-24' |
      | 'YYYY-07-25' |
      | 'YYYY-07-26' |
      | 'YYYY-07-27' |
      | 'YYYY-07-28' |
      | 'YYYY-07-29' |
      | 'YYYY-07-30' |
      | 'YYYY-07-31' |
    And Then I don't see <working_date> text for current year
      | working_date |
      | 'YYYY-07-09' |
      | 'YYYY-07-10' |
      | 'YYYY-07-11' |
      | 'YYYY-07-12' |
      | 'YYYY-07-13' |
      | 'YYYY-07-14' |
      | 'YYYY-07-15' |
      | 'YYYY-07-16' |
      | 'YYYY-07-17' |
      | 'YYYY-07-18' |
      | 'YYYY-07-19' |
    And Then I see <working_date> text for current year only one time
      | working_date |
      | 'YYYY-07-08' |
      | 'YYYY-07-20' |