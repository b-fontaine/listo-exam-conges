Feature: Congés
  Relation entre congés et périodes mensuelles

  Scenario Outline: Nouvelle période mensuelle après le retrait des congés
    Given Le salarié a posé un congé du "<debut_conge>" au "<fin_conge>"
    When Je mets à jour la période nommée "<periode_mensuelle>"
    Then La période mensuelle commence le "<debut_mensuel>" et finit le "<fin_mensuel>"

    Examples:
      | debut_conge | fin_conge  | periode_mensuelle | debut_mensuel | fin_mensuel |
      | 2018-01-01  | 2018-01-05 | 2018-01           | 2018-01-06    | 2018-01-31  |
      | 2018-01-01  | 2018-01-31 | 2018-02           | 2018-02-01    | 2018-02-28  |
      | 2018-02-01  | 2018-02-11 | 2018-02           | 2018-02-12    | 2018-02-28  |
      | 2018-01-15  | 2018-02-11 | 2018-01           | 2018-01-01    | 2018-01-14  |
      | 2018-01-15  | 2018-02-11 | 2018-02           | 2018-02-12    | 2018-02-28  |