Description: Sign UP;
Scenario: Sign Up
Given I am on the main application page
When I click on element located `By.xpath(//section[@id='hero']//input[@name='email'])`
When I enter `<some_email>` in field located `By.xpath(//section[@id='hero']//input[@name='email'])`
When I click on element located `By.xpath(//button[text()='Sign up—it’s free!'])`
When I wait until element located `By.xpath(//h5[text()='Sign up for your account'])` appears
When I click on element located `By.xpath(//input[@id='displayName'])`
When I enter `<full_name>` in field located `By.xpath(//input[@id='displayName'])`
When I click on element located `By.xpath(//input[@id='password'])`
When I enter `<password>` in field located `//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='signup-submit'])`

Examples: 
|some_email         |full_name |password    |
|someEmail@gmail.com|full name     |somePassword|





 