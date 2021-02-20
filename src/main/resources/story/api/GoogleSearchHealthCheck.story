Description: Google search health check

Scenario: Sigh Up
Given I am on the main application page
When I enter `<email_to_Sign>` in field located `locator`

When I issue a HTTP HEAD request for a resource with the URL 'https://google.com/'
Then `${responseCode}` is equal to `200`
