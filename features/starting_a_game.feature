Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering the first player
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"
		When I enter my name "Charlie"
		Then I press "submit"
		Then I should see "Thank you Charlie, you are now registered!"

	#Scenario: Registering the second player
		#Given I am on the homepage
		#When I follow "New Game"
		#Then I should see "What's Player 2's name?"
		#When I enter my namep2 "Bibiana"
		#Then I press "submitp2"
		#Then I should see "What's Player 1's name? #Thank you Bibiana, you are now registered!"

	Scenario: Missed Name
		Given I am on the hello page
		When I don't fill my name
		Then I press "submit"
		Then I should see "What's Player 1's name? What's Player 2's name?"

	#Scenario: Placing the ships
		#Given I am on the hello page
		#And I fill in "name" and "namep2"
		#And I press "submit" and "submitp2"
		#When I follow "Start Game"
		#Then I should see "Where do you want to place your first ship?"
		#When I enter my coordinate "A1"
		#Then I press "place"
		#Then I should see "Ship has been placed"

	Scenario: Starting a single player game
		Given I am on the single player page
		And I enter my name "Charlie"
		And I press "submit"
		When I follow "Start Game"
		Then I should see "BATTLESHIPS BOARD"

	Scenario: Single player shooting and missing
    Given I am on the single game page
    And I press "FIRE2"
    Then I should see 'Missed!'

  Scenario: Single Player shooting and hitting
  	Given I am on the single game page
    And I press "FIRE4"
    Then I should see 'Hit!'

