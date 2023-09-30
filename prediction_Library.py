import mysql.connector
from mysql.connector import Error
from main_Library import *
from calculation_Library import *


def getMLBPred(*args):
    
    connection = create_connection("mlb_stats")
    
    playerName = ""
    teamName = ""
    
    # Pitcher or Batter
    category = args[1]
    
    userChoices = []
    statsToReturn = []
    
    teamNames = ["Arizona Diamondbacks", "Atlanta Braves", "Baltimore Orioles", "Boston Red Sox", "Chicago Cubs", "Chicago White Sox", "Cincinnati Reds", "Cleveland Guardians", "Colorado Rockies",
                 "Colorado Rockies","Detroit Tigers", "Houston Astros", "Kansas City Royals", "Los Angeles Angels", "Los Angeles Dodgers", "Miami Marlins", "Milwaukee Brewers", "Minnesota Twins",
                 "New York Mets", "New York Yankees", "Oakland Athletics", "Philadelphia Phillies", "Pittsburgh Pirates", "San Diego Padres", "Seattle Mariners", "San Francisco Giants",
                 "St. Louis Cardinals", "Tampa Bay Rays", "Texas Rangers", "Toronto Blue Jays", "Washington Nationals"]
    
    game_Time_Types = ["Day", "Night"]
    game_Time = ""
    
    if args[0] in teamNames:
        
        teamName = args[0]
        
        
    else:
        
        playerName = args[0]
        
    if args[2] in teamNames:
        
        teamName = args[2]
        if args[3] in game_Time_Types:
            
            game_Time = args[3]
            
            for choice in args[4:]:
                userChoices.append(choice)
        
        else:
            
            for choice in args[3:]:
                userChoices.append(choice)
    else:       
        for choice in args[2:]:
        
            userChoices.append(choice)
        
     
     
     
     
        
    # Pitcher Home Predictions
    PITCHER_PREDHOME_STRIKEOUTS = "Pitcher_PredHome_Strikeouts"
    PITCHER_PREDHOME_HITS = "Pitcher_PredHome_Hits"
    PITCHER_PREDHOME_RUNS ="Pitcher_PredHome_Runs"
    
    
    
    # Pitcher Away Predictions
    PITCHER_PREDAWAY_STRIKEOUTS = "Pitcher_PredAway_Strikeouts"
    PITCHER_PREDAWAY_HITS = "Pitcher_PredAway_Hits"
    PITCHER_PREDAWAY_RUNS = "Pitcher_PredAway_Runs"   
    
      
      
      
      
        
        
        
        
    if category == "Pitcher":
        
        pitcherStat_Count = 0
        
        for stat in userChoices:
            
            if userChoices[pitcherStat_Count] == PITCHER_PREDHOME_STRIKEOUTS:
                
                # Opp Team
                oppTeam_PerGameAway_Strikeouts = getMLBCalc(teamName, "Team", "Team_PerGameAway_Average_Strikeouts")
                oppTeam_PerGameAway_Strikeouts = float(oppTeam_PerGameAway_Strikeouts[0])
                
                #League averages
                league_PerGameAway_Average_Strikeouts = getMLBCalc("League", "League", "League_PerGameNight_Average_Strikeouts")
                league_PerGameAway_Average_Strikeouts = float(league_PerGameAway_Average_Strikeouts[0])
                
                #Pitcher Home Strikeouts
                pitcher_Home_Strikeouts = getMLBStat(playerName, "Pitcher", "Pitcher_Home_Strikeouts")
                pitcher_Home_Strikeouts = int(pitcher_Home_Strikeouts[0])
                
                #Pitcher Home Innings Pitched
                pitcher_Home_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Home_InningsPitched")
                pitcher_Home_InningsPitched = float(pitcher_Home_InningsPitched[0])
                
                #Pitcher Home Games Played
                pitcher_Home_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Home_Games")
                pitcher_Home_GamesPlayed = int(pitcher_Home_GamesPlayed[0])
                
                
                
                if game_Time == "Day":
                    
                    # Opp Team
                    oppTeam_PerGameDay_Strikeouts = getMLBCalc(teamName, "Team", "Team_PerGameDay_Average_Strikeouts")
                    oppTeam_PerGameDay_Strikeouts = float(oppTeam_PerGameDay_Strikeouts[0])
                    
                    #League averages
                    league_PerGameDay_Average_Strikeouts = getMLBCalc("League", "League", "League_PerGameDay_Average_Strikeouts")
                    league_PerGameDay_Average_Strikeouts = float(league_PerGameDay_Average_Strikeouts[0])
                    
                    #Pitcher Home Strikeouts
                    pitcher_Day_Strikeouts = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Strikeouts")
                    pitcher_Day_Strikeouts = int(pitcher_Day_Strikeouts[0])
                    
                    #Pitcher Home Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Day_InningsPitched")
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                    
                    #Pitcher Home Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Games")
                    pitcher_Day_GamesPlayed = int(pitcher_Day_GamesPlayed[0])
                    
                    
                    #Calculate opp team average strikeouts between away and day
                    oppTeam_PerGame_Strikeouts = (oppTeam_PerGameAway_Strikeouts + oppTeam_PerGameDay_Strikeouts)/2
                    
                    #Calculate league average strikeouts between away and day
                    league_PerGame_Strikeouts = (league_PerGameAway_Average_Strikeouts + league_PerGameDay_Average_Strikeouts)/2
                    
                    
                    
                    #Calculate pitcher average strikeouts between home and day
                    pitcher_Strikeouts = (pitcher_Home_Strikeouts + pitcher_Day_Strikeouts)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Home_InningsPitched + pitcher_Day_InningsPitched)/2
                    
                    #Calculate pitcher average games between home and day
                    pitcher_GamesPlayed = (pitcher_Home_GamesPlayed + pitcher_Day_GamesPlayed)/2
                    
                    #Calculate opp team strikeout offset
                    teamStrikeoutDiff = league_PerGame_Strikeouts - oppTeam_PerGame_Strikeouts
                    
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                    
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_StrikeoutsPerInning = pitcher_Strikeouts/pitcher_InningsPitched
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Strikeouts = pitcher_AVG_StrikeoutsPerInning* pitcher_AVG_InningsPitched
                    
                    
                    
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredStrikeouts = pitcher_AVG_Strikeouts - teamStrikeoutDiff
                    
                    statsToReturn.append(round(pitcher_PredStrikeouts,1))
                  
                elif game_Time == "Night":
                    
                    # Opp Team
                    oppTeam_PerGameNight_Strikeouts = getMLBCalc(teamName, "Team", "Team_PerGameNight_Average_Strikeouts")
                    oppTeam_PerGameNight_Strikeouts = float(oppTeam_PerGameNight_Strikeouts[0])
                    
                    #League averages
                    league_PerGameNight_Average_Strikeouts = getMLBCalc("League", "League", "League_PerGameNight_Average_Strikeouts")
                    league_PerGameNight_Average_Strikeouts = float(league_PerGameNight_Average_Strikeouts[0])
                    
                    #Pitcher Home Strikeouts
                    pitcher_Night_Strikeouts = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Strikeouts")
                    pitcher_Night_Strikeouts = int(pitcher_Night_Strikeouts[0])
                    
                    #Pitcher Home Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Night_InningsPitched")
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                    
                    #Pitcher Home Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Games")
                    pitcher_Night_GamesPlayed = int(pitcher_Night_GamesPlayed[0])
                    
                    
                    #Calculate opp team average strikeouts between away and day
                    oppTeam_PerGame_Strikeouts = (oppTeam_PerGameAway_Strikeouts + oppTeam_PerGameNight_Strikeouts)/2
                    
                    #Calculate league average strikeouts between away and day
                    league_PerGame_Strikeouts = (league_PerGameAway_Average_Strikeouts + league_PerGameNight_Average_Strikeouts)/2
                    
                    
                    
                    #Calculate pitcher average strikeouts between home and day
                    pitcher_Strikeouts = (pitcher_Home_Strikeouts + pitcher_Night_Strikeouts)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Home_InningsPitched + pitcher_Night_InningsPitched)/2
                    
                    #Calculate pitcher average games between home and day
                    pitcher_GamesPlayed = (pitcher_Home_GamesPlayed + pitcher_Night_GamesPlayed)/2
                    
                    #Calculate opp team strikeout offset
                    teamStrikeoutDiff = league_PerGame_Strikeouts - oppTeam_PerGame_Strikeouts
                    
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                    
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_StrikeoutsPerInning = pitcher_Strikeouts/pitcher_InningsPitched
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Strikeouts = pitcher_AVG_StrikeoutsPerInning* pitcher_AVG_InningsPitched
                    
                    
                    
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredStrikeouts = pitcher_AVG_Strikeouts - teamStrikeoutDiff
                    
                    statsToReturn.append(round(pitcher_PredStrikeouts,1))
                                 
            if userChoices[pitcherStat_Count] == PITCHER_PREDAWAY_STRIKEOUTS:
                
                # Opp Team
                oppTeam_PerGameHome_Strikeouts = getMLBCalc(teamName, "Team", "Team_PerGameHome_Average_Strikeouts")
                oppTeam_PerGameHome_Strikeouts = float(oppTeam_PerGameHome_Strikeouts[0])
                
                #League averages
                league_PerGameHome_Average_Strikeouts = getMLBCalc("League", "League", "League_PerGameHome_Average_Strikeouts")
                league_PerGameHome_Average_Strikeouts = float(league_PerGameHome_Average_Strikeouts[0])
                
                #Pitcher Home Strikeouts
                pitcher_Away_Strikeouts = getMLBStat(playerName, "Pitcher", "Pitcher_Away_Strikeouts")
                pitcher_Away_Strikeouts = int(pitcher_Away_Strikeouts[0])
                    
                #Pitcher Home Innings Pitched
                pitcher_Away_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Away_InningsPitched")
                pitcher_Away_InningsPitched = float(pitcher_Away_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Away_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Away_Games")
                pitcher_Away_GamesPlayed = int(pitcher_Away_GamesPlayed[0])
                    
                    
                    
                if game_Time == "Day":
                        
                    # Opp Team
                    oppTeam_PerGameDay_Strikeouts = getMLBCalc(teamName, "Team", "Team_PerGameDay_Average_Strikeouts")
                    oppTeam_PerGameDay_Strikeouts = float(oppTeam_PerGameDay_Strikeouts[0])
                        
                    #League averages
                    league_PerGameDay_Average_Strikeouts = getMLBCalc("League", "League", "League_PerGameDay_Average_Strikeouts")
                    league_PerGameDay_Average_Strikeouts = float(league_PerGameDay_Average_Strikeouts[0])
                        
                    #Pitcher Home Strikeouts
                    pitcher_Day_Strikeouts = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Strikeouts")
                    pitcher_Day_Strikeouts = int(pitcher_Day_Strikeouts[0])
                        
                    #Pitcher Home Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Day_InningsPitched")
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Home Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Games")
                    pitcher_Day_GamesPlayed = int(pitcher_Day_GamesPlayed[0])
                        
                        
                    #Calculate opp team average strikeouts between away and day
                    oppTeam_PerGame_Strikeouts = (oppTeam_PerGameHome_Strikeouts + oppTeam_PerGameDay_Strikeouts)/2
                        
                    #Calculate league average strikeouts between away and day
                    league_PerGame_Strikeouts = (league_PerGameHome_Average_Strikeouts + league_PerGameDay_Average_Strikeouts)/2
                        
                        
                        
                    #Calculate pitcher average strikeouts between home and day
                    pitcher_Strikeouts = (pitcher_Away_Strikeouts + pitcher_Day_Strikeouts)/2
                        
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Away_InningsPitched + pitcher_Day_InningsPitched)/2
                        
                    #Calculate pitcher average games between home and day
                    pitcher_GamesPlayed = (pitcher_Away_GamesPlayed + pitcher_Day_GamesPlayed)/2
                        
                    #Calculate opp team strikeout offset
                    teamStrikeoutDiff = league_PerGame_Strikeouts - oppTeam_PerGame_Strikeouts
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_StrikeoutsPerInning = pitcher_Strikeouts/pitcher_InningsPitched
                        
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Strikeouts = pitcher_AVG_StrikeoutsPerInning* pitcher_AVG_InningsPitched
                        
                    
                        
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredStrikeouts = pitcher_AVG_Strikeouts - teamStrikeoutDiff
                        
                    statsToReturn.append(round(pitcher_PredStrikeouts,1))
                    
                elif game_Time == "Night":
                        
                    # Opp Team
                    oppTeam_PerGameNight_Strikeouts = getMLBCalc(teamName, "Team", "Team_PerGameNight_Average_Strikeouts")
                    oppTeam_PerGameNight_Strikeouts = float(oppTeam_PerGameNight_Strikeouts[0])
                        
                    #League averages
                    league_PerGameNight_Average_Strikeouts = getMLBCalc("League", "League", "League_PerGameNight_Average_Strikeouts")
                    league_PerGameNight_Average_Strikeouts = float(league_PerGameNight_Average_Strikeouts[0])
                        
                    #Pitcher Home Strikeouts
                    pitcher_Night_Strikeouts = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Strikeouts")
                    pitcher_Night_Strikeouts = int(pitcher_Night_Strikeouts[0])
                        
                    #Pitcher Home Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Night_InningsPitched")
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                        
                    #Pitcher Home Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Games")
                    pitcher_Night_GamesPlayed = int(pitcher_Night_GamesPlayed[0])
                        
                        
                    #Calculate opp team average strikeouts between away and day
                    oppTeam_PerGame_Strikeouts = (oppTeam_PerGameHome_Strikeouts + oppTeam_PerGameNight_Strikeouts)/2
                        
                    #Calculate league average strikeouts between away and day
                    league_PerGame_Strikeouts = (league_PerGameHome_Average_Strikeouts + league_PerGameNight_Average_Strikeouts)/2
                        
                        
                        
                    #Calculate pitcher average strikeouts between home and day
                    pitcher_Strikeouts = (pitcher_Away_Strikeouts + pitcher_Night_Strikeouts)/2
                        
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Away_InningsPitched + pitcher_Night_InningsPitched)/2
                        
                    #Calculate pitcher average games between home and day
                    pitcher_GamesPlayed = (pitcher_Away_GamesPlayed + pitcher_Night_GamesPlayed)/2
                        
                    #Calculate opp team strikeout offset
                    teamStrikeoutDiff = league_PerGame_Strikeouts - oppTeam_PerGame_Strikeouts
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_StrikeoutsPerInning = pitcher_Strikeouts/pitcher_InningsPitched
                        
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Strikeouts = pitcher_AVG_StrikeoutsPerInning* pitcher_AVG_InningsPitched
                        
                    
                        
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredStrikeouts = pitcher_AVG_Strikeouts - teamStrikeoutDiff
                        
                    statsToReturn.append(round(pitcher_PredStrikeouts,1))
                
            if userChoices[pitcherStat_Count] == PITCHER_PREDHOME_HITS:
                
                
                # Opp Team Averages
                oppTeam_Away_HitsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameAway_Average_Hits")
                oppTeam_Away_HitsPerGame = float(oppTeam_Away_HitsPerGame[0])
                
                #League Averages
                league_Away_HitsPerGame = getMLBCalc("League", "League", "League_PerGameAway_Average_Hits")
                league_Away_HitsPerGame = float(league_Away_HitsPerGame[0])
                
                #Pitcher Home Hits
                pitcher_Home_Hits = getMLBStat(playerName, "Pitcher", "Pitcher_Home_Hits")
                pitcher_Home_Hits = int(pitcher_Home_Hits[0])
                    
                #Pitcher Home Innings Pitched
                pitcher_Home_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Home_InningsPitched")
                pitcher_Home_InningsPitched = float(pitcher_Home_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Home_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Home_Games")
                pitcher_Home_GamesPlayed = int(pitcher_Home_GamesPlayed[0])
                
                if game_Time == "Day":
                    
                    # Opp Team Day Averages
                    oppTeam_Day_HitsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameDay_Average_Hits")
                    oppTeam_Day_HitsPerGame = float(oppTeam_Day_HitsPerGame[0])
                    
                    #League Day Averages
                    league_Day_HitsPerGame = getMLBCalc("League", "League", "League_PerGameDay_Average_Hits")
                    league_Day_HitsPerGame = float(league_Day_HitsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Day_Hits = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Hits")
                    pitcher_Day_Hits = int(pitcher_Day_Hits[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Day_InningsPitched")
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Games")
                    pitcher_Day_GamesPlayed = int(pitcher_Day_GamesPlayed[0])
                    
                    #Calculate opp team average hits between home and day
                    oppTeam_HitsPerGame = (oppTeam_Away_HitsPerGame + oppTeam_Day_HitsPerGame)/2
                    
                    
                    #Calculate opp team average hits between home and day
                    league_HitsPerGame = (league_Away_HitsPerGame + league_Day_HitsPerGame)/2
                    
                    
                    #Calculate pitcher average Hits between home and day
                    pitcher_Hits = (pitcher_Home_Hits + pitcher_Day_Hits)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Home_InningsPitched + pitcher_Day_InningsPitched)/2
                    
                    #Calculate pitcher average games played between home and day
                    pitcher_GamesPlayed = (pitcher_Home_GamesPlayed + pitcher_Day_GamesPlayed)/2
                    
                    
                    #Calculate opp team strikeout offset
                    teamHitsDiff = league_HitsPerGame - oppTeam_HitsPerGame
                    
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                    
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_HitsPerInning = pitcher_Hits/pitcher_InningsPitched
                    
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Hits = pitcher_AVG_HitsPerInning * pitcher_AVG_InningsPitched

                    #Calculate pitcher predicted strikeouts
                    pitcher_PredHits = pitcher_AVG_Hits - teamHitsDiff
                    
                        
                    statsToReturn.append(round(pitcher_PredHits,1))
                    
                    
                
                elif game_Time == "Night":
                    
                    # Opp Team Day Averages
                    oppTeam_Night_HitsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameNight_Average_Hits")
                    oppTeam_Night_HitsPerGame = float(oppTeam_Night_HitsPerGame[0])
                    
                    #League Day Averages
                    league_Night_HitsPerGame = getMLBCalc("League", "League", "League_PerGameNight_Average_Hits")
                    league_Night_HitsPerGame = float(league_Night_HitsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Night_Hits = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Hits")
                    pitcher_Night_Hits = int(pitcher_Night_Hits[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Night_InningsPitched")
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Games")
                    pitcher_Night_GamesPlayed = int(pitcher_Night_GamesPlayed[0])
                    
                    #Calculate opp team average hits between home and day
                    oppTeam_HitsPerGame = (oppTeam_Away_HitsPerGame + oppTeam_Night_HitsPerGame)/2
                    
                    #Calculate opp team average hits between home and day
                    league_HitsPerGame = (league_Away_HitsPerGame + league_Night_HitsPerGame)/2
                    
                    #Calculate pitcher average Hits between home and day
                    pitcher_Hits = (pitcher_Home_Hits + pitcher_Night_Hits)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Home_InningsPitched + pitcher_Night_InningsPitched)/2
                    
                    #Calculate pitcher average games played between home and day
                    pitcher_GamesPlayed = (pitcher_Home_GamesPlayed + pitcher_Night_GamesPlayed)/2
                    
                    
                    #Calculate opp team strikeout offset
                    teamHitsDiff = league_HitsPerGame - oppTeam_HitsPerGame
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_HitsPerInning = pitcher_Hits/pitcher_InningsPitched
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Hits = pitcher_AVG_HitsPerInning* pitcher_AVG_InningsPitched
                        
                    
                        
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredHits = pitcher_AVG_Hits - teamHitsDiff
                        
                    statsToReturn.append(round(pitcher_PredHits,1))
                       
            if userChoices[pitcherStat_Count] == PITCHER_PREDAWAY_HITS:
                
                # Opp Team Averages
                oppTeam_Home_HitsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameHome_Average_Hits")
                oppTeam_Home_HitsPerGame = float(oppTeam_Home_HitsPerGame[0])
                
                #League Averages
                league_Home_HitsPerGame = getMLBCalc("League", "League", "League_PerGameHome_Average_Hits")
                league_Home_HitsPerGame = float(league_Home_HitsPerGame[0])
                
                #Pitcher Home Hits
                pitcher_Away_Hits = getMLBStat(playerName, "Pitcher", "Pitcher_Away_Hits")
                pitcher_Away_Hits = int(pitcher_Away_Hits[0])
                    
                #Pitcher Home Innings Pitched
                pitcher_Away_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Away_InningsPitched")
                pitcher_Away_InningsPitched = float(pitcher_Away_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Away_GamesPlayed = getMLBStat(playerName, "Pitcher",  "Pitcher_Away_Games")
                pitcher_Away_GamesPlayed = int(pitcher_Away_GamesPlayed[0])
                
                if game_Time == "Day":
                    
                    # Opp Team Day Averages
                    oppTeam_Day_HitsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameDay_Average_Hits")
                    oppTeam_Day_HitsPerGame = float(oppTeam_Day_HitsPerGame[0])
                    
                    #League Day Averages
                    league_Day_HitsPerGame = getMLBCalc("League", "League", "League_PerGameDay_Average_Hits")
                    league_Day_HitsPerGame = float(league_Day_HitsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Day_Hits = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Hits")
                    pitcher_Day_Hits = int(pitcher_Day_Hits[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Day_InningsPitched")
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Games")
                    pitcher_Day_GamesPlayed = int(pitcher_Day_GamesPlayed[0])
                    
                    #Calculate opp team average hits between home and day
                    oppTeam_HitsPerGame = (oppTeam_Home_HitsPerGame + oppTeam_Day_HitsPerGame)/2
                    
                    #Calculate opp team average hits between home and day
                    league_HitsPerGame = (league_Home_HitsPerGame + league_Day_HitsPerGame)/2
                    
                    #Calculate pitcher average Hits between home and day
                    pitcher_Hits = (pitcher_Away_Hits + pitcher_Day_Hits)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Away_InningsPitched + pitcher_Day_InningsPitched)/2
                    
                    #Calculate pitcher average games played between home and day
                    pitcher_GamesPlayed = (pitcher_Away_GamesPlayed + pitcher_Day_GamesPlayed)/2
                    
                    
                    #Calculate opp team strikeout offset
                    teamHitsDiff = league_HitsPerGame - oppTeam_HitsPerGame
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_HitsPerInning = pitcher_Hits/pitcher_InningsPitched
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Hits = pitcher_AVG_HitsPerInning* pitcher_AVG_InningsPitched
                        
                        
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredHits = pitcher_PredHits = pitcher_AVG_Hits - teamHitsDiff
                        
                    statsToReturn.append(round(pitcher_PredHits,1))
                    
                    
                
                elif game_Time == "Night":
                    
                    # Opp Team Day Averages
                    oppTeam_Night_HitsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameNight_Average_Hits")
                    oppTeam_Night_HitsPerGame = float(oppTeam_Night_HitsPerGame[0])
                    
                    #League Day Averages
                    league_Night_HitsPerGame = getMLBCalc("League", "League", "League_PerGameNight_Average_Hits")
                    league_Night_HitsPerGame = float(league_Night_HitsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Night_Hits = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Hits")
                    pitcher_Night_Hits = int(pitcher_Night_Hits[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Night_InningsPitched")
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Games")
                    pitcher_Night_GamesPlayed = int(pitcher_Night_GamesPlayed[0])
                    
                    #Calculate opp team average hits between home and day
                    oppTeam_HitsPerGame = (oppTeam_Home_HitsPerGame + oppTeam_Night_HitsPerGame)/2
                    
                    #Calculate opp team average hits between home and day
                    league_HitsPerGame = (league_Home_HitsPerGame + league_Night_HitsPerGame)/2
                    
                    #Calculate pitcher average Hits between home and day
                    pitcher_Hits = (pitcher_Away_Hits + pitcher_Night_Hits)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Away_InningsPitched + pitcher_Night_InningsPitched)/2
                    
                    #Calculate pitcher average games played between home and day
                    pitcher_GamesPlayed = (pitcher_Away_GamesPlayed + pitcher_Night_GamesPlayed)/2
                    
                    
                    #Calculate opp team strikeout offset
                    teamHitsDiff = league_HitsPerGame - oppTeam_HitsPerGame
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_HitsPerInning = pitcher_Hits/pitcher_InningsPitched
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Hits = pitcher_AVG_HitsPerInning* pitcher_AVG_InningsPitched
                        
                    
                        
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredHits = pitcher_PredHits = pitcher_AVG_Hits - teamHitsDiff
                        
                    statsToReturn.append(round(pitcher_PredHits,1))
                
            if userChoices[pitcherStat_Count] == PITCHER_PREDHOME_RUNS:
                
                # Opp Team Averages
                oppTeam_Away_RunsPerGame = getMLBCalc(teamName, "Team","Team_PerGameAway_Average_Runs")
                oppTeam_Away_RunsPerGame = float(oppTeam_Away_RunsPerGame[0])
                
                #League Averages
                league_Away_RunsPerGame = getMLBCalc("League", "League", "League_PerGameAway_Average_Runs")
                league_Away_RunsPerGame = float(league_Away_RunsPerGame[0])
                
                #Pitcher Home Hits
                pitcher_Home_Runs = getMLBStat(playerName, "Pitcher", "Pitcher_Home_Runs")
                pitcher_Home_Runs = int(pitcher_Home_Runs[0])
                    
                #Pitcher Home Innings Pitched
                pitcher_Home_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Home_InningsPitched")
                pitcher_Home_InningsPitched = float(pitcher_Home_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Home_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Home_Games")
                pitcher_Home_GamesPlayed = int(pitcher_Home_GamesPlayed[0])
            
                if game_Time == "Day":
                    
                    # Opp Team Day Averages
                    oppTeam_Day_RunsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameDay_Average_Runs")
                    oppTeam_Day_RunsPerGame = float(oppTeam_Day_RunsPerGame[0])
                    
                    #League Day Averages
                    league_Day_RunsPerGame = getMLBCalc("League", "League", "League_PerGameDay_Average_Runs")
                    league_Day_RunsPerGame = float(league_Day_RunsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Day_Runs = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Runs")
                    pitcher_Day_Runs = int(pitcher_Day_Runs[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Day_InningsPitched")
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Games")
                    pitcher_Day_GamesPlayed = int(pitcher_Day_GamesPlayed[0])
                    
                    #Calculate opp team average hits between home and day
                    oppTeam_RunsPerGame = (oppTeam_Away_RunsPerGame + oppTeam_Day_RunsPerGame)/2
                    
                    #Calculate opp team average hits between home and day
                    league_RunsPerGame = (league_Away_RunsPerGame + league_Day_RunsPerGame)/2
                    
                    #Calculate pitcher average Hits between home and day
                    pitcher_Runs = (pitcher_Home_Runs + pitcher_Day_Runs)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Home_InningsPitched + pitcher_Day_InningsPitched)/2
                    
                    #Calculate pitcher average games played between home and day
                    pitcher_GamesPlayed = (pitcher_Home_GamesPlayed + pitcher_Day_GamesPlayed)/2
                    
                    
                    #Calculate opp team strikeout offset
                    teamRunsDiff = league_RunsPerGame - oppTeam_RunsPerGame
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_RunsPerInning = pitcher_Runs/pitcher_InningsPitched
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Runs = pitcher_AVG_RunsPerInning* pitcher_AVG_InningsPitched
                        
                        
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredRuns = pitcher_AVG_Runs - teamRunsDiff
                        
                    statsToReturn.append(round(pitcher_PredRuns,1))
                    
                elif game_Time == "Night":
                   
                   # Opp Team Day Averages
                    oppTeam_Night_RunsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameNight_Average_Runs")
                    oppTeam_Night_RunsPerGame = float(oppTeam_Night_RunsPerGame[0])
                    
                    #League Day Averages
                    league_Night_RunsPerGame = getMLBCalc("League", "League", "League_PerGameNight_Average_Runs")
                    league_Night_RunsPerGame = float(league_Night_RunsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Night_Runs = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Runs")
                    pitcher_Night_Runs = int(pitcher_Night_Runs[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Night_InningsPitched")
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Games")
                    pitcher_Night_GamesPlayed = int(pitcher_Night_GamesPlayed[0])
                    
                    #Calculate opp team average hits between home and day
                    oppTeam_RunsPerGame = (oppTeam_Away_RunsPerGame + oppTeam_Night_RunsPerGame)/2
                    
                    #Calculate opp team average hits between home and day
                    league_RunsPerGame = (league_Away_RunsPerGame + league_Night_RunsPerGame)/2
                    
                    #Calculate pitcher average Hits between home and day
                    pitcher_Runs = (pitcher_Home_Runs + pitcher_Night_Runs)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Home_InningsPitched + pitcher_Night_InningsPitched)/2
                    
                    #Calculate pitcher average games played between home and day
                    pitcher_GamesPlayed = (pitcher_Home_GamesPlayed + pitcher_Night_GamesPlayed)/2
                    
                    
                    #Calculate opp team strikeout offset
                    teamRunsDiff = league_RunsPerGame - oppTeam_RunsPerGame
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_RunsPerInning = pitcher_Runs/pitcher_InningsPitched
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Runs = pitcher_AVG_RunsPerInning* pitcher_AVG_InningsPitched
                        
                        
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredRuns = pitcher_AVG_Runs - teamRunsDiff
                        
                    statsToReturn.append(round(pitcher_PredRuns,1)) 
                
            if userChoices[pitcherStat_Count] == PITCHER_PREDAWAY_RUNS:
                
                # Opp Team Averages
                oppTeam_Home_RunsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameHome_Average_Runs")
                oppTeam_Home_RunsPerGame = float(oppTeam_Home_RunsPerGame[0])
                
                #League Averages
                league_Home_RunsPerGame = getMLBCalc("League", "League", "League_PerGameHome_Average_Runs")
                league_Home_RunsPerGame = float(league_Home_RunsPerGame[0])
                
                #Pitcher Home Hits
                pitcher_Away_Runs = get_statData(connection, playerName, "pitcher_away_stats", "Runs")
                
                    
                #Pitcher Home Innings Pitched
                pitcher_Away_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Away_InningsPitched")
                pitcher_Away_InningsPitched = float(pitcher_Away_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Away_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Away_Games")
                pitcher_Away_GamesPlayed = int(pitcher_Away_GamesPlayed[0])
            
                if game_Time == "Day":
                    
                    # Opp Team Day Averages
                    oppTeam_Day_RunsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameDay_Average_Runs")
                    oppTeam_Day_RunsPerGame = float(oppTeam_Day_RunsPerGame[0])
                    
                    #League Day Averages
                    league_Day_RunsPerGame = getMLBCalc("League", "League", "League_PerGameDay_Average_Runs")
                    league_Day_RunsPerGame = float(league_Day_RunsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Day_Runs = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Runs")
                    pitcher_Day_Runs = int(pitcher_Day_Runs[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Day_InningsPitched")
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Day_Games")
                    pitcher_Day_GamesPlayed = int(pitcher_Day_GamesPlayed[0])
                    
                    #Calculate opp team average hits between home and day
                    oppTeam_RunsPerGame = (oppTeam_Home_RunsPerGame + oppTeam_Day_RunsPerGame)/2
                    
                    #Calculate opp team average hits between home and day
                    league_RunsPerGame = (league_Home_RunsPerGame + league_Day_RunsPerGame)/2
                    
                    #Calculate pitcher average Hits between home and day
                    pitcher_Runs = (pitcher_Away_Runs + pitcher_Day_Runs)/2
                    
                    #Calculate pitcher average innings pitched between home and day
                    pitcher_InningsPitched = (pitcher_Away_InningsPitched + pitcher_Day_InningsPitched)/2
                    
                    #Calculate pitcher average games played between home and day
                    pitcher_GamesPlayed = (pitcher_Away_GamesPlayed + pitcher_Day_GamesPlayed)/2
                    
                    
                    #Calculate opp team strikeout offset
                    teamRunsDiff = league_RunsPerGame - oppTeam_RunsPerGame
                        
                    #Calculate pitcher average innings pitched
                    pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                        
                    #Calculate pitcher average Strikeouts per inning
                    pitcher_AVG_RunsPerInning = pitcher_Runs/pitcher_InningsPitched
                    
                    #Calculate pitcher strikeouts per game
                    pitcher_AVG_Runs = pitcher_AVG_RunsPerInning* pitcher_AVG_InningsPitched
                        
                        
                    #Calculate pitcher predicted strikeouts
                    pitcher_PredRuns = pitcher_AVG_Runs - teamRunsDiff
                        
                    statsToReturn.append(round(pitcher_PredRuns,1))
                    
                elif game_Time == "Night":
                    try:
                    # Opp Team Day Averages
                        oppTeam_Night_RunsPerGame = getMLBCalc(teamName, "Team", "Team_PerGameNight_Average_Runs")
                        oppTeam_Night_RunsPerGame = float(oppTeam_Night_RunsPerGame[0])
                        
                        #League Day Averages
                        league_Night_RunsPerGame = getMLBCalc("League", "League", "League_PerGameNight_Average_Runs")
                        league_Night_RunsPerGame = float(league_Night_RunsPerGame[0])
                        
                        #Pitcher Day Hits
                        pitcher_Night_Runs = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Runs")
                        pitcher_Night_Runs = int(pitcher_Night_Runs[0])
                            
                        #Pitcher Day Innings Pitched
                        pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", "Pitcher_Night_InningsPitched")
                        pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                            
                        #Pitcher Day Games Played
                        pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", "Pitcher_Night_Games")
                        pitcher_Night_GamesPlayed = int(pitcher_Night_GamesPlayed[0])
                        
                        #Calculate opp team average hits between home and day
                        oppTeam_RunsPerGame = (oppTeam_Home_RunsPerGame + oppTeam_Night_RunsPerGame)/2
                        
                        #Calculate opp team average hits between home and day
                        league_RunsPerGame = (league_Home_RunsPerGame + league_Night_RunsPerGame)/2
                        
                        #Calculate pitcher average Hits between home and day
                        pitcher_Runs = (pitcher_Away_Runs + pitcher_Night_Runs)/2
                        
                        #Calculate pitcher average innings pitched between home and day
                        pitcher_InningsPitched = (pitcher_Away_InningsPitched + pitcher_Night_InningsPitched)/2
                        
                        #Calculate pitcher average games played between home and day
                        pitcher_GamesPlayed = (pitcher_Away_GamesPlayed + pitcher_Night_GamesPlayed)/2
                        
                        
                        #Calculate opp team strikeout offset
                        teamRunsDiff = league_RunsPerGame - oppTeam_RunsPerGame
                            
                        #Calculate pitcher average innings pitched
                        pitcher_AVG_InningsPitched = pitcher_InningsPitched / pitcher_GamesPlayed
                            
                        #Calculate pitcher average Strikeouts per inning
                        pitcher_AVG_RunsPerInning = pitcher_Runs/pitcher_InningsPitched
                        
                        #Calculate pitcher strikeouts per game
                        pitcher_AVG_Runs = pitcher_AVG_RunsPerInning* pitcher_AVG_InningsPitched
                            
                            
                        #Calculate pitcher predicted strikeouts
                        pitcher_PredRuns = pitcher_AVG_Runs - teamRunsDiff
                            
                        statsToReturn.append(round(pitcher_PredRuns,1))   
                        
                    except TypeError:
                        
                        statsToReturn.append(0)
            
                 
            pitcherStat_Count += 1
    
    elif category == "Batter":
        
        pass
    
    elif category == "Team":
        
        pass
    
    elif category == "League":
        
        
        pass
    
    

    close_connection(connection)       
    return statsToReturn