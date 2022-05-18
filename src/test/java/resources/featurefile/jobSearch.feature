@regression
Feature: Search functionality of CV library

  Scenario Outline: Search the job on CV library homepage
    Given I am on homepage
    When I enter job title "<jobtitle>"
    And I enter location "<location>"
    And I select distance "<distance>"
    And I click on more search option
    And I enter minimum salary "<minsal>"
    And I enter maximum salary "<maxsal>"
    And I select salary type "<salarytype>"
    And I select job type "<jobtype>"
    And I click on find job button
    Then I should be able to see message "<jobtitle>"
    Examples:
      | jobtitle    | location   | distance | minsal | maxsal | salarytype | jobtype        |
      | Tester      | Harrow     | 5        | 30000  | 500000 | annum      | Permanent      |
      | Manager     | London     | 7        | 3500   | 5000   | month      | Contract       |
      | Qa Tester   | Leister    | 15       | 1000   | 2000   | week       | Temporary      |
      | Cook        | Reading    | 35       | 30000  | 500000 | annum      | Apprenticeship |
      | Loader      | Brent      | 10       | 50     | 100    | day        | Temporary      |
      | Electrician | newport    | 750      | 10     | 15     | hour       | Part Time      |
      | Plumber     | Manchester | 10       | 25000  | 30000  | annum      | Permanent      |
