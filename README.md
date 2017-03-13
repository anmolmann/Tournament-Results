# TOURNAMENT RESULTS

This project uses the PostgreSQL database to keep track of players and matches in a game tournament.
There is a database schema to store the game matches between players and also a Python module to rank the players and pair them up in matches in a tournament.

![blog demo](https://github.com/anmolmann/tournament-results/blob/master/images/tournament.png)

##### This document is intended to guide you through implementing the entire project.

## Table of contents

- [Quick Start](#quick-Start)
- [Documentation](#documentation)
- [Setup](#setup)
- [Usage](#usage)

## Quick Start

Let's get Started

- The game tournament uses the Swiss system for pairing up players in each round.
	- Players are not eliminated
	- Each player should be paired with another player with the same number of wins, or as close as possible.

- This project has two parts.
	- defining the database schema (SQL table definitions), and
	- writing the code that will use it.

## Documentation

- Code Templates
	- three files are there: tournament.sql, tournament.py, and tournament_test.py.
	- The template file tournament.sql is the database schema exists, in the form of SQL create table commands.
	- The template file tournament.py is where the whole code of the module is.
	- Finally, the file tournament_test.py contains unit tests that will test the functions written in tournament.py. 

- Functions in tournament.py
	- registerPlayer(name)
		- Adds a player to the tournament by putting an entry in the database. 
	- countPlayers()
		- Returns the number of currently registered players.
	- deletePlayers()
		- Clear out all the player records from the database.
	- reportMatch(winner, loser)
		- Stores the outcome of a single match between two players in the database.
	- deleteMatches()
		- Clear out all the match records from the database.
	- playerStandings()
		- Returns a list of (id, name, wins, matches) for each player, sorted by the number of wins each player has.
	- swissPairings()
		- Given the existing set of registered players and the matches they have played, generates and returns a list of pairings according to the Swiss system. Each pairing is a tuple (id1, name1, id2, name2), giving the ID and name of the paired players.

## Setup

- Install Python.

- Install all the required softwares:
	- apt-get -qqy update
	- apt-get -qqy install postgresql python-psycopg2
	- apt-get -qqy install python-flask python-sqlalchemy
	- apt-get -qqy install python-pip
	- pip install bleach
	- pip install oauth2client
	- pip install requests
	- pip install httplib2
	- pip install redis
	- pip install passlib
	- pip install itsdangerous
	- pip install flask-httpauth

- connecting to psql:
	- Creating your Database
		- Then you can connect psql to your new database and create your tables from the statements you've written in tournament.sql. You can do this in either of two ways:
			- Paste each statement in to psql.
			- Use the command *\i tournament.sql* to import the whole file into psql at once.

	- *sudo -i -u postgres*
	- *createdb tournament*
	- *psql tournament -f /tournament/tournament.sql*

## Usage

- You can run the tests from the command line, using the command:
	- *python tournament_test.py.*







