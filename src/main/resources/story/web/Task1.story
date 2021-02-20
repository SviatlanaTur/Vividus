Description: Task 1;
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

Scenario: Trello Board creation - to fill the form
Given request body: {
	displayName: "Some Name"
	teamType = "Small Business"
}
When I issue a HTTP POST request for a resource with the URL 'https://trello.com/create-first-team'
Then the response code is equal '200'

Examples: 
|some_email                        |full_name                 | password                     |
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(Internet.password)}|
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(Internet.password)}|




 