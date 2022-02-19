Feature: Validating Plce API's

@AddPlace @Regression
Scenario Outline: Verify if Place is being successfully added using AddPlaceAPI
    Given Add Place Payload with "<name>" "<language>" "<address>"
    When user calls "AddPlaceAPI" with "POST" http request
    Then the API call is success with status code 200
    And "status" in response body is "OK"
    And "scope" in response body is "APP"
    And verify place_id created maps to "<name>" using "getPlaceAPI"
    
    
Examples:
    | name   | language  | address            |
    |AAhouse | English   | World Cross Center |
 #  |BBhouse | Spanish   | Sea Cross Center   |
 #  |CChouse | French-IN | Victoria Hills Road|
 
 @DeletePlace @Regression
 Scenario: Verify if Delete Place functionality is working
 
    Given DeletePlace Payload
    When user calls "deletePlaceAPI" with "POST" http request
    Then the API call got success with status code 200
    And "status" in response body is "OK" 
    