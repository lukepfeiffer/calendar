	Scenario: User signs up
		Given I am on the home page
		And I fill out the follow:
			| email                 | email@example |
			| password              | password      |
			| password_confirmation | password      |
		Then the user should be signed up
