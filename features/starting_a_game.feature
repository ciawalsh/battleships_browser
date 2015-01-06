Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"
		When I enter my name "Charlie"
		Then I press "submit"
		Then I should see "Thank you Charlie, you are now registered!"
		

	Scenario: Missed Name
		Given I am on the hello page
		When I don't fill in the form
		Then the error message "Please fill in your name"