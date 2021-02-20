Description: Task 2;

GivenStories: story/SignUp.story

Scenario: Sign Up
Given I am on the main application page
When I click on element located `By.xpath(//a[text()='log in'])`
When I click on element located `By.xpath(//input[@id='user'])`
When I enter `someEmail@gmail.com` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
When I click on element located `By.xpath(//input[@id='password'])`
When I enter `somePassword` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//ibutton[@id='login-submit'])`
When I click on element located `By.xpath(//input[@id='moonshotCreateTeam'])`
When I enter 'some Team' in field located `By.xpath(//input[@id='moonshotCreateTeam'])`
When I select `Education` in dropdown located `By.xpath(//div[@data-test-id='moonshot-team-type-select'])`
When I click on element located `By.xpath(//button[@data-test-id='moonshot-continue-button'])`
When I click on element located `By.xpath(//button[@data-test-id='moonshot-start-free-account'])`
When I click on element located `By.xpath(//button[@data-test-id='moonshot-success-button'])`
When I click on element located `By.xpath(//button[@aria-label='Open Member Menu'])`
When I click on element located `By.xpath(//span[text()='Profile and Visibility'])`
Then the text 'full name' exists








 