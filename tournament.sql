-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE players(
	player_id SERIAL PRIMARY KEY,
	name varchar(50) NOT NULL,
	wins integer DEFAULT 0,
	lost integer DEFAULT 0
	);

CREATE TABLE matches(
	match_id SERIAL PRIMARY KEY,
	winner integer REFERENCES players (player_id),
	loser integer REFERENCES players (player_id)
	);

CREATE OR REPLACE VIEW standings AS
	SELECT p.player_id , p.name, p.wins as wins, count(m.match_id)
	from players as p left join matches as m
	on p.player_id = m.winner or p.player_id = m.loser
	group by p.player_id;
