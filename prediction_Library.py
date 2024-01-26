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

def getNFLPred(*args):
    
    playerName = ""
    teamName = ""
    
    
    category = args[1]
    
    userChoices = []
    statsToReturn = []
    
    teamNames = ["Arizona", "Atlanta", "Baltimore", "Buffalo", "Carolina", "Chicago", "Cincinnati", "Cleveland", "Dallas", "Denver", "Detroit",
                 "Green Bay", "Houston", "Indianapolis", "Jacksonville", "Kansas City", "LA Chargers", "LA Rams", "Las Vegas", "Miami", "Minnesota",
                 "New England", "New Orleans", "NY Giants", "NY Jets", "Philadelphia", "Pittsburgh", "San Francisco", "Seattle", "Tampa Bay", "Tennessee", 
                 "Washington"]
    
    if args[0] in teamNames:
        
        teamName = args[0]
        
        for arg in args[2:]:
            userChoices.append(arg)
        
    else:
        
        playerName = args[0]
        
        if args[2] in teamNames:
            
            teamName = args[2]
            
            for arg in args[3:]:
                userChoices.append(arg)
            
        else:
            
            for arg in args[2:]:
                userChoices.append(arg)
    
    connection = create_connection("nfl_stats")
    
               
    # ----Stat Call Commands----
    
    # --Quarterback--
    
    QB_PRED_PASSYARDS = "QB_Pred_PassYards"
    QB_PRED_TOUCHDOWNS = "QB_Pred_Touchdowns"
    QB_PRED_COMPLETIONS = "QB_Pred_Completions"
    QB_PRED_RUSHYARDS = "QB_Pred_RushYard"
    QB_PRED_RUSHATTEMPTS = "QB_Pred_RushAttempts"
    
    # --Runningback--
    RB_PRED_RUSHYARDS = "RB_Pred_RushYards"
    RB_PRED_TOUCHDOWNS = "RB_Pred_Touchdowns"
    RB_PRED_ATTEMPTS = "RB_Pred_Attempts"
    RB_PRED_YPA = "RB_Pred_YPA"
    RB_PRED_RECYARDS = "RB_Pred_RecYards"
    
    # --Wide Recievers--
    WR_PRED_RECYARDS = "WR_Pred_RecYards"
    WR_PRED_TOUCHDOWNS = "WR_Pred_Touchdowns"
    WR_PRED_COMPLETIONS = "WR_Pred_Completions"
    WR_PRED_YPC = "WR_Pred_YPC"
    
    # --Tight Ends--
    TE_PRED_RECYARDS = "TE_Pred_RecYards"
    TE_PRED_TOUCHDOWNS = "TE_Pred_Touchdowns"
    TE_PRED_COMPLETIONS = "TE_Pred_Completions"
    
    # --Team---
    TEAM_PRED_POINTS = "Team_Pred_Points"
            
    for choice in userChoices:
        
        
        
        if category == "Quarterback":
        
            if choice == QB_PRED_PASSYARDS:
                
                # Get QB's Pass Yards Per Game
                QB_PassYards_PerGame = getNFLCalc(playerName, "Quarterback", "QB_Calc_PassYards_PerGame")
                QB_PassYards_PerGame = float(QB_PassYards_PerGame[0])
                
                # Get versus team's pass yards allowed per game
                vsTeam_PassYards_Allowed_PerGame =  get_statData(connection, teamName, "defteam_passing_stats", "PassYards_PerGame")
                vsTeam_PassYards_Allowed_PerGame = float(vsTeam_PassYards_Allowed_PerGame)
                
                # Get everyteam's pass yards allowed per game
                league_PassYards_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_PassYards_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
        
                    league_PassYards_PerGame_List.append(stat[0])
                
                # Sum All team's pass yards allowed per game
                league_PassYards_PerGame_Sum = 0   
                for yard in league_PassYards_PerGame_List:
                    
                    league_PassYards_PerGame_Sum += float(yard)
                    
                # Calculate the league average of pass yards allowed per game
                league_PassYards_PerGame_AVG = (league_PassYards_PerGame_Sum/len(league_PassYards_PerGame_List))
                
                # Calculate pass Yards allowed difference between versus team and league average as a percentage
                percentage_passYards_Diff = ((vsTeam_PassYards_Allowed_PerGame - league_PassYards_PerGame_AVG) / league_PassYards_PerGame_AVG) * 100
                percentage_passYards_Diff = percentage_passYards_Diff/2
                
                # Calculate predicted QB's pass touchdowns as a percentage change from QB's average
                pred_QB_PassingYards = QB_PassYards_PerGame * (1 + percentage_passYards_Diff / 100)
                
                statsToReturn.append(round(pred_QB_PassingYards,1))
                
            elif choice == QB_PRED_TOUCHDOWNS:
                
                QB_Touchdowns_PerGame = getNFLCalc(playerName, "Quarterback", "QB_Calc_Touchdowns_PerGame")
                QB_Touchdowns_PerGame = float(QB_Touchdowns_PerGame[0])
                
                vsTeam_PassTouchdowns_Allowed_PerGame =  get_statData(connection, teamName, "defteam_passing_stats", "PassTouchdowns_PerGame")
                vsTeam_PassTouchdowns_Allowed_PerGame = float(vsTeam_PassTouchdowns_Allowed_PerGame)
                
                # Get everyteam's Pass Touchdowns allowed per game
                league_PassTouchdowns_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_PassTouchdowns_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
        
                    league_PassTouchdowns_PerGame_List.append(stat[0])
                
                # Sum All team's Pass Touchdowns allowed per game
                league_PassTouchdowns_PerGame_Sum = 0   
                for touchdowns in league_PassTouchdowns_PerGame_List:
                    
                    league_PassTouchdowns_PerGame_Sum += float(touchdowns)
                   
                # Calculate the league average of pass Touchdowns allowed per game
                league_PassTouchdowns_PerGame_AVG = (league_PassTouchdowns_PerGame_Sum/len(league_PassTouchdowns_PerGame_List))
                
                # Calculate pass touchdowns allowed difference between versus team and league average as a percentage
                percentage_passTouchdowns_Diff = ((vsTeam_PassTouchdowns_Allowed_PerGame - league_PassTouchdowns_PerGame_AVG) / league_PassTouchdowns_PerGame_AVG) * 100
                percentage_passTouchdowns_Diff = percentage_passTouchdowns_Diff/2
                
                # Calculate predicted QB's pass touchdowns as a percentage change from QB's average
                pred_QB_PassingTouchdowns = QB_Touchdowns_PerGame * (1 + percentage_passTouchdowns_Diff / 100)
                
                statsToReturn.append(round(pred_QB_PassingTouchdowns,1))
                
            elif choice == QB_PRED_COMPLETIONS:
                
                QB_Completions_PerGame = getNFLCalc(playerName, "Quarterback", "QB_Calc_Completions_PerGame")
                QB_Completions_PerGame = float(QB_Completions_PerGame[0])
                
                vsTeam_Completions_Allowed_PerGame =  get_statData(connection, teamName, "defteam_passing_stats", "Completions_PerGame")
                vsTeam_Completions_Allowed_PerGame = float(vsTeam_Completions_Allowed_PerGame)
                
                
                # Get everyteam's Pass Touchdowns allowed per game
                league_Completions_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_Completions_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
        
                    league_Completions_PerGame_List.append(stat[0])
                
                # Sum All team's Pass Touchdowns allowed per game
                league_Completions_PerGame_Sum = 0   
                for completions in league_Completions_PerGame_List:
                    
                    league_Completions_PerGame_Sum += float(completions)
                   
                # Calculate the league average of pass Touchdowns allowed per game
                league_Completions_PerGame_AVG = (league_Completions_PerGame_Sum/len(league_Completions_PerGame_List))
                
                # Calculate pass completions allowed difference between versus team and league average as a percentage
                percentage_passCompletions_Diff = ((vsTeam_Completions_Allowed_PerGame - league_Completions_PerGame_AVG) / league_Completions_PerGame_AVG) * 100
                percentage_passCompletions_Diff = percentage_passCompletions_Diff/2
                
                # Calculate predicted QB's pass touchdowns as a percentage change from QB's average
                pred_QB_PassingCompletions = QB_Completions_PerGame * (1 + percentage_passCompletions_Diff / 100)
                
                statsToReturn.append(round(pred_QB_PassingCompletions,1))
                
        elif category == "Runningback":
            
            if choice == RB_PRED_RUSHYARDS:
                
                RB_RushYards_PerGame = getNFLCalc(playerName, "Runningback", "RB_Calc_RushYards_PerGame")
                RB_RushYards_PerGame = float(RB_RushYards_PerGame[0])
                
                vsTeam_RushYards_Allowed_PerGame =  get_statData(connection, teamName, "defteam_rushing_stats", "RushYards_PerGame")
                vsTeam_RushYards_Allowed_PerGame = float(vsTeam_RushYards_Allowed_PerGame)
                
                # Get everyteam's Rush Yards allowed per game
                league_RushYards_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_RushYards_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Rushing", statToGet)
        
                    league_RushYards_PerGame_List.append(stat[0])
                
                # Sum All team's Pass Touchdowns allowed per game
                league_RushYards_PerGame_Sum = 0   
                for yards in league_RushYards_PerGame_List:
                    
                    league_RushYards_PerGame_Sum += float(yards)
                   
                # Calculate the league average of pass Touchdowns allowed per game
                league_RushYards_PerGame_AVG = (league_RushYards_PerGame_Sum/len(league_RushYards_PerGame_List))
                
                # Calculate Rush Yards allowed difference between versus team and league average as a percentage
                percentage_RushYards_Diff = ((vsTeam_RushYards_Allowed_PerGame - league_RushYards_PerGame_AVG) / league_RushYards_PerGame_AVG) * 100
                percentage_RushYards_Diff = percentage_RushYards_Diff/2
                
                # Calculate predicted RB's Rush Yards as a percentage change from QB's average
                pred_RB_RushingYards = RB_RushYards_PerGame * (1 + percentage_RushYards_Diff / 100)
                
                statsToReturn.append(round(pred_RB_RushingYards,1))
                
            elif choice == RB_PRED_TOUCHDOWNS:
                
                RB_RushTouchdowns_PerGame = getNFLCalc(playerName, "Runningback", "RB_Calc_Touchdowns_PerGame")
                RB_RushTouchdowns_PerGame = float(RB_RushTouchdowns_PerGame[0])
                
                vsTeam_RushTouchdowns_Allowed_PerGame =  get_statData(connection, teamName, "defteam_rushing_stats", "RushTouchdowns_PerGame")
                vsTeam_RushTouchdowns_Allowed_PerGame = float(vsTeam_RushTouchdowns_Allowed_PerGame)
                
                # Get everyteam's rush touchdowns allowed per game
                league_RushTouchdowns_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_RushTouchdowns_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Rushing", statToGet)
        
                    league_RushTouchdowns_PerGame_List.append(stat[0])
                
                # Sum All team's Rush Touchdowns allowed per game
                league_RushTouchdowns_PerGame_Sum = 0   
                for touchdowns in league_RushTouchdowns_PerGame_List:
                    
                    league_RushTouchdowns_PerGame_Sum += float(touchdowns)
                   
                # Calculate the league average of Rush Touchdowns allowed per game
                league_RushTouchdowns_PerGame_AVG = (league_RushTouchdowns_PerGame_Sum/len(league_RushTouchdowns_PerGame_List))
                
                # Calculate Rush Touchdowns allowed difference between versus team and league average as a percentage
                percentage_RushTouchdowns_Diff = ((vsTeam_RushTouchdowns_Allowed_PerGame - league_RushTouchdowns_PerGame_AVG) / league_RushTouchdowns_PerGame_AVG) * 100
                percentage_RushTouchdowns_Diff = percentage_RushTouchdowns_Diff/2
                
                # Calculate predicted RB's Rushing touchdowns as a percentage change from QB's average
                pred_RB_RushTouchdowns = RB_RushTouchdowns_PerGame * (1 + percentage_RushTouchdowns_Diff / 100)
                
                
                statsToReturn.append(round(pred_RB_RushTouchdowns,1))
                
            elif choice == RB_PRED_ATTEMPTS:
                
                RB_Attempts_PerGame = getNFLCalc(playerName, "Runningback", "RB_Calc_Attempts_PerGame")
                RB_Attempts_PerGame = float(RB_Attempts_PerGame[0])
                
                vsTeam_Attempts_Allowed_PerGame =  get_statData(connection, teamName, "defteam_rushing_stats", "RushAttempts_PerGame")
                vsTeam_Attempts_Allowed_PerGame = float(vsTeam_Attempts_Allowed_PerGame)
                
                # Get everyteam's rush Attempts allowed per game
                league_Attempts_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_RushAttempts_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Rushing", statToGet)
        
                    league_Attempts_PerGame_List.append(stat[0])
                
                # Sum All team's Rush Attempts allowed per game
                league_Attempts_PerGame_Sum = 0   
                for attempts in league_Attempts_PerGame_List:
                    
                    league_Attempts_PerGame_Sum += float(attempts)
                   
                # Calculate the league average of Rush Attempts allowed per game
                league_Attempts_PerGame_AVG = (league_Attempts_PerGame_Sum/len(league_Attempts_PerGame_List))
                
                # Calculate Rush Attempts allowed difference between versus team and league average as a percentage
                percentage_RushAttempts_Diff = ((vsTeam_Attempts_Allowed_PerGame - league_Attempts_PerGame_AVG) / league_Attempts_PerGame_AVG) * 100
                percentage_RushAttempts_Diff = percentage_RushAttempts_Diff/2
                
                # Calculate predicted RB's Rushing touchdowns as a percentage change from QB's average
                pred_RB_RushAttempts = RB_Attempts_PerGame * (1 + percentage_RushAttempts_Diff / 100)
                
                
                statsToReturn.append(round(pred_RB_RushAttempts,1))
                
            elif choice == RB_PRED_YPA:
                
                RB_YPA_AVG = get_statData(connection, playerName, "rb_total_stats", "Yards_PerAttempt")
                RB_YPA_AVG = float(RB_YPA_AVG)
                
                vsTeam_YPA_Allowed =  getNFLStat(teamName, "Defense_Team_Rushing", "DefTeam_RushYards_PerAttempt")
                vsTeam_YPA_Allowed = float(vsTeam_YPA_Allowed[0])
                
                # Get everyteam's rush yards per attempt allowed
                league_YPA_List = []
                for team in teamNames:
                    
                    statToGet = "DefTeam_RushYards_PerAttempt"
                    stat = getNFLStat(team, "Defense_Team_Rushing", statToGet)
        
                    league_YPA_List.append(stat[0])
                    
                # Sum All team's Rush Yards allowed per attempt
                league_YPA_Sum = 0   
                for Yards in league_YPA_List:
                    
                    league_YPA_Sum += float(Yards)
                    
                # Calculate the league average of YPA allowed 
                league_YPA_AVG = (league_YPA_Sum/len(league_YPA_List))
                
                # Calculate YPA allowed difference between versus team and league average as a percentage
                percentage_YPA_Diff = ((vsTeam_YPA_Allowed - league_YPA_AVG) / league_YPA_AVG) * 100
                percentage_YPA_Diff = percentage_YPA_Diff/2
                
                # Calculate predicted RB's Rushing touchdowns as a percentage change from QB's average
                pred_RB_YPA = RB_YPA_AVG * (1 + percentage_YPA_Diff / 100)
                
                statsToReturn.append(round(pred_RB_YPA,1))
                
                
        
        elif category == "WideReciever":
            
            if choice == WR_PRED_RECYARDS:
                
                WR_RecYards_PerGame = getNFLCalc(playerName, "WideReciever", "WR_Calc_RecYards_PerGame")
                WR_RecYards_PerGame = float(WR_RecYards_PerGame[0])
                
                vsTeam_PassYards_Allowed_PerGame =  get_statData(connection, teamName, "defteam_passing_stats", "PassYards_PerGame")
                vsTeam_PassYards_Allowed_PerGame = float(vsTeam_PassYards_Allowed_PerGame)
                
                # Get everyteam's Pass Yards allowed per game
                league_PassYards_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_PassYards_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
        
                    league_PassYards_PerGame_List.append(stat[0])
                    
                # Sum All team's Pass Yards allowed per game
                league_PassYards_PerGame_Sum = 0   
                for yards in league_PassYards_PerGame_List:
                    
                    league_PassYards_PerGame_Sum += float(yards)
                    
                # Calculate the league average of Pass Yards allowed per game
                league_PassYards_PerGame_AVG = (league_PassYards_PerGame_Sum/len(league_PassYards_PerGame_List))
                
                # Calculate Pass Yards allowed difference between versus team and league average as a percentage
                percentage_PassYards_Diff = ((vsTeam_PassYards_Allowed_PerGame - league_PassYards_PerGame_AVG) / league_PassYards_PerGame_AVG) * 100
                percentage_PassYards_Diff = percentage_PassYards_Diff/2
                
                # Calculate predicted WR Rec Yards as a percentage change from QB's average
                pred_WR_RecYards = WR_RecYards_PerGame * (1 + percentage_PassYards_Diff / 100)
                
                statsToReturn.append(round(pred_WR_RecYards,1))
            
            elif choice == WR_PRED_TOUCHDOWNS:
                
                WR_RecTouchdowns_PerGame = getNFLCalc(playerName, "WideReciever", "WR_Calc_Touchdowns_PerGame")
                WR_RecTouchdowns_PerGame = float(WR_RecTouchdowns_PerGame[0])
                
                vsTeam_PassTouchdowns_Allowed_PerGame =  get_statData(connection, teamName, "defteam_passing_stats", "PassTouchdowns_PerGame")
                vsTeam_PassTouchdowns_Allowed_PerGame = float(vsTeam_PassTouchdowns_Allowed_PerGame)
                
                # Get everyteam's Touchdowns allowed per game
                league_PassTouchdowns_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_PassTouchdowns_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
        
                    league_PassTouchdowns_PerGame_List.append(stat[0])
                    
                # Sum All team's Pass Touchdowns allowed per game
                league_PassTouchdowns_PerGame_Sum = 0   
                for yards in league_PassTouchdowns_PerGame_List:
                    
                    league_PassTouchdowns_PerGame_Sum += float(yards)
                    
                # Calculate the league average of Pass Touchdowns allowed per game
                league_PassTouchdowns_PerGame_AVG = (league_PassTouchdowns_PerGame_Sum/len(league_PassTouchdowns_PerGame_List))
                
                # Calculate Pass Touchdowns allowed difference between versus team and league average as a percentage
                percentage_PassTouchdowns_Diff = ((vsTeam_PassTouchdowns_Allowed_PerGame - league_PassTouchdowns_PerGame_AVG) / league_PassTouchdowns_PerGame_AVG) * 100
                percentage_PassTouchdowns_Diff = percentage_PassTouchdowns_Diff/2
                
                # Calculate predicted WR Rec Touchdowns as a percentage change from QB's average
                pred_WR_RecTouchdowns = WR_RecTouchdowns_PerGame * (1 + percentage_PassTouchdowns_Diff / 100)
                
                statsToReturn.append(round(pred_WR_RecTouchdowns,1))
            
            elif choice == WR_PRED_COMPLETIONS:
                
                WR_Completions_PerGame = getNFLCalc(playerName, "WideReciever", "WR_Calc_Completions_PerGame")
                WR_Completions_PerGame = float(WR_Completions_PerGame[0])
                
                vsTeam_Completions_Allowed_PerGame = get_statData(connection, teamName, "defteam_passing_stats", "Completions_PerGame")
                vsTeam_Completions_Allowed_PerGame = float(vsTeam_Completions_Allowed_PerGame)
                

                # Get every team's completions allowed per game
                league_Completions_PerGame_List = []
                for team in teamNames:
                    
                    statToGet = "DefTeam_Completions_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
                    league_Completions_PerGame_List.append(float(stat[0]))

                # Sum All team's completions allowed per game
                league_Completions_PerGame_Sum = sum(league_Completions_PerGame_List)

                # Calculate the league average of completions allowed per game
                league_Completions_PerGame_AVG = league_Completions_PerGame_Sum / len(league_Completions_PerGame_List)

                # Calculate completions allowed difference between versus team and league average as a percentage
                percentage_Completions_Diff = ((vsTeam_Completions_Allowed_PerGame - league_Completions_PerGame_AVG) / league_Completions_PerGame_AVG) * 100
                percentage_Completions_Diff = percentage_Completions_Diff/2

                # Calculate predicted WR completions as a percentage change from WR's average
                pred_WR_Completions = WR_Completions_PerGame * (1 + percentage_Completions_Diff / 100)

                statsToReturn.append(round(pred_WR_Completions, 1))
                
            elif choice == WR_PRED_YPC:
                
                # Yards Per Catch
                WR_YPC = get_statData(connection, playerName, "wr_total_stats", "Yards_PerReception")
                WR_YPC = float(WR_YPC)
                
                if WR_YPC <= 0.0:
                    WR_YPC = 1.0
                
                vsTeam_YPC_Allowed_PerGame = getNFLStat(teamName, "Defense_Team_Passing", "DefTeam_PassYards_PerCompletion")
                vsTeam_YPC_Allowed_PerGame = float(vsTeam_YPC_Allowed_PerGame[0])
                

                # Get every team's completions allowed per game
                league_YPC_List = []
                for team in teamNames:
                    
                    statToGet = "DefTeam_PassYards_PerCompletion"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
                    league_YPC_List.append(float(stat[0]))

                # Sum All team's completions allowed per game
                league_YPC_Sum = sum(league_YPC_List)

                # Calculate the league average of completions allowed per game
                league_YPC_AVG = league_YPC_Sum / len(league_YPC_List)

                # Calculate completions allowed difference between versus team and league average as a percentage
                percentage_YPC_Diff = ((vsTeam_YPC_Allowed_PerGame - league_YPC_AVG) / league_YPC_AVG) * 100
                percentage_YPC_Diff = percentage_YPC_Diff/2

                # Calculate predicted WR completions as a percentage change from WR's average
                pred_WR_YPC = WR_YPC * (1 + percentage_YPC_Diff / 100)

                statsToReturn.append(round(pred_WR_YPC, 1))
        
        elif category == "TightEnd":
            
            if choice == TE_PRED_RECYARDS:
                
                TE_RecYards_PerGame = getNFLCalc(playerName, "TightEnd", "TE_Calc_RecYards_PerGame")
                TE_RecYards_PerGame = float(TE_RecYards_PerGame[0])
                
                vsTeam_PassYards_Allowed_PerGame =  get_statData(connection, teamName, "defteam_passing_stats", "PassYards_PerGame")
                vsTeam_PassYards_Allowed_PerGame = float(vsTeam_PassYards_Allowed_PerGame)
                
                # Get everyteam's Pass Yards allowed per game
                league_PassYards_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_PassYards_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
        
                    league_PassYards_PerGame_List.append(stat[0])
                    
                # Sum All team's Pass Yards allowed per game
                league_PassYards_PerGame_Sum = 0   
                for yards in league_PassYards_PerGame_List:
                    
                    league_PassYards_PerGame_Sum += float(yards)
                    
                # Calculate the league average of Pass Yards allowed per game
                league_PassYards_PerGame_AVG = (league_PassYards_PerGame_Sum/len(league_PassYards_PerGame_List))
                
                # Calculate Pass Yards allowed difference between versus team and league average as a percentage
                percentage_PassYards_Diff = ((vsTeam_PassYards_Allowed_PerGame - league_PassYards_PerGame_AVG) / league_PassYards_PerGame_AVG) * 100
                percentage_PassYards_Diff = percentage_PassYards_Diff/2
                
                # Calculate predicted TE Rec Yards as a percentage change from QB's average
                pred_TE_RecYards = TE_RecYards_PerGame * (1 + percentage_PassYards_Diff / 100)
                
                statsToReturn.append(round(pred_TE_RecYards,1))
            
            elif choice == TE_PRED_TOUCHDOWNS:
                
                TE_RecTouchdowns_PerGame = getNFLCalc(playerName, "TightEnd", "TE_Calc_Touchdowns_PerGame")
                TE_RecTouchdowns_PerGame = float(TE_RecTouchdowns_PerGame[0])
                
                vsTeam_PassTouchdowns_Allowed_PerGame =  get_statData(connection, teamName, "defteam_passing_stats", "PassTouchdowns_PerGame")
                vsTeam_PassTouchdowns_Allowed_PerGame = float(vsTeam_PassTouchdowns_Allowed_PerGame)
                
                # Get everyteam's Touchdowns allowed per game
                league_PassTouchdowns_PerGame_List= []
                for team in teamNames:
                    
                    statToGet = "DefTeam_PassTouchdowns_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
        
                    league_PassTouchdowns_PerGame_List.append(stat[0])
                    
                # Sum All team's Pass Touchdowns allowed per game
                league_PassTouchdowns_PerGame_Sum = 0   
                for yards in league_PassTouchdowns_PerGame_List:
                    
                    league_PassTouchdowns_PerGame_Sum += float(yards)
                    
                # Calculate the league average of Pass Touchdowns allowed per game
                league_PassTouchdowns_PerGame_AVG = (league_PassTouchdowns_PerGame_Sum/len(league_PassTouchdowns_PerGame_List))
                
                # Calculate Pass Touchdowns allowed difference between versus team and league average as a percentage
                percentage_PassTouchdowns_Diff = ((vsTeam_PassTouchdowns_Allowed_PerGame - league_PassTouchdowns_PerGame_AVG) / league_PassTouchdowns_PerGame_AVG) * 100
                percentage_PassTouchdowns_Diff = percentage_PassTouchdowns_Diff/2
                
                # Calculate predicted TE Rec Touchdowns as a percentage change from QB's average
                pred_TE_RecTouchdowns = TE_RecTouchdowns_PerGame * (1 + percentage_PassTouchdowns_Diff / 100)
                
                statsToReturn.append(round(pred_TE_RecTouchdowns,1))    
    
            elif choice == TE_PRED_COMPLETIONS:
                
                TE_Completions_PerGame = getNFLCalc(playerName, "TightEnd", "TE_Calc_Completions_PerGame")
                TE_Completions_PerGame = float(TE_Completions_PerGame[0])
                
                vsTeam_Completions_Allowed_PerGame = get_statData(connection, teamName, "defteam_passing_stats", "Completions_PerGame")
                vsTeam_Completions_Allowed_PerGame = float(vsTeam_Completions_Allowed_PerGame)
                

                # Get every team's completions allowed per game
                league_Completions_PerGame_List = []
                for team in teamNames:
                    
                    statToGet = "DefTeam_Completions_PerGame"
                    stat = getNFLStat(team, "Defense_Team_Passing", statToGet)
                    league_Completions_PerGame_List.append(float(stat[0]))

                # Sum All team's completions allowed per game
                league_Completions_PerGame_Sum = sum(league_Completions_PerGame_List)

                # Calculate the league average of completions allowed per game
                league_Completions_PerGame_AVG = league_Completions_PerGame_Sum / len(league_Completions_PerGame_List)

                # Calculate completions allowed difference between versus team and league average as a percentage
                percentage_Completions_Diff = ((vsTeam_Completions_Allowed_PerGame - league_Completions_PerGame_AVG) / league_Completions_PerGame_AVG) * 100
                percentage_Completions_Diff = percentage_Completions_Diff/2

                # Calculate predicted TE completions as a percentage change from TE's average
                pred_TE_Completions = TE_Completions_PerGame * (1 + percentage_Completions_Diff / 100)

                statsToReturn.append(round(pred_TE_Completions, 1))
 
        
               
    connection.close()  
     
    return statsToReturn 

