@BookInventoryFiction
Feature: Inventory Microservice

  @scenario_get_book_ID @Regression @Critical @Contract
  Scenario Outline: get_book_ID_<tc_id>_<product_type>_<ref_id>_<operation>
    Given user requests for book ID using "<ref_id>" "<operation>"
    Then user should get "<operation>" response with proper "<status_code>" "<status_reason>"

    @BuildAndBurn @int3 @sit6
    Examples:
      | tc_id | ref_id | product_type | status_code | status_reason   | operation  | message |
      | 001   | fiction_old   | kids           | 200         | HTTP/1.1 200 OK | Successful | success |
      | 002   | fiction_new   | kids           | 200         | HTTP/1.1 200 OK | Successful | success |
      | 003   | fiction_future   | science        | 200         | HTTP/1.1 200 OK | Successful | success |
      | 004   | fiction_now   | science        | 200         | HTTP/1.1 200 OK | Successful | success |
      | 005   | fiction   | 2060        | 200         | HTTP/1.1 200 OK | Successful | success |
