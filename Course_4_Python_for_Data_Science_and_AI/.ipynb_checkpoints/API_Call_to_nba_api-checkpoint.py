print("We are in the API.....!")

import pandas as pd

import matplotlib.pyplot as plt

from nba_api.stats.endpoints import leaguegamefinder

id_warriors=1610612744

gamefinder = leaguegamefinder.LeagueGameFinder(team_id_nullable=id_warriors)

gamefinder.get_json()

games = gamefinder.get_data_frames()[0]

print(games.head())

print(type(gamefinder.get_data_frames()))

games_home=games [games ['MATCHUP']=='GSW vs. TOR']

games_away=games [games ['MATCHUP']=='GSW @ TOR']

print(games_home.mean()['PLUS_MINUS'])

print(games_away.mean()['PLUS_MINUS'])

fig, ax = plt.subplots()

games_away.plot(x='GAME_DATE',y='PLUS_MINUS', ax=ax)

games_home.plot(x='GAME_DATE',y='PLUS_MINUS', ax=ax)

ax.legend(["away", "home"])

plt.show()