def getNBAPred(*args):
    
    playerName = ""
    teamName = ""
    
    
    category = args[1]
    
    userChoices = []
    statsToReturn = []
    
    teamNames = ["Boston", "Brooklyn", "New York", "Philadelphia", "Toronto", "Chicago", "Cleveland", "Detroit", "Indiana", "Milwaukee",
                 "Atlanta", "Charlotte", "Miami", "Orlando", "Washington", "Denver", "Minnesota", "Okla City", "Portland", "Utah",
                 "Golden State", "LA Clippers", "LA Lakers", "Phoenix", "Sacramento", "Dallas", "Houston", "Memphis", "New Orleans", "San Antonio"]
    
    if args[0] in teamNames:
        
        teamName = args[0]
        
        for arg in args[2:]:
            userChoices.append(arg)
        
    else:
        
        playerName = args[0]
        
        if args[2] in teamNames:
            
            teamName = args[2]
            
            for arg in args[3:]:
                userChoices.append(arg)
            
        else:
            
            for arg in args[2:]:
                userChoices.append(arg)
    
    connection = create_connection("nba_stats")
    
               
    # ----Stat Call Commands----
    
    # Offensive scoring
    PLAYER_PRED_POINTS = "Player_Pred_Points"
    PLAYER_PRED_ASSISTS = "Player_Pred_Assists"
    PLAYER_PRED_THREES = "Player_Pred_Threes"
    PLAYER_PRED_REBOUNDS = "Player_Pred_Rebounds"
    
    # DEFENSE
    PLAYER_PRED_STEALS = "Player_Pred_Steals"
    PLAYER_PRED_BLOCKS = "Player_Pred_Blocks"
    
    # TEAM MISC
    TEAM_PRED_POINTS = "Team_Pred_Points"
    
    for choice in userChoices:
        
        if category == "Offense":
            
            if choice == PLAYER_PRED_POINTS:
                
                teams_Avg_Points_PerGameAllowed = []
                
                player_Points_PerGame = getNBAStat(playerName, "Player_Scoring", "Player_Points_PerGame")
                player_Points_PerGame = player_Points_PerGame[0]
                
                vs_team_PointsAllowed_PerGame = getNBAStat(teamName, "Team_Defensive_Scoring", "Team_Opp_Points_PerGame")
                vs_team_PointsAllowed_PerGame = vs_team_PointsAllowed_PerGame[0]
                
                for team in teamNames:
                    
                    team_pointsAllowed = getNBAStat(team, "Team_Defensive_Scoring", "Team_Opp_Points_PerGame")
                    team_pointsAllowed = team_pointsAllowed[0]
                    teams_Avg_Points_PerGameAllowed.append(team_pointsAllowed)
                    
                league_Avg_PointsAllowed = sum(teams_Avg_Points_PerGameAllowed) / len(teams_Avg_Points_PerGameAllowed) 
                
                if league_Avg_PointsAllowed != 0:
                    percentage_difference = (vs_team_PointsAllowed_PerGame / league_Avg_PointsAllowed)
                    
                adjusted_player_Points_PerGame = player_Points_PerGame * (1 + (2 * percentage_difference)/100)
                
                statsToReturn.append(adjusted_player_Points_PerGame)
                
            elif choice == PLAYER_PRED_ASSISTS:
                
                teams_Avg_Assists_PerGameAllowed = []
                
                player_Assists_PerGame = getNBAStat(playerName, "Player_Assists_Turnovers", "Player_Assists_PerGame")
                player_Assists_PerGame = player_Assists_PerGame[0]
                
                vs_team_AssistsAllowed_PerGame = getNBAStat(teamName, "Team_Opp_Misc", "Team_Opp_Assists_PerGame")
                vs_team_AssistsAllowed_PerGame = vs_team_AssistsAllowed_PerGame[0]
                
                for team in teamNames:
                    
                    team_AssistsAllowed = getNBAStat(team, "Team_Opp_Misc", "Team_Opp_Assists_PerGame")
                    team_AssistsAllowed = team_AssistsAllowed[0]
                    teams_Avg_Assists_PerGameAllowed.append(team_AssistsAllowed)
                    
                league_Avg_AssistsAllowed = sum(teams_Avg_Assists_PerGameAllowed) / len(teams_Avg_Assists_PerGameAllowed)
                
                if league_Avg_AssistsAllowed != 0:
                    percentage_difference = (vs_team_AssistsAllowed_PerGame / league_Avg_AssistsAllowed)
                  
                adjusted_player_Assists_PerGame = player_Assists_PerGame * (1 + (2 * percentage_difference)/100)
                
                statsToReturn.append(adjusted_player_Assists_PerGame)
        
            elif choice == PLAYER_PRED_THREES:
                
                teams_Avg_ThreesAttempted_PerGameAllowed_List = []
                teams_Avg_ThreesPerc_PerGameAllowed_List = []
                
                player_threeAttempts_Total = getNBAStat(playerName,"Player_Scoring", "Player_ThreePointers_Attempted")
                player_threeAttempts_Total = player_threeAttempts_Total[0]
                
                player_GamesPlayed = getNBAStat(playerName,"Player_Misc", "Player_GamesPlayed")
                player_GamesPlayed = player_GamesPlayed[0]
                
                if player_threeAttempts_Total != 0 and player_GamesPlayed != 0:
                    player_threeAttempts_PerGame = player_threeAttempts_Total/player_GamesPlayed
                    
                else:
                    
                    player_threeAttempts_PerGame = 1
                    
                player_threePoint_Perc = getNBAStat(playerName,"Player_Scoring", "Player_ThreePointers_Perc")
                player_threePoint_Perc = player_threePoint_Perc[0]
                
                vs_Team_ThreePointers_Attempted_PerGame = getNBAStat(teamName, "Team_Defensive_Shooting", "Team_Opp_ThreePointer_Attempts_PerGame")
                vs_Team_ThreePointers_Attempted_PerGame = vs_Team_ThreePointers_Attempted_PerGame[0]
                
                for team in teamNames:
                    
                    team_ThreePointers_Attempted_PerGame = getNBAStat(team, "Team_Defensive_Shooting", "Team_Opp_ThreePointer_Attempts_PerGame")
                    team_ThreePointers_Attempted_PerGame = team_ThreePointers_Attempted_PerGame[0]
                    
                    teams_Avg_ThreesAttempted_PerGameAllowed_List.append(team_ThreePointers_Attempted_PerGame)
                    
                league_Avg_Threes_PerGameAllowedSum = sum(teams_Avg_ThreesAttempted_PerGameAllowed_List) / len(teams_Avg_ThreesAttempted_PerGameAllowed_List)
                
                if league_Avg_Threes_PerGameAllowedSum != 0:
                    percentage_difference_Attempts = (vs_Team_ThreePointers_Attempted_PerGame / league_Avg_Threes_PerGameAllowedSum)
                    
                adjusted_player_ThreesAttempts_PerGame = player_threeAttempts_PerGame * (1 + (5 * percentage_difference_Attempts)/100)
                
                
                vs_Team_ThreePointers_Perc_PerGame = getNBAStat(teamName, "Team_Defensive_Shooting", "Team_Opp_ThreePoint_Perc")
                vs_Team_ThreePointers_Perc_PerGame = vs_Team_ThreePointers_Perc_PerGame[0]
                
                for team in teamNames:
                    
                    team_ThreePointersPerc_PerGame = getNBAStat(team, "Team_Defensive_Shooting", "Team_Opp_ThreePoint_Perc")
                    team_ThreePointersPerc_PerGame = team_ThreePointersPerc_PerGame[0]
                    
                    teams_Avg_ThreesPerc_PerGameAllowed_List.append(team_ThreePointersPerc_PerGame)
                    
                league_Avg_ThreesPerc_PerGameAllowedSum = sum(teams_Avg_ThreesPerc_PerGameAllowed_List) / len(teams_Avg_ThreesPerc_PerGameAllowed_List)
                
                if league_Avg_ThreesPerc_PerGameAllowedSum != 0:
                    percentage_difference_Perc = (vs_Team_ThreePointers_Perc_PerGame - league_Avg_ThreesPerc_PerGameAllowedSum) / league_Avg_ThreesPerc_PerGameAllowedSum
                    
                adjusted_player_ThreesPerc_PerGame = player_threePoint_Perc * (1 + (5 * percentage_difference_Perc)/100)
                
                player_Pred_Threes = adjusted_player_ThreesAttempts_PerGame * (adjusted_player_ThreesPerc_PerGame/100)
                
                statsToReturn.append(player_Pred_Threes)
            
        elif category == "Defense":
            
            pass
        
        elif category == "Team":
            
            pass
        
    
    connection.close()  
     
    return statsToReturn