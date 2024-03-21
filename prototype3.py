from main_Library import *
from prediction_Library import *
from calculation_Library import *


def gameReport(home_team, away_team):

    # Get home team predicted score
    home_team_Score = getNBAPred(home_team, "Team", away_team, "Team_Pred_Points")
    home_team_Score = home_team_Score [0]

    # Get away team predicted score
    away_team_Score = getNBAPred(away_team, "Team", home_team, "Team_Pred_Points")
    away_team_Score =  away_team_Score [0]

    # Get home and away team roster
    home_team_roster = get_NamesFrom_NBARoster(home_team)
    away_team_roster = get_NamesFrom_NBARoster(away_team)

    # Get home and away team injuries
    home_team_injuries = check_NBA_InjuryStatus(home_team)
    away_team_injuries = get_NamesFrom_NBARoster(away_team)

    # Remove injured players from both home and away rosters
    home_team_roster = [player for player in home_team_roster if player not in home_team_injuries]
    away_team_roster = [player for player in away_team_roster if player not in away_team_injuries]

    # Initialize player's points list for both home and away teams
    home_team_PredPoints = []
    away_team_PredPoints = []

    # For each player in the home team's roster
    for player in home_team_roster:

        # Check if the player exists in the database
        playerHasStats = checkNBA_PlayerHasStats(player)

        # If the player exists in the database
        if playerHasStats:

            # Predict player's points and round the result
            player_pred_points = getNBAPred(player, "offense", away_team, "Player_Pred_Points")
            player_pred_points = round(player_pred_points [0])

            # Append the player's points to home_team_PredPoints
            home_team_PredPoints.append (player_pred_points)

        # If Player does not exist in the database pass in the for loop
        else: 

            pass

        # For each player in the away team's roster
    for player in away_team_roster:

        # Check if the player exists in the database
        playerHasStats = checkNBA_PlayerHasStats(player)

        # If the player exists in the database
        if playerHasStats:

            # Predict player's points and round the result
            player_pred_points = getNBAPred(player, "offense", home_team, "Player_Pred_Points")
            player_pred_points = round(player_pred_points [0])

            # Append the player's points to away_team_PredPoints
            away_team_PredPoints.append (player_pred_points)

        # If Player does not exist in the database pass in the for loop
        else: 

            pass

    # Print header for report
    print("/nReport for " + str(home_team) + " vs. " + str(away_team))

    # If home team is predicted to score more points than away team
    if round(home_team_Score) > round(away_team_Score):

        # Print result
        print(str(home_team) + " Is predicted to score (" + str(round(home_team_Score)) + ") points. Besting " + str(away_team)
            + " , who is predicted to score (" + str(round(away_team_Score)) + ") Points." )
        
    # If away team is predicted to score more points than home team
    elif round(home_team_Score) < round(away_team_Score):

        # Print result
        print(str(away_team) + " Is predicted to score (" + str(round(away_team_Score)) + ") points. Besting " + str(home_team)
            + " , who is predicted to score (" + str(round(home_team_Score)) + ") Points." )

    # If both teams are predicted to score the same amount of points
    elif round(home_team_Score) == round(away_team_Score):

        # Print Result
        print(str(away_team) + " Is predicted to score (" + str(round(away_team_Score)) + ") points. " + str(home_team)
            + " , who is predicted to score (" + str(round(home_team_Score)) + ") Points. No predicted winner!" )
        
    # Print header for home team's roster points
    print("/n/n" + str(home_team) + "'s Roster and points/n")

    # For player and points in home_team_roster and home_team_Score
    for player, points in zip(home_team_roster, home_team_Score):

        # Print the player's name and their predicted points
        print(str(player) + ": " + str(points))

    # Print the header for away team's roster points
    print("/n/n" + str(away_team) + "'s Roster and points/n")

    # For player and points in away_team_roster and away_team_Score
    for player, points in zip(away_team_roster, away_team_Score):

        # Print the player's name and their predicted points
        print(str(player) + ": " + str(points))
 


# Call the function here
gameReport("Chicago", "Golden State")