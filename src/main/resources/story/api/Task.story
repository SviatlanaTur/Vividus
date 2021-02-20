Description: Task 1;

Scenario: Sign Up
Given I am on the main application page

When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id='signup-submit'])`
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<name>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on an element with the text 'Sign up'
Examples: 
|email                                             |name                                    |password                                        |
|#{generate(regexify '[a-z]{5}[0-9]{2}')}@gmail.com|#{generate(regexify '[A-Z]{1}[a-z]{5}')}|#{generate(regexify '[a-z]{5}[A-Z]{2}[0-9]{2}')}|
