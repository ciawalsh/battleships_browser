Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering the first player
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's Player 1's name?"
		When I enter my name "Charlie"
		Then I press "submit"
		Then I should see "Thank you Charlie, you are now registered!"

	Scenario: Registering the second player
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's Player 2's name?"
		When I enter my namep2 "Bibiana"
		Then I press "submitp2"
		Then I should see "What's Player 1's name? Thank you Bibiana, you are now registered!"

	Scenario: Missed Name
		Given I am on the hello page
		When I don't fill my name
		Then I press "submit"
		Then I should see "What's Player 1's name? What's Player 2's name?"