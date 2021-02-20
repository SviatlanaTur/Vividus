Scenario: create a new account
Given I am on the main application page
When I click on an element by the xpath '//button[@aria-label='Your Account']
When I click on an element by the xpath '//a[@title='Account']'
When I wait until an element with the text 'Create your Walmart account' appears  
When I fill <firstName>, <lastName>, <email> and < passwordCreated > in the registration form
When I click on element by xpath '//button[@type='submit'][text()='Create account']' 
Then the page with the URL containing 'https://www.walmart.com/account' is loaded

Examples:
|firstName                  |lastName                  |email                             |passwordCreated                                 |
|#{generate(Name.firstName)}|#{generate(Name.lastName)}|#{generate(Internet.emailAddress)}|#{generate(regexify '[a-z]{3}[A-Z]{2}[1-9]{2}')}|

Composite: When I fill $firstName, $lastName, $email and $passwordCreated in the registration form
When I enter '<firstName>' in a field by the xpath '//input[@id='first-name-su']'
When I enter '<lastName>' in a field by the xpath '//input[@id='last-name-su']'
When I enter '<email>' in a field by the xpath '//input[@id='email-su']'
When I enter '<passwordCreated>' in a field by the xpath '//input[@id='password-su']'

Scenario: perform search for product by search box 
When I click on an element by the xpath '//a[@rel='walmart']'
When I performed searching the <product> by search box
Then at least one element with the attribute 'data-type'='itemTitles' exists
And the page title contains the text '<product>'

Examples:
|product |
|Samsung Galaxy S10 |

Composite: When I performed searching the $product by search box
When I enter '<product>’ in a field by the xpath ' //input[@id='global-search-input']’
And I click on an element by the xpath ‘//button[@id='global-search-submit']’

Scenario: open product page
When I click on an element by the xpath '//div[@class='search-product-result']//img[@alt='Straight Talk Samsung Galaxy S10e, 128GB, Prism Black - Prepaid Smartphone']'
Then the page title contains the text 'Straight Talk Samsung Galaxy S10e, 128GB, Prism Black - Prepaid Smartphone' 
And an element with the tag 'h1' and attribute 'content'='Straight Talk Samsung Galaxy S10e, 128GB, Prism Black - Prepaid Smartphone' exists

Scenario: add product to cart 
When I click on a button with the name 'Add to cart'
Then a link with the text '1 item in cart' exists

Scenario: navigate to cart
When I click on a button with the name 'View cart'
Then the page with the URL 'https://www.walmart.com/cart?source=pac' is loaded
And an element with the attribute 'aria-label' containing 'Your cart: 1 item' exists
And a link with the text 'Straight Talk Samsung Galaxy S10e, 128GB, Prism Black - Prepaid Smartphone' exists




