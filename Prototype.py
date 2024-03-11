from prediction_Library import getNBAPred
from main_Library import getNBAStat
import math



# Getting Score Predictions For Every Game Being Played Tonight
"""
awayTeams = ["Chicago", "Dallas", "Brooklyn", "San Antonio", "Boston", "Utah", "Toronto"]
homeTeams = ["LA Clippers", "Detroit", "Charlotte", "Golden State", "Phoenix", "Denver", "Portland"]

count = 0

while count < len(awayTeams):
    
    away_score = getNBAPred(awayTeams[count], "Team", homeTeams[count], "Team_Pred_Points")
    away_score = away_score[0]
    home_score = getNBAPred(homeTeams[count], "Team", awayTeams[count], "Team_Pred_Points")
    home_score = home_score[0]
    
    print(str(awayTeams[count]) + ": " + str(round(away_score)) + " | " + str(homeTeams[count]) + ": " + str(round(home_score)) + "\n")
    
    count += 1
"""
# Getting Score Predictions from test 2 For Every Game Being Played Tonight

awayTeams = ["Milwaukee", "Houston", "New Orleans", "Washington", "Indiana", "Philadelphia", "Memphis","Brooklyn","Minnesota"]
homeTeams = ["LA Clippers", "Sacramento", "Atlanta", "Miami", "Orlando", "New York", "Okla City","Cleveland","LA Lakers"]


away_scores = []
home_scores = []

count = 0

for team in awayTeams:
    
    away_score = getNBAPred(awayTeams[count], "Team", homeTeams[count], "Team_Pred_Points_Test4")
    away_score = away_score[0]
    home_score = getNBAPred(homeTeams[count], "Team", awayTeams[count], "Team_Pred_Points_Test4")
    home_score = home_score[0]
    
    away_scores.append(round(away_score))
    home_scores.append(round(home_score))
    
    count += 1

count = 0    
for team in home_scores:
    
    print(str(awayTeams[count]) + ": " + str(away_scores[count]) + " | " + str(homeTeams[count]) + ": " + str(home_scores[count]) + "\n")

    count += 1

"""
# Predicting a Player's Three Pointers Tonight

player = "Stephen Curry"
VS_Team = "LA Lakers"

stat = getNBAPred(player, "Offense",VS_Team, "Player_Pred_Threes")
stat = stat[0]

print(str(player) + " should make " + str(round(stat)) + " threes tonight")
"""

# Predicting a Player's Points Tonight
"""
player = "Stephen Curry"
VS_Team = "LA Lakers"

stat = getNBAPred(player, "Offense",VS_Team, "Player_Pred_Points")
stat = stat[0]

print(str(player) + " should score " + str(round(stat)) + " points tonight")
"""

# Pulling a Player's Games Played This season
"""
player = "Aaron Gordon"
Category = "Player_Misc"
statToGet = "Player_GamesStarted"

gamesPlayed = getNBAStat(player, Category, statToGet)
gamesPlayed = gamesPlayed[0]

print(str(player) + " has played " + str(gamesPlayed) + " this season")
"""