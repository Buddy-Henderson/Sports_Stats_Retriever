import mysql.connector
from mysql.connector import Error

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException

from bs4 import BeautifulSoup
import time
from datetime import datetime
from datetime import date
import math

import time
from datetime import datetime
from datetime import date
import math


chrome_driver_path = 'C:\\Users\\buddy\\.wdm\\drivers\\chromedriver.exe'

"""
Documentation & Commands
___________________________________________________________________________ 
Arguments and uses
    
getStat(player Name, Pitcher, <stats>)
    
getStat(Player Name, Batter, <stats>)
    
getStat(Team Name,  Team, <stats>)
    
getStat(League, League, <stats>)
    
getStat(player Name, Pitcher, Team, Boston, <stats>)

getStat(player Name, Pitcher, oppTeam, gameTime, <stats>)
    
    
___________________________________________________________________________ 
"""

# MLB Section Of Library

def getMLBStat(*args):
    
    
    
    # Place holders for player names and team names
    playerName = ""
    teamName = ""
    
    # Category can be Pitcher, Batter, Team, or League
    category = args[1]
    
    # Place holder for user choices decided from *args
    userChoices = []
    
    # Place holder for stats to return 
    statsToReturn = []
    
    # Team names to check for when determining what the user wants from what arguments they passed
    teamNames = ["Arizona Diamondbacks", "Atlanta Braves", "Baltimore Orioles", "Boston Red Sox", "Chicago Cubs", "Chicago White Sox", "Cincinnati Reds", "Cleveland Guardians", "Colorado Rockies",
                 "Colorado Rockies","Detroit Tigers", "Houston Astros", "Kansas City Royals", "Los Angeles Angels", "Los Angeles Dodgers", "Miami Marlins", "Milwaukee Brewers", "Minnesota Twins",
                 "New York Mets", "New York Yankees", "Oakland Athletics", "Philadelphia Phillies", "Pittsburgh Pirates", "San Diego Padres", "Seattle Mariners", "San Francisco Giants",
                 "St. Louis Cardinals", "Tampa Bay Rays", "Texas Rangers", "Toronto Blue Jays", "Washington Nationals"]
    
    # Game time list that can be checked to determine which stats to fetch
    game_Time_Types = ["Day", "Night"]
    game_Time = ""
    
    # If the first argument is in team names, program determines that the user is interested in team stats
    if args[0] in teamNames:
        
        # Set teamName variable to args[0], which has been determined from the if statement
        teamName = args[0]
    
    # If args[0] was not in teamNames then it must be a player or args[0] is irrelevant such as in cases where user wants league stats   
    else:
        
        # Set playerName variable to args[0]
        playerName = args[0]
        
    # Checks if args[2] is in team names for cases want stats about players vs. team match ups
    if args[2] in teamNames:
        
        # Set teamName variable to args[2], which was determined by the if statement
        teamName = args[2]
        
        # If args[2] was in team names, this checks to see if the user passed a game time for the specific Night/Day stat
        if args[3] in game_Time_Types:
            
            # Set game_Time variable to args[3], which was determined by the if statement
            game_Time = args[3]
            
            # Since all other criteria options have been determined, add all other args[x] to userChoices list
            for choice in args[4:]:
                
                # Append each choice to userChoices
                userChoices.append(choice)
        
        # If args[3] is not in game_Time_Types, append all other args[x] to userChoices list
        else:
            
            # Append all other args[x] to userChoices list
            for choice in args[3:]:
                
                # Append choice to userChoices
                userChoices.append(choice)
                
    #  If args[2] is not in teamNames, append all other args[x] to userChoices list           
    else:  
        
        # Since all other criteria options have been determined, add all other args[x] to userChoices list    
        for choice in args[2:]:
            
            # Append choice to userChoices
            userChoices.append(choice)
   
   
             
    
    
    #___________________________________________________________________________    
    #Pitchers Stats options
    
    #--Pitcher Attributes--
    PITCHER_ARM = "Pitcher_Arm"
    
    #--Pitcher Season Totals--
    PITCHER_TOTAL_GAMES = "Pitcher_Total_Games"
    PITCHER_TOTAL_INNINGSPITCHED = "Pitcher_Total_InningsPitched"
    PITCHER_TOTAL_WINS = "Pitcher_Total_Wins"
    PITCHER_TOTAL_LOSSES = "Pitcher_Total_Losses"
    PITCHER_TOTAL_ERA = "Pitcher_Total_ERA"
    PITCHER_TOTAL_WHIP = "Pitcher_Total_WHIP"
    PITCHER_TOTAL_STRIKEOUTS = "Pitcher_Total_Strikeouts"
    PITCHER_TOTAL_WALKS = "Pitcher_Total_Walks"
    PITCHER_TOTAL_HITS = "Pitcher_Total_Hits"
    PITCHER_TOTAL_RUNS = "Pitcher_Total_Runs"
    PITCHER_TOTAL_HOMERUNS = "Pitcher_Total_HomeRuns"
    
    #--Pitchers At Home--
    PITCHER_HOME_GAMES = "Pitcher_Home_Games"
    PITCHER_HOME_INNINGSPITCHED = "Pitcher_Home_InningsPitched"
    PITCHER_HOME_WINS = "Pitcher_Home_Wins"
    PITCHER_HOME_LOSSES = "Pitcher_Home_Losses"
    PITCHER_HOME_ERA = "Pitcher_Home_ERA"
    PITCHER_HOME_WHIP = "Pitcher_Home_WHIP"
    PITCHER_HOME_STRIKEOUTS = "Pitcher_Home_Strikeouts"
    PITCHER_HOME_WALKS = "Pitcher_Home_Walks"
    PITCHER_HOME_HITS = "Pitcher_Home_Hits"
    PITCHER_HOME_RUNS = "Pitcher_Home_Runs"
    PITCHER_HOME_HOMERUNS = "Pitcher_Home_HomeRuns"
    
    #--Pitchers Away--
    PITCHER_AWAY_GAMES = "Pitcher_Away_Games"
    PITCHER_AWAY_INNINGSPITCHED = "Pitcher_Away_InningsPitched"
    PITCHER_AWAY_WINS = "Pitcher_Away_Wins"
    PITCHER_AWAY_LOSSES = "Pitcher_Away_Losses"
    PITCHER_AWAY_ERA = "Pitcher_Away_ERA"
    PITCHER_AWAY_WHIP = "Pitcher_Away_WHIP"
    PITCHER_AWAY_STRIKEOUTS = "Pitcher_Away_Strikeouts"
    PITCHER_AWAY_WALKS = "Pitcher_Away_Walks"
    PITCHER_AWAY_HITS = "Pitcher_Away_Hits"
    PITCHER_AWAY_RUNS = "Pitcher_Away_Runs"
    PITCHER_AWAY_HOMERUNS = "Pitcher_Away_HomeRuns"
    
    #--Pitchers During The Day--
    PITCHER_DAY_GAMES = "Pitcher_Day_Games"
    PITCHER_DAY_INNINGSPITCHED = "Pitcher_Day_InningsPitched"
    PITCHER_DAY_WINS = "Pitcher_Day_Wins"
    PITCHER_DAY_LOSSES = "Pitcher_Day_Losses"
    PITCHER_DAY_ERA = "Pitcher_Day_ERA"
    PITCHER_DAY_WHIP = "Pitcher_Day_WHIP"
    PITCHER_DAY_STRIKEOUTS = "Pitcher_Day_Strikeouts"
    PITCHER_DAY_WALKS = "Pitcher_Day_Walks"
    PITCHER_DAY_HITS = "Pitcher_Day_Hits"
    PITCHER_DAY_RUNS = "Pitcher_Day_Runs"
    PITCHER_DAY_HOMERUNS = "Pitcher_Day_HomeRuns"
    
    
    #--Pitchers During The Night--
    PITCHER_NIGHT_GAMES = "Pitcher_Night_Games"
    PITCHER_NIGHT_INNINGSPITCHED = "Pitcher_Night_InningsPitched"
    PITCHER_NIGHT_WINS = "Pitcher_Night_Wins"
    PITCHER_NIGHT_LOSSES = "Pitcher_Night_Losses"
    PITCHER_NIGHT_ERA = "Pitcher_Night_ERA"
    PITCHER_NIGHT_WHIP = "Pitcher_Night_WHIP"
    PITCHER_NIGHT_STRIKEOUTS = "Pitcher_Night_Strikeouts"
    PITCHER_NIGHT_WALKS = "Pitcher_Night_Walks"
    PITCHER_NIGHT_HITS = "Pitcher_Night_Hits"
    PITCHER_NIGHT_RUNS = "Pitcher_Night_Runs"
    PITCHER_NIGHT_HOMERUNS = "Pitcher_Night_HomeRuns"
    
    #--Pitcher Vs. Left--
    PITCHER_VSLEFT_HITS = "Pitcher_VsLeft_Hits"
    PITCHER_VSLEFT_HOMERUNS = "Pitcher_VsLeft_HomeRuns"
    PITCHER_VSLEFT_WALKS = "Pitcher_VsLeft_Walks"
    PITCHER_VSLEFT_STRIKEOUTS = "Pitcher_VsLeft_Strikeouts"
    PITCHER_VSLEFT_WHIP = "Pitcher_VsLeft_WHIP"
    PITCHER_VSLEFT_BATTINGAVG = "Pitcher_VsLeft_BattingAVG"
    
    #--Pitcher Vs. Right--
    PITCHER_VSRIGHT_HITS = "Pitcher_VsRight_Hits"
    PITCHER_VSRIGHT_HOMERUNS = "Pitcher_VsRight_HomeRuns"
    PITCHER_VSRIGHT_WALKS = "Pitcher_VsRight_Walks"
    PITCHER_VSRIGHT_STRIKEOUTS = "Pitcher_VsRight_Strikeouts"
    PITCHER_VSRIGHT_WHIP = "Pitcher_VsRight_WHIP"
    PITCHER_VSRIGHT_BATTINGAVG = "Pitcher_VsRight_BattingAVG"
    
    #___________________________________________________________________________    
    #Pitcher Calculations
    
    #Pitcher Total Calculations
    PITCHER_CALC_K9 = "Pitcher_Calc_K9"
    PITCHER_CALC_INNINGSPERGAME = "Pitcher_Calc_K9"
    
    #Pitcher Home Calculations
    PITCHER_CALCHOME_K9 = "Pitcher_CalcHome_K9"
    PITCHER_CALCHOME_INNINGSPERGAME = "Pitcher_CalcHome_K9"
    
    #Pitcher Away Calculations
    PITCHER_CALCAWAY_K9 = "Pitcher_CalcAway_K9"
    PITCHER_CALCAWAY_INNINGSPERGAME = "Pitcher_CalcAway_K9"
    
    #Pitcher Day Calculations
    PITCHER_CALCDAY_K9 = "Pitcher_CalcDay_K9"
    PITCHER_CALCDAY_INNINGSPERGAME = "Pitcher_CalcDay_K9"
    
    #Pitcher Night Calculations
    PITCHER_CALCNIGHT_K9 = "Pitcher_CalcNight_K9"
    PITCHER_CALCNIGHT_INNINGSPERGAME = "Pitcher_CalcNight_K9"
    
    #___________________________________________________________________________    
    #Pitcher Predictions
    PITCHER_PREDHOME_STRIKEOUTS = "Pitcher_PredHome_Strikeouts"
    PITCHER_PREDAWAY_STRIKEOUTS = "Pitcher_PredAway_Strikeouts"
    PITCHER_PREDHOME_HITS = "Pitcher_PredHome_Hits"
    PITCHER_PREDAWAY_HITS = "Pitcher_PredAway_Hits"
    PITCHER_PREDHOME_RUNS ="Pitcher_PredHome_Runs"
    PITCHER_PREDAWAY_RUNS = "Pitcher_PredAway_Runs"

    #___________________________________________________________________________    
    #Batter Stats options

    
    
    #--Pitcher Attributes--
    BATTER_ARM = "Batter_Arm"
    
    #--Batter Season Totals--
    BATTER_TOTAL_GAMES = "Batter_Total_Games"
    BATTER_TOTAL_ATBATS = "Batter_Total_AtBats" 
    BATTER_TOTAL_RUNS = "Batter_Total_Runs"
    BATTER_TOTAL_HITS = "Batter_Total_Hits"
    BATTER_TOTAL_DOUBLES = "Batter_Total_Doubles"
    BATTER_TOTAL_TRIPLES = "Batter_Total_Triples"
    BATTER_TOTAL_HOMERUNS = "Batter_Total_HomeRuns"
    BATTER_TOTAL_RBIS = "Batter_Total_RBIs"
    BATTER_TOTAL_WALKS = "Batter_Total_Walks"
    BATTER_TOTAL_STRIKEOUTS = "Batter_Total_Strikeouts"
    BATTER_TOTAL_STOLENBASES = "Batter_Total_StolenBases"
    BATTER_TOTAL_BATTINGAVG = "Batter_Total_BattingAVG"
    BATTER_TOTAL_ONBASEPERCENT = "Batter_Total_OnBasePercent"

    #--Batters At Home--
    BATTER_HOME_GAMES = "Batter_Home_Games"
    BATTER_HOME_ATBATS = "Batter_Home_AtBats" 
    BATTER_HOME_RUNS = "Batter_Home_Runs"
    BATTER_HOME_HITS = "Batter_Home_Hits"
    BATTER_HOME_DOUBLES = "Batter_Home_Doubles"
    BATTER_HOME_TRIPLES = "Batter_Home_Triples"
    BATTER_HOME_HOMERUNS = "Batter_Home_HomeRuns"
    BATTER_HOME_RBIS = "Batter_Home_RBIs"
    BATTER_HOME_WALKS = "Batter_Home_Walks"
    BATTER_HOME_STRIKEOUTS = "Batter_Home_Strikeouts"
    BATTER_HOME_STOLENBASES = "Batter_Home_StolenBases"
    BATTER_HOME_BATTINGAVG = "Batter_Home_BattingAVG"
    BATTER_HOME_ONBASEPERCENT = "Batter_Home_OnBasePercent"
    
    #--Batters At Away--
    BATTER_AWAY_GAMES = "Batter_Away_Games"
    BATTER_AWAY_ATBATS = "Batter_Away_AtBats" 
    BATTER_AWAY_RUNS = "Batter_Away_Runs"
    BATTER_AWAY_HITS = "Batter_Away_Hits"
    BATTER_AWAY_DOUBLES = "Batter_Away_Doubles"
    BATTER_AWAY_TRIPLES = "Batter_Away_Triples"
    BATTER_AWAY_HOMERUNS = "Batter_Away_HomeRuns"
    BATTER_AWAY_RBIS = "Batter_Away_RBIs"
    BATTER_AWAY_WALKS = "Batter_Away_Walks"
    BATTER_AWAY_STRIKEOUTS = "Batter_Away_Strikeouts"
    BATTER_AWAY_STOLENBASES = "Batter_Away_StolenBases"
    BATTER_AWAY_BATTINGAVG = "Batter_Away_BattingAVG"
    BATTER_AWAY_ONBASEPERCENT = "Batter_Away_OnBasePercent"
    
    #--Batters Day Stats--
    BATTER_DAY_GAMES = "Batter_Day_Games"
    BATTER_DAY_ATBATS = "Batter_Day_AtBats" 
    BATTER_DAY_RUNS = "Batter_Day_Runs"
    BATTER_DAY_HITS = "Batter_Day_Hits"
    BATTER_DAY_DOUBLES = "Batter_Day_Doubles"
    BATTER_DAY_TRIPLES = "Batter_Day_Triples"
    BATTER_DAY_HOMERUNS = "Batter_Day_HomeRuns"
    BATTER_DAY_RBIS = "Batter_Day_RBIs"
    BATTER_DAY_WALKS = "Batter_Day_Walks"
    BATTER_DAY_STRIKEOUTS = "Batter_Day_Strikeouts"
    BATTER_DAY_STOLENBASES = "Batter_Day_StolenBases"
    BATTER_DAY_BATTINGAVG = "Batter_Day_BattingAVG"
    BATTER_DAY_ONBASEPERCENT = "Batter_Day_OnBasePercent"
    
    #--Batters At Away--
    BATTER_NIGHT_GAMES = "Batter_Night_Games"
    BATTER_NIGHT_ATBATS = "Batter_Night_AtBats" 
    BATTER_NIGHT_RUNS = "Batter_Night_Runs"
    BATTER_NIGHT_HITS = "Batter_Night_Hits"
    BATTER_NIGHT_DOUBLES = "Batter_Night_Doubles"
    BATTER_NIGHT_TRIPLES = "Batter_Night_Triples"
    BATTER_NIGHT_HOMERUNS = "Batter_Night_HomeRuns"
    BATTER_NIGHT_RBIS = "Batter_Night_RBIs"
    BATTER_NIGHT_WALKS = "Batter_Night_Walks"
    BATTER_NIGHT_STRIKEOUTS = "Batter_Night_Strikeouts"
    BATTER_NIGHT_STOLENBASES = "Batter_Night_StolenBases"
    BATTER_NIGHT_BATTINGAVG = "Batter_Night_BattingAVG"
    BATTER_NIGHT_ONBASEPERCENT = "Batter_Night_OnBasePercent"
    
    #--Batters At Vs Left--
    BATTER_LEFT_GAMES = "Batter_Left_Games"
    BATTER_LEFT_ATBATS = "Batter_Left_AtBats" 
    BATTER_LEFT_RUNS = "Batter_Left_Runs"
    BATTER_LEFT_HITS = "Batter_Left_Hits"
    BATTER_LEFT_DOUBLES = "Batter_Left_Doubles"
    BATTER_LEFT_TRIPLES = "Batter_Left_Triples"
    BATTER_LEFT_HOMERUNS = "Batter_Left_HomeRuns"
    BATTER_LEFT_RBIS = "Batter_Left_RBIs"
    BATTER_LEFT_WALKS = "Batter_Left_Walks"
    BATTER_LEFT_STRIKEOUTS = "Batter_Left_Strikeouts"
    BATTER_LEFT_STOLENBASES = "Batter_Left_StolenBases"
    BATTER_LEFT_BATTINGAVG = "Batter_Left_BattingAVG"
    BATTER_LEFT_ONBASEPERCENT = "Batter_Left_OnBasePercent"
    
    #--Batters At Vs Right--
    BATTER_RIGHT_GAMES = "Batter_Right_Games"
    BATTER_RIGHT_ATBATS = "Batter_Right_AtBats" 
    BATTER_RIGHT_RUNS = "Batter_Right_Runs"
    BATTER_RIGHT_HITS = "Batter_Right_Hits"
    BATTER_RIGHT_DOUBLES = "Batter_Right_Doubles"
    BATTER_RIGHT_TRIPLES = "Batter_Right_Triples"
    BATTER_RIGHT_HOMERUNS = "Batter_Right_HomeRuns"
    BATTER_RIGHT_RBIS = "Batter_Right_RBIs"
    BATTER_RIGHT_WALKS = "Batter_Right_Walks"
    BATTER_RIGHT_STRIKEOUTS = "Batter_Right_Strikeouts"
    BATTER_RIGHT_STOLENBASES = "Batter_Right_StolenBases"
    BATTER_RIGHT_BATTINGAVG = "Batter_Right_BattingAVG"
    BATTER_RIGHT_ONBASEPERCENT = "Batter_Right_OnBasePercent"
    
    #--Batters Calculations--
    
    #--Batters Total Averages--
    
    
    
    #--Team Total Stats--
    TEAM_TOTAL_GAMES = "Team_Total_Games"
    TEAM_TOTAL_ATBATS = "Team_Total_AtBats"
    TEAM_TOTAL_RUNS = "Team_Total_Runs"
    TEAM_TOTAL_HITS = "Team_Total_Hits"
    TEAM_TOTAL_DOUBLES = "Team_Total_Doubles"
    TEAM_TOTAL_TRIPLES = "Team_Total_Triples"
    TEAM_TOTAL_HOMERUNS = "Team_Total_HomeRuns"
    TEAM_TOTAL_RBIS = "Team_Total_RBIs"
    TEAM_TOTAL_WALKS = "Team_Total_Walks"
    TEAM_TOTAL_STRIKEOUTS = "Team_Total_Strikeouts"
    TEAM_TOTAL_STOLENBASES = "Team_Total_StolenBases"
    TEAM_TOTAL_BATTINGAVG = "Team_Total_BattingAVG"
    TEAM_TOTAL_ONBASEPERCENT = "Team_Total_OnBasePercent"
    
    #--Team Home Stats--
    TEAM_HOME_GAMES = "Team_Home_Games"
    TEAM_HOME_ATBATS = "Team_Home_AtBats"
    TEAM_HOME_RUNS = "Team_Home_Runs"
    TEAM_HOME_HITS = "Team_Home_Hits"
    TEAM_HOME_DOUBLES = "Team_Home_Doubles"
    TEAM_HOME_TRIPLES = "Team_Home_Triples"
    TEAM_HOME_HOMERUNS = "Team_Home_HomeRuns"
    TEAM_HOME_RBIS = "Team_Home_RBIs"
    TEAM_HOME_WALKS = "Team_Home_Walks"
    TEAM_HOME_STRIKEOUTS = "Team_Home_Strikeouts"
    TEAM_HOME_STOLENBASES = "Team_Home_StolenBases"
    TEAM_HOME_BATTINGAVG = "Team_Home_BattingAVG"
    TEAM_HOME_ONBASEPERCENT = "Team_Home_OnBasePercent"
    
    #--Team Away Stats--
    TEAM_AWAY_GAMES = "Team_Away_Games"
    TEAM_AWAY_ATBATS = "Team_Away_AtBats"
    TEAM_AWAY_RUNS = "Team_Away_Runs"
    TEAM_AWAY_HITS = "Team_Away_Hits"
    TEAM_AWAY_DOUBLES = "Team_Away_Doubles"
    TEAM_AWAY_TRIPLES = "Team_Away_Triples"
    TEAM_AWAY_HOMERUNS = "Team_Away_HomeRuns"
    TEAM_AWAY_RBIS = "Team_Away_RBIs"
    TEAM_AWAY_WALKS = "Team_Away_Walks"
    TEAM_AWAY_STRIKEOUTS = "Team_Away_Strikeouts"
    TEAM_AWAY_STOLENBASES = "Team_Away_StolenBases"
    TEAM_AWAY_BATTINGAVG = "Team_Away_BattingAVG"
    TEAM_AWAY_ONBASEPERCENT = "Team_Away_OnBasePercent"
    
    #--Team Day Stats--
    TEAM_DAY_GAMES = "Team_Day_Games"
    TEAM_DAY_ATBATS = "Team_Day_AtBats"
    TEAM_DAY_RUNS = "Team_Day_Runs"
    TEAM_DAY_HITS = "Team_Day_Hits"
    TEAM_DAY_DOUBLES = "Team_Day_Doubles"
    TEAM_DAY_TRIPLES = "Team_Day_Triples"
    TEAM_DAY_HOMERUNS = "Team_Day_HomeRuns"
    TEAM_DAY_RBIS = "Team_Day_RBIs"
    TEAM_DAY_WALKS = "Team_Day_Walks"
    TEAM_DAY_STRIKEOUTS = "Team_Day_Strikeouts"
    TEAM_DAY_STOLENBASES = "Team_Day_StolenBases"
    TEAM_DAY_BATTINGAVG = "Team_Day_BattingAVG"
    TEAM_DAY_ONBASEPERCENT = "Team_Day_OnBasePercent"
    
    #--Team Night Stats--
    TEAM_NIGHT_GAMES = "Team_Night_Games"
    TEAM_NIGHT_ATBATS = "Team_Night_AtBats"
    TEAM_NIGHT_RUNS = "Team_Night_Runs"
    TEAM_NIGHT_HITS = "Team_Night_Hits"
    TEAM_NIGHT_DOUBLES = "Team_Night_Doubles"
    TEAM_NIGHT_TRIPLES = "Team_Night_Triples"
    TEAM_NIGHT_HOMERUNS = "Team_Night_HomeRuns"
    TEAM_NIGHT_RBIS = "Team_Night_RBIs"
    TEAM_NIGHT_WALKS = "Team_Night_Walks"
    TEAM_NIGHT_STRIKEOUTS = "Team_Night_Strikeouts"
    TEAM_NIGHT_STOLENBASES = "Team_Night_StolenBases"
    TEAM_NIGHT_BATTINGAVG = "Team_Night_BattingAVG"
    TEAM_NIGHT_ONBASEPERCENT = "Team_Night_OnBasePercent"
    
    #--Team 1st Innings Stats--
    TEAM_1STINNING_GAMES = "Team_1stInning_Games"
    TEAM_1STINNING_ATBATS = "Team_1stInning_AtBats"
    TEAM_1STINNING_RUNS = "Team_1stInning_Runs"
    TEAM_1STINNING_HITS = "Team_1stInning_Hits"
    TEAM_1STINNING_DOUBLES = "Team_1stInning_Doubles"
    TEAM_1STINNING_TRIPLES = "Team_1stInning_Triples"
    TEAM_1STINNING_HOMERUNS = "Team_1stInning_HomeRuns"
    TEAM_1STINNING_RBIS = "Team_1stInning_RBIs"
    TEAM_1STINNING_WALKS = "Team_1stInning_Walks"
    TEAM_1STINNING_STRIKEOUTS = "Team_1stInning_Strikeouts"
    TEAM_1STINNING_STOLENBASES = "Team_1stInning_StolenBases"
    TEAM_1STINNING_BATTINGAVG = "Team_1stInning_BattingAVG"
    TEAM_1STINNING_ONBASEPERCENT = "Team_1stInning_OnBasePercent"
    
    #--Team Stat Calculations--
    
    #--Team Total At Bat Percentages
    TEAM_ATBAT_STRIKEOUTPERC = "Team_AtBat_StrikeoutPerc"
    TEAM_ATBAT_HITPERC = "Team_AtBat_HitPerc"
    
    #--Team Home At Bat Percentages
    TEAM_ATBATHOME_STRIKEOUTPERC = "Team_AtBatHome_StrikeoutPerc"
    TEAM_ATBATHOME_HITPERC = "Team_AtBatHome_HitPerc"
    
    #--Team Away At Bat Percentages
    TEAM_ATBATAWAY_STRIKEOUTPERC = "Team_AtBatAway_StrikeoutPerc"
    TEAM_ATBATAWAY_HITPERC = "Team_AtBatAway_HitPerc"
    
    #--Team Day At Bat Percentages
    TEAM_ATBATDAY_STRIKEOUTPERC = "Team_AtBatDay_StrikeoutPerc"
    TEAM_ATBATDAY_HITPERC = "Team_AtBatDay_HitPerc"
    
    #--Team Night At Bat Percentages
    TEAM_ATBATNIGHT_STRIKEOUTPERC = "Team_AtBatNight_StrikeoutPerc"
    TEAM_ATBATNIGHT_HITPERC = "Team_AtBatNight_HitPerc"
    
    #--Team Total Averages--
    TEAM_PERGAME_AVERAGE_STRIKEOUTS = "Team_PerGame_Average_Strikeouts"
    TEAM_PERGAME_AVERAGE_HITS = "Team_PerGame_Average_Hits"
    TEAM_PERGAME_AVERAGE_RUNS = "Team_PerGame_Average_Runs"
    
    #--Team Home Averages--
    TEAM_PERGAMEHOME_AVERAGE_STRIKEOUTS = "Team_PerGameHome_Average_Strikeouts"
    TEAM_PERGAMEHOME_AVERAGE_HITS = "Team_PerGameHome_Average_Hits"
    TEAM_PERGAMEHOME_AVERAGE_RUNS = "Team_PerGameHome_Average_Runs"
    
    #--Team Away Averages--
    TEAM_PERGAMEAWAY_AVERAGE_STRIKEOUTS = "Team_PerGameAway_Average_Strikeouts"
    TEAM_PERGAMEAWAY_AVERAGE_HITS = "Team_PerGameAway_Average_Hits"
    TEAM_PERGAMEAWAY_AVERAGE_RUNS = "Team_PerGameAway_Average_Runs"
    
    #--Team Day Averages--
    TEAM_PERGAMEDAY_AVERAGE_STRIKEOUTS = "Team_PerGameDay_Average_Strikeouts"
    TEAM_PERGAMEDAY_AVERAGE_HITS = "Team_PerGameDay_Average_Hits"
    TEAM_PERGAMEDAY_AVERAGE_RUNS = "Team_PerGameDay_Average_Runs"
    
    #--Team Night Averages--
    TEAM_PERGAMENIGHT_AVERAGE_STRIKEOUTS = "Team_PerGameNight_Average_Strikeouts"
    TEAM_PERGAMENIGHT_AVERAGE_HITS = "Team_PerGameNight_Average_Hits"
    TEAM_PERGAMENIGHT_AVERAGE_RUNS = "Team_PerGameNight_Average_Runs"
    
    
    
    #--League Total Averages--
    LEAGUE_PERGAME_AVERAGE_STRIKEOUTS = "League_PerGame_Average_Strikeouts"
    LEAGUE_PERGAME_AVERAGE_HITS = "League_PerGame_Average_Hits"
    LEAGUE_PERGAME_AVERAGE_RUNS = "League_PerGame_Average_Runs"
    
    #--League Home Averages--
    LEAGUE_PERGAMEHOME_AVERAGE_STRIKEOUTS = "League_PerGameHome_Average_Strikeouts"
    LEAGUE_PERGAMEHOME_AVERAGE_HITS = "League_PerGameHome_Average_Hits"
    LEAGUE_PERGAMEHOME_AVERAGE_RUNS = "League_PerGameHome_Average_Runs"
    
    #--League Away Averages--
    LEAGUE_PERGAMEAWAY_AVERAGE_STRIKEOUTS = "League_PerGameAway_Average_Strikeouts"
    LEAGUE_PERGAMEAWAY_AVERAGE_HITS = "League_PerGameAway_Average_Hits"
    LEAGUE_PERGAMEAWAY_AVERAGE_RUNS = "League_PerGameAway_Average_Runs"
    
    #--League Day Averages--
    LEAGUE_PERGAMEDAY_AVERAGE_STRIKEOUTS = "League_PerGameDay_Average_Strikeouts"
    LEAGUE_PERGAMEDAY_AVERAGE_HITS = "League_PerGameDay_Average_Hits"
    LEAGUE_PERGAMEDAY_AVERAGE_RUNS = "League_PerGameDay_Average_Runs"
    
    #--League Night Averages--
    LEAGUE_PERGAMENIGHT_AVERAGE_STRIKEOUTS = "League_PerGameNight_Average_Strikeouts"
    LEAGUE_PERGAMENIGHT_AVERAGE_HITS = "League_PerGameNight_Average_Hits"
    LEAGUE_PERGAMENIGHT_AVERAGE_RUNS = "League_PerGameNight_Average_Runs"
    
    
    # If user prompted the "Pitcher" category
    if category == "Pitcher":
        
        # Counter used to iterate through userChoice list
        pitcherStat_Count = 0
        
        # For choice in user choices iterate throught this loop and add stats to statsToReturn list
        for stat in userChoices:
            connection = create_connection("mlb_stats")
            # Pitcher Attributes
            #________________________________________________________________
            if userChoices[pitcherStat_Count] == PITCHER_ARM:
                
                pitcherArm = get_statData(connection, playerName,"pitcher_total_stats", "Arm")
                
                statsToReturn.append(pitcherArm)
            
            # Pitcher Total Stats
            #________________________________________________________________
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_GAMES:
                
                pitcher_total_games = get_statData(connection, playerName,"pitcher_total_stats", "Games_Played")
                
                statsToReturn.append(pitcher_total_games)
            
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_INNINGSPITCHED:
                
                
                
                pitcher_total_inningsPitched = float(get_statData(connection, playerName,"pitcher_total_stats", "Innings_Pitched"))
                
                
                
                statsToReturn.append(pitcher_total_inningsPitched)
                
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_WINS:

                pitcher_total_wins = get_statData(connection, playerName,"pitcher_total_stats", "Wins")
  
                statsToReturn.append(pitcher_total_wins)
                
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_LOSSES:
                
                
                
                pitcher_total_losses = get_statData(connection, playerName,"pitcher_total_stats", "Losses")
                
                
                
                statsToReturn.append(pitcher_total_losses)
                
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_ERA:
                
                
                
                pitcher_total_ERA = get_statData(connection, playerName,"pitcher_total_stats", "ERA")
                
                
                
                statsToReturn.append(pitcher_total_ERA)
               
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_WHIP:     
            
                
                
                pitcher_total_WHIP = get_statData(connection, playerName,"pitcher_total_stats", "WHIP")
                
                
                
                statsToReturn.append(pitcher_total_WHIP)
                           
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_WALKS:     
            
                
                
                pitcher_total_walks = get_statData(connection, playerName,"pitcher_total_stats", "Walks")
                
                
                
                statsToReturn.append(pitcher_total_walks)
                          
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_STRIKEOUTS:     
            
            
                pitcher_total_strikeouts = get_statData(connection, playerName,"pitcher_total_stats", "Strikeouts")

                statsToReturn.append(pitcher_total_strikeouts)
                
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_HITS:
                
                pitcher_total_Hits = get_statData(connection,playerName, "pitcher_total_stats", "Hits")
                
                statsToReturn.append(pitcher_total_Hits)
                
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_RUNS:
                
                pitcher_total_Runs = get_statData(connection,playerName, "pitcher_total_stats", "Runs")
                
                statsToReturn.append(pitcher_total_Runs)
                           
            if userChoices[pitcherStat_Count] == PITCHER_TOTAL_HOMERUNS:     
            
                
                
                pitcher_total_homeRuns = get_statData(connection, playerName,"pitcher_total_stats", "HomeRuns")
                
                
                
                statsToReturn.append(pitcher_total_homeRuns)
 

            # Pitcher Home Stats
            #________________________________________________________________
            if userChoices[pitcherStat_Count] == PITCHER_HOME_GAMES:
 
                pitcher_home_games = int(get_statData(connection, playerName,"pitcher_home_stats", "Games_Played"))

                statsToReturn.append(pitcher_home_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_INNINGSPITCHED:
                
                pitcher_home_inningsPitched = int(get_statData(connection, playerName,"pitcher_home_stats", "Innings_Pitched"))

                statsToReturn.append(pitcher_home_inningsPitched)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_WINS:
                
                pitcher_home_wins = int(get_statData(connection, playerName,"pitcher_home_stats", "Wins"))

                statsToReturn.append(pitcher_home_wins)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_LOSSES:
                
                pitcher_home_losses = int(get_statData(connection, playerName,"pitcher_home_stats", "Losses"))

                statsToReturn.append(pitcher_home_losses)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_ERA:
                
                pitcher_home_era = float(get_statData(connection, playerName,"pitcher_home_stats", "ERA"))

                statsToReturn.append(pitcher_home_era)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_WHIP:
                
                pitcher_home_whip = float(get_statData(connection, playerName,"pitcher_home_stats", "WHIP"))

                statsToReturn.append(pitcher_home_whip)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_STRIKEOUTS:
                
                pitcher_home_strikeouts = int(get_statData(connection, playerName,"pitcher_home_stats", "Strikeouts"))

                statsToReturn.append(pitcher_home_strikeouts)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_WALKS:
                
                pitcher_home_walks = int(get_statData(connection, playerName,"pitcher_home_stats", "Walks"))

                statsToReturn.append(pitcher_home_walks)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_HITS:
                
                pitcher_home_Hits = get_statData(connection,playerName, "pitcher_home_stats", "Hits")
                
                statsToReturn.append(pitcher_home_Hits)
                
            if userChoices[pitcherStat_Count] == PITCHER_HOME_RUNS:
                
                
                pitcher_home_Runs = get_statData(connection,playerName, "pitcher_home_stats", "Runs")
                
                statsToReturn.append(pitcher_home_Runs)
                              
            if userChoices[pitcherStat_Count] == PITCHER_HOME_HOMERUNS:
                
                pitcher_home_homeRuns = int(get_statData(connection, playerName,"pitcher_home_stats", "HomeRuns"))

                statsToReturn.append(pitcher_home_homeRuns)
        
        
            # Pitcher Away Stats
            #________________________________________________________________
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_GAMES:
                
                try:
                    pitcher_away_games = int(get_statData(connection, playerName,"pitcher_away_stats", "Games_Played"))

                    statsToReturn.append(pitcher_away_games)
                    
                except TypeError as e:
                    
                    statsToReturn.append(1)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_INNINGSPITCHED:
                try:
                    pitcher_away_games = float(get_statData(connection, playerName,"pitcher_away_stats", "Innings_Pitched"))

                    statsToReturn.append(pitcher_away_games)
                    
                except TypeError as e:
                    
                    statsToReturn.append(1)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_WINS:
 
                pitcher_away_games = int(get_statData(connection, playerName,"pitcher_away_stats", "Wins"))

                statsToReturn.append(pitcher_away_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_LOSSES:
 
                pitcher_away_games = int(get_statData(connection, playerName,"pitcher_away_stats", "Losses"))

                statsToReturn.append(pitcher_away_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_ERA:
 
                pitcher_away_games = float(get_statData(connection, playerName,"pitcher_away_stats", "ERA"))

                statsToReturn.append(pitcher_away_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_WHIP:
 
                pitcher_away_games = float(get_statData(connection, playerName,"pitcher_away_stats", "WHIP"))

                statsToReturn.append(pitcher_away_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_STRIKEOUTS:
 
                try:
                    pitcher_away_games = int(get_statData(connection, playerName,"pitcher_away_stats", "Strikeouts"))

                    statsToReturn.append(pitcher_away_games)
                    
                except TypeError as e:
                    
                    statsToReturn.append(1)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_WALKS:
 
                pitcher_away_games = int(get_statData(connection, playerName,"pitcher_away_stats", "Walks"))

                statsToReturn.append(pitcher_away_games)
    
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_HITS:
                
                pitcher_away_Hits = get_statData(connection,playerName, "pitcher_away_stats", "Hits")
                
                statsToReturn.append(pitcher_away_Hits)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_RUNS:
                
                pitcher_away_Runs = get_statData(connection,playerName, "pitcher_away_stats", "Runs")
                
                statsToReturn.append(pitcher_away_Runs)
                
            if userChoices[pitcherStat_Count] == PITCHER_AWAY_HOMERUNS:
 
                pitcher_away_games = int(get_statData(connection, playerName,"pitcher_away_stats", "HomeRuns"))

                statsToReturn.append(pitcher_away_games)
            
            
            # Pitcher Day Stats
            #________________________________________________________________
            if userChoices[pitcherStat_Count] == PITCHER_DAY_GAMES:
 
                pitcher_day_games = int(get_statData(connection, playerName,"pitcher_day_stats", "Games_Played"))

                statsToReturn.append(pitcher_day_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_INNINGSPITCHED:
 
                pitcher_day_games = float(get_statData(connection, playerName,"pitcher_day_stats", "Innings_Pitched"))

                statsToReturn.append(pitcher_day_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_WINS:
 
                pitcher_day_games = int(get_statData(connection, playerName,"pitcher_day_stats", "Wins"))

                statsToReturn.append(pitcher_day_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_LOSSES:
 
                pitcher_day_games = int(get_statData(connection, playerName,"pitcher_day_stats", "Losses"))

                statsToReturn.append(pitcher_day_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_ERA:
 
                pitcher_day_games = float(get_statData(connection, playerName,"pitcher_day_stats", "ERA"))

                statsToReturn.append(pitcher_day_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_WHIP:
 
                pitcher_day_games = float(get_statData(connection, playerName,"pitcher_day_stats", "WHIP"))

                statsToReturn.append(pitcher_day_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_STRIKEOUTS:
 
                pitcher_day_games = int(get_statData(connection, playerName,"pitcher_day_stats", "Strikeouts"))

                statsToReturn.append(pitcher_day_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_WALKS:
 
                pitcher_day_games = int(get_statData(connection, playerName,"pitcher_day_stats", "Walks"))

                statsToReturn.append(pitcher_day_games)
   
            if userChoices[pitcherStat_Count] == PITCHER_DAY_HITS:
                
                pitcher_day_Hits = get_statData(connection,playerName, "pitcher_day_stats", "Hits")
                
                statsToReturn.append(pitcher_day_Hits)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_RUNS:
                
                pitcher_day_Runs = get_statData(connection,playerName, "pitcher_day_stats", "Runs")
                
                statsToReturn.append(pitcher_day_Runs)
                
            if userChoices[pitcherStat_Count] == PITCHER_DAY_HOMERUNS:
 
                pitcher_day_games = int(get_statData(connection, playerName,"pitcher_day_stats", "HomeRuns"))

                statsToReturn.append(pitcher_day_games)
            
            
            # Pitcher Night Stats
            #________________________________________________________________
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_GAMES:
 
                pitcher_night_games = int(get_statData(connection, playerName,"pitcher_night_stats", "Games_Played"))

                statsToReturn.append(pitcher_night_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_INNINGSPITCHED:
 
                pitcher_night_games = float(get_statData(connection, playerName,"pitcher_night_stats", "Innings_Pitched"))

                statsToReturn.append(pitcher_night_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_WINS:
 
                pitcher_night_games = int(get_statData(connection, playerName,"pitcher_night_stats", "Wins"))

                statsToReturn.append(pitcher_night_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_LOSSES:
 
                pitcher_night_games = int(get_statData(connection, playerName,"pitcher_night_stats", "Losses"))

                statsToReturn.append(pitcher_night_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_ERA:
 
                pitcher_night_games = float(get_statData(connection, playerName,"pitcher_night_stats", "ERA"))

                statsToReturn.append(pitcher_night_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_WHIP:
 
                pitcher_night_games = float(get_statData(connection, playerName,"pitcher_night_stats", "WHIP"))

                statsToReturn.append(pitcher_night_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_STRIKEOUTS:
 
                pitcher_night_games = int(get_statData(connection, playerName,"pitcher_night_stats", "Strikeouts"))

                statsToReturn.append(pitcher_night_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_WALKS:
 
                pitcher_night_games = int(get_statData(connection, playerName,"pitcher_night_stats", "Walks"))

                statsToReturn.append(pitcher_night_games)
  
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_HITS:
                
                pitcher_night_Hits = get_statData(connection,playerName, "pitcher_night_stats", "Hits")
                
                statsToReturn.append(pitcher_night_Hits)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_RUNS:
                
                pitcher_night_Runs = get_statData(connection,playerName, "pitcher_night_stats", "Runs")
                
                statsToReturn.append(pitcher_night_Runs)
                
            if userChoices[pitcherStat_Count] == PITCHER_NIGHT_HOMERUNS:
 
                pitcher_night_games = int(get_statData(connection, playerName,"pitcher_night_stats", "HomeRuns"))

                statsToReturn.append(pitcher_night_games) 
            
            # Pitcher Vs. Left Stats
            #________________________________________________________________
            if userChoices[pitcherStat_Count] == PITCHER_VSLEFT_HITS:
 
                pitcher_vsleft_games = int(get_statData(connection, playerName,"pitcher_vsleft_stats", "Hits"))

                statsToReturn.append(pitcher_vsleft_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSLEFT_HOMERUNS:
 
                pitcher_vsleft_games = int(get_statData(connection, playerName,"pitcher_vsleft_stats", "HomeRuns"))

                statsToReturn.append(pitcher_vsleft_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSLEFT_WALKS:
 
                pitcher_vsleft_games = int(get_statData(connection, playerName,"pitcher_vsleft_stats", "Walks"))

                statsToReturn.append(pitcher_vsleft_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSLEFT_STRIKEOUTS:
 
                pitcher_vsleft_games = int(get_statData(connection, playerName,"pitcher_vsleft_stats", "Strikeouts"))

                statsToReturn.append(pitcher_vsleft_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSLEFT_WHIP:
 
                pitcher_vsleft_games = float(get_statData(connection, playerName,"pitcher_vsleft_stats", "WHIP"))

                statsToReturn.append(pitcher_vsleft_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSLEFT_BATTINGAVG:
 
                pitcher_vsleft_games = float(get_statData(connection, playerName,"pitcher_vsleft_stats", "Batting_AVG"))

                statsToReturn.append(pitcher_vsleft_games)
                           
            # Pitcher Vs. right Stats
            #________________________________________________________________
            if userChoices[pitcherStat_Count] == PITCHER_VSRIGHT_HITS:
 
                pitcher_vsright_games = int(get_statData(connection, playerName,"pitcher_vsright_stats", "Hits"))

                statsToReturn.append(pitcher_vsright_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSRIGHT_HOMERUNS:
 
                pitcher_vsright_games = int(get_statData(connection, playerName,"pitcher_vsright_stats", "HomeRuns"))

                statsToReturn.append(pitcher_vsright_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSRIGHT_WALKS:
 
                pitcher_vsright_games = int(get_statData(connection, playerName,"pitcher_vsright_stats", "Walks"))

                statsToReturn.append(pitcher_vsright_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSRIGHT_STRIKEOUTS:
 
                pitcher_vsright_games = int(get_statData(connection, playerName,"pitcher_vsright_stats", "Strikeouts"))

                statsToReturn.append(pitcher_vsright_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSRIGHT_WHIP:
 
                pitcher_vsright_games = float(get_statData(connection, playerName,"pitcher_vsright_stats", "WHIP"))

                statsToReturn.append(pitcher_vsright_games)
                
            if userChoices[pitcherStat_Count] == PITCHER_VSRIGHT_BATTINGAVG:
 
                pitcher_vsright_games = float(get_statData(connection, playerName,"pitcher_vsright_stats", "Batting_AVG"))

                statsToReturn.append(pitcher_vsright_games)
             
            # Pitcher Total Calculations
            #________________________________________________________________ 
            if userChoices[pitcherStat_Count] == PITCHER_CALC_K9:
                
                total_strikeouts = get_statData(connection, playerName, "pitcher_total_stats", "Strikeouts")
                total_inningsPitched = get_statData(connection, playerName, "pitcher_total_stats", "Innings_Pitched")
                
                k9 = (total_strikeouts/total_inningsPitched)*9
                
                statsToReturn.append(round(k9,2))
                
            if userChoices[pitcherStat_Count] == PITCHER_CALC_INNINGSPERGAME:
                
                
                total_inningsPitched = get_statData(connection, playerName, "pitcher_total_stats", "Innings_Pitched")
                total_Games = get_statData(connection, playerName, "pitcher_total_stats", "Games_Played")
                
                inningsPerGame = total_inningsPitched/total_Games
                
                statsToReturn.append(round(inningsPerGame,2))
                
            # Pitcher Home Calculations
            #________________________________________________________________ 
            if userChoices[pitcherStat_Count] == PITCHER_CALCHOME_K9:
                
                total_strikeouts = get_statData(connection, playerName, "pitcher_home_stats", "Strikeouts")
                total_inningsPitched = get_statData(connection, playerName, "pitcher_home_stats", "Innings_Pitched")
                
                k9 = (total_strikeouts/total_inningsPitched)*9
                
                statsToReturn.append(round(k9,2))
                
            if userChoices[pitcherStat_Count] == PITCHER_CALCHOME_INNINGSPERGAME:
                
                
                total_inningsPitched = get_statData(connection, playerName, "pitcher_home_stats", "Innings_Pitched")
                total_Games = get_statData(connection, playerName, "pitcher_home_stats", "Games_Played")
                
                inningsPerGame = total_inningsPitched/total_Games
                
                statsToReturn.append(round(inningsPerGame,2))
                
            # Pitcher Away Calculations
            #________________________________________________________________ 
            if userChoices[pitcherStat_Count] == PITCHER_CALCAWAY_K9:
                
                total_strikeouts = get_statData(connection, playerName, "pitcher_away_stats", "Strikeouts")
                total_inningsPitched = get_statData(connection, playerName, "pitcher_away_stats", "Innings_Pitched")
                
                k9 = (total_strikeouts/total_inningsPitched)*9
                
                statsToReturn.append(round(k9,2))
                
            if userChoices[pitcherStat_Count] == PITCHER_CALCAWAY_INNINGSPERGAME:
                
                
                total_inningsPitched = get_statData(connection, playerName, "pitcher_away_stats", "Innings_Pitched")
                total_Games = get_statData(connection, playerName, "pitcher_away_stats", "Games_Played")
                
                inningsPerGame = total_inningsPitched/total_Games
                
                statsToReturn.append(round(inningsPerGame,2))
                
            # Pitcher Away Calculations
            #________________________________________________________________ 
            if userChoices[pitcherStat_Count] == PITCHER_CALCDAY_K9:
                
                total_strikeouts = get_statData(connection, playerName, "pitcher_day_stats", "Strikeouts")
                total_inningsPitched = get_statData(connection, playerName, "pitcher_day_stats", "Innings_Pitched")
                
                k9 = (total_strikeouts/total_inningsPitched)*9
                
                statsToReturn.append(round(k9,2))
                
            if userChoices[pitcherStat_Count] == PITCHER_CALCDAY_INNINGSPERGAME:
                
                
                total_inningsPitched = get_statData(connection, playerName, "pitcher_day_stats", "Innings_Pitched")
                total_Games = get_statData(connection, playerName, "pitcher_day_stats", "Games_Played")
                
                inningsPerGame = total_inningsPitched/total_Games
                
                statsToReturn.append(round(inningsPerGame,2))
                
            # Pitcher Away Calculations
            #________________________________________________________________ 
            if userChoices[pitcherStat_Count] == PITCHER_CALCNIGHT_K9:
                
                total_strikeouts = get_statData(connection, playerName, "pitcher_night_stats", "Strikeouts")
                total_inningsPitched = get_statData(connection, playerName, "pitcher_night_stats", "Innings_Pitched")
                
                k9 = (total_strikeouts/total_inningsPitched)*9
                
                statsToReturn.append(round(k9,2))
                
            if userChoices[pitcherStat_Count] == PITCHER_CALCNIGHT_INNINGSPERGAME:
                
                
                total_inningsPitched = get_statData(connection, playerName, "pitcher_night_stats", "Innings_Pitched")
                total_Games = get_statData(connection, playerName, "pitcher_night_stats", "Games_Played")
                
                inningsPerGame = total_inningsPitched/total_Games
                
                statsToReturn.append(round(inningsPerGame,2))
                
            
            # Pitcher Predictions
            #________________________________________________________________   
            if userChoices[pitcherStat_Count] == PITCHER_PREDHOME_STRIKEOUTS:
                
                # Opp Team
                oppTeam_PerGameAway_Strikeouts = getMLBStat(teamName, "Team", TEAM_PERGAMEAWAY_AVERAGE_STRIKEOUTS)
                oppTeam_PerGameAway_Strikeouts = float(oppTeam_PerGameAway_Strikeouts[0])
                
                #League averages
                league_PerGameAway_Average_Strikeouts = getMLBStat("League", "League", LEAGUE_PERGAMEAWAY_AVERAGE_STRIKEOUTS)
                league_PerGameAway_Average_Strikeouts = float(league_PerGameAway_Average_Strikeouts[0])
                
                #Pitcher Home Strikeouts
                pitcher_Home_Strikeouts = getMLBStat(playerName, "Pitcher", PITCHER_HOME_STRIKEOUTS)
                pitcher_Home_Strikeouts = int(pitcher_Home_Strikeouts[0])
                
                #Pitcher Home Innings Pitched
                pitcher_Home_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_HOME_INNINGSPITCHED)
                pitcher_Home_InningsPitched = float(pitcher_Home_InningsPitched[0])
                
                #Pitcher Home Games Played
                pitcher_Home_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_HOME_GAMES)
                pitcher_Home_GamesPlayed = int(pitcher_Home_GamesPlayed[0])
                
                
                
                if game_Time == "Day":
                    
                    # Opp Team
                    oppTeam_PerGameDay_Strikeouts = getMLBStat(teamName, "Team", TEAM_PERGAMEDAY_AVERAGE_STRIKEOUTS)
                    oppTeam_PerGameDay_Strikeouts = float(oppTeam_PerGameDay_Strikeouts[0])
                    
                    #League averages
                    league_PerGameDay_Average_Strikeouts = getMLBStat("League", "League", LEAGUE_PERGAMEDAY_AVERAGE_STRIKEOUTS)
                    league_PerGameDay_Average_Strikeouts = float(league_PerGameDay_Average_Strikeouts[0])
                    
                    #Pitcher Home Strikeouts
                    pitcher_Day_Strikeouts = getMLBStat(playerName, "Pitcher", PITCHER_DAY_STRIKEOUTS)
                    pitcher_Day_Strikeouts = int(pitcher_Day_Strikeouts[0])
                    
                    #Pitcher Home Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_DAY_INNINGSPITCHED)
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                    
                    #Pitcher Home Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_DAY_GAMES)
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
                    oppTeam_PerGameNight_Strikeouts = getMLBStat(teamName, "Team", TEAM_PERGAMENIGHT_AVERAGE_STRIKEOUTS)
                    oppTeam_PerGameNight_Strikeouts = float(oppTeam_PerGameNight_Strikeouts[0])
                    
                    #League averages
                    league_PerGameNight_Average_Strikeouts = getMLBStat("League", "League", LEAGUE_PERGAMENIGHT_AVERAGE_STRIKEOUTS)
                    league_PerGameNight_Average_Strikeouts = float(league_PerGameNight_Average_Strikeouts[0])
                    
                    #Pitcher Home Strikeouts
                    pitcher_Night_Strikeouts = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_STRIKEOUTS)
                    pitcher_Night_Strikeouts = int(pitcher_Night_Strikeouts[0])
                    
                    #Pitcher Home Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_INNINGSPITCHED)
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                    
                    #Pitcher Home Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_GAMES)
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
                oppTeam_PerGameHome_Strikeouts = getMLBStat(teamName, "Team", TEAM_PERGAMEHOME_AVERAGE_STRIKEOUTS)
                oppTeam_PerGameHome_Strikeouts = float(oppTeam_PerGameHome_Strikeouts[0])
                
                #League averages
                league_PerGameHome_Average_Strikeouts = getMLBStat("League", "League", LEAGUE_PERGAMEHOME_AVERAGE_STRIKEOUTS)
                league_PerGameHome_Average_Strikeouts = float(league_PerGameHome_Average_Strikeouts[0])
                
                #Pitcher Home Strikeouts
                pitcher_Away_Strikeouts = getMLBStat(playerName, "Pitcher", PITCHER_AWAY_STRIKEOUTS)
                pitcher_Away_Strikeouts = int(pitcher_Away_Strikeouts[0])
                    
                #Pitcher Home Innings Pitched
                pitcher_Away_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_AWAY_INNINGSPITCHED)
                pitcher_Away_InningsPitched = float(pitcher_Away_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Away_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_AWAY_GAMES)
                pitcher_Away_GamesPlayed = int(pitcher_Away_GamesPlayed[0])
                    
                    
                    
                if game_Time == "Day":
                        
                    # Opp Team
                    oppTeam_PerGameDay_Strikeouts = getMLBStat(teamName, "Team", TEAM_PERGAMEDAY_AVERAGE_STRIKEOUTS)
                    oppTeam_PerGameDay_Strikeouts = float(oppTeam_PerGameDay_Strikeouts[0])
                        
                    #League averages
                    league_PerGameDay_Average_Strikeouts = getMLBStat("League", "League", LEAGUE_PERGAMEDAY_AVERAGE_STRIKEOUTS)
                    league_PerGameDay_Average_Strikeouts = float(league_PerGameDay_Average_Strikeouts[0])
                        
                    #Pitcher Home Strikeouts
                    pitcher_Day_Strikeouts = getMLBStat(playerName, "Pitcher", PITCHER_DAY_STRIKEOUTS)
                    pitcher_Day_Strikeouts = int(pitcher_Day_Strikeouts[0])
                        
                    #Pitcher Home Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_DAY_INNINGSPITCHED)
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Home Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_DAY_GAMES)
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
                    oppTeam_PerGameNight_Strikeouts = getMLBStat(teamName, "Team", TEAM_PERGAMENIGHT_AVERAGE_STRIKEOUTS)
                    oppTeam_PerGameNight_Strikeouts = float(oppTeam_PerGameNight_Strikeouts[0])
                        
                    #League averages
                    league_PerGameNight_Average_Strikeouts = getMLBStat("League", "League", LEAGUE_PERGAMENIGHT_AVERAGE_STRIKEOUTS)
                    league_PerGameNight_Average_Strikeouts = float(league_PerGameNight_Average_Strikeouts[0])
                        
                    #Pitcher Home Strikeouts
                    pitcher_Night_Strikeouts = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_STRIKEOUTS)
                    pitcher_Night_Strikeouts = int(pitcher_Night_Strikeouts[0])
                        
                    #Pitcher Home Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_INNINGSPITCHED)
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                        
                    #Pitcher Home Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_GAMES)
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
                oppTeam_Away_HitsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMEAWAY_AVERAGE_HITS)
                oppTeam_Away_HitsPerGame = float(oppTeam_Away_HitsPerGame[0])
                
                #League Averages
                league_Away_HitsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMEAWAY_AVERAGE_HITS)
                league_Away_HitsPerGame = float(league_Away_HitsPerGame[0])
                
                #Pitcher Home Hits
                pitcher_Home_Hits = getMLBStat(playerName, "Pitcher", PITCHER_HOME_HITS)
                pitcher_Home_Hits = int(pitcher_Home_Hits[0])
                    
                #Pitcher Home Innings Pitched
                pitcher_Home_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_HOME_INNINGSPITCHED)
                pitcher_Home_InningsPitched = float(pitcher_Home_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Home_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_HOME_GAMES)
                pitcher_Home_GamesPlayed = int(pitcher_Home_GamesPlayed[0])
                
                if game_Time == "Day":
                    
                    # Opp Team Day Averages
                    oppTeam_Day_HitsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMEDAY_AVERAGE_HITS)
                    oppTeam_Day_HitsPerGame = float(oppTeam_Day_HitsPerGame[0])
                    
                    #League Day Averages
                    league_Day_HitsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMEDAY_AVERAGE_HITS)
                    league_Day_HitsPerGame = float(league_Day_HitsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Day_Hits = getMLBStat(playerName, "Pitcher", PITCHER_DAY_HITS)
                    pitcher_Day_Hits = int(pitcher_Day_Hits[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_DAY_INNINGSPITCHED)
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_DAY_GAMES)
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
                    oppTeam_Night_HitsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMENIGHT_AVERAGE_HITS)
                    oppTeam_Night_HitsPerGame = float(oppTeam_Night_HitsPerGame[0])
                    
                    #League Day Averages
                    league_Night_HitsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMENIGHT_AVERAGE_HITS)
                    league_Night_HitsPerGame = float(league_Night_HitsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Night_Hits = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_HITS)
                    pitcher_Night_Hits = int(pitcher_Night_Hits[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_INNINGSPITCHED)
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_GAMES)
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
                oppTeam_Home_HitsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMEHOME_AVERAGE_HITS)
                oppTeam_Home_HitsPerGame = float(oppTeam_Home_HitsPerGame[0])
                
                #League Averages
                league_Home_HitsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMEHOME_AVERAGE_HITS)
                league_Home_HitsPerGame = float(league_Home_HitsPerGame[0])
                
                #Pitcher Home Hits
                pitcher_Away_Hits = getMLBStat(playerName, "Pitcher", PITCHER_AWAY_HITS)
                pitcher_Away_Hits = int(pitcher_Away_Hits[0])
                    
                #Pitcher Home Innings Pitched
                pitcher_Away_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_AWAY_INNINGSPITCHED)
                pitcher_Away_InningsPitched = float(pitcher_Away_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Away_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_AWAY_GAMES)
                pitcher_Away_GamesPlayed = int(pitcher_Away_GamesPlayed[0])
                
                if game_Time == "Day":
                    
                    # Opp Team Day Averages
                    oppTeam_Day_HitsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMEDAY_AVERAGE_HITS)
                    oppTeam_Day_HitsPerGame = float(oppTeam_Day_HitsPerGame[0])
                    
                    #League Day Averages
                    league_Day_HitsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMEDAY_AVERAGE_HITS)
                    league_Day_HitsPerGame = float(league_Day_HitsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Day_Hits = getMLBStat(playerName, "Pitcher", PITCHER_DAY_HITS)
                    pitcher_Day_Hits = int(pitcher_Day_Hits[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_DAY_INNINGSPITCHED)
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_DAY_GAMES)
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
                    oppTeam_Night_HitsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMENIGHT_AVERAGE_HITS)
                    oppTeam_Night_HitsPerGame = float(oppTeam_Night_HitsPerGame[0])
                    
                    #League Day Averages
                    league_Night_HitsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMENIGHT_AVERAGE_HITS)
                    league_Night_HitsPerGame = float(league_Night_HitsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Night_Hits = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_HITS)
                    pitcher_Night_Hits = int(pitcher_Night_Hits[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_INNINGSPITCHED)
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_GAMES)
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
                oppTeam_Away_RunsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMEAWAY_AVERAGE_RUNS)
                oppTeam_Away_RunsPerGame = float(oppTeam_Away_RunsPerGame[0])
                
                #League Averages
                league_Away_RunsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMEAWAY_AVERAGE_RUNS)
                league_Away_RunsPerGame = float(league_Away_RunsPerGame[0])
                
                #Pitcher Home Hits
                pitcher_Home_Runs = getMLBStat(playerName, "Pitcher", PITCHER_HOME_RUNS)
                pitcher_Home_Runs = int(pitcher_Home_Runs[0])
                    
                #Pitcher Home Innings Pitched
                pitcher_Home_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_HOME_INNINGSPITCHED)
                pitcher_Home_InningsPitched = float(pitcher_Home_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Home_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_HOME_GAMES)
                pitcher_Home_GamesPlayed = int(pitcher_Home_GamesPlayed[0])
            
                if game_Time == "Day":
                    
                    # Opp Team Day Averages
                    oppTeam_Day_RunsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMEDAY_AVERAGE_RUNS)
                    oppTeam_Day_RunsPerGame = float(oppTeam_Day_RunsPerGame[0])
                    
                    #League Day Averages
                    league_Day_RunsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMEDAY_AVERAGE_RUNS)
                    league_Day_RunsPerGame = float(league_Day_RunsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Day_Runs = getMLBStat(playerName, "Pitcher", PITCHER_DAY_RUNS)
                    pitcher_Day_Runs = int(pitcher_Day_Runs[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_DAY_INNINGSPITCHED)
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_DAY_GAMES)
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
                    oppTeam_Night_RunsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMENIGHT_AVERAGE_RUNS)
                    oppTeam_Night_RunsPerGame = float(oppTeam_Night_RunsPerGame[0])
                    
                    #League Day Averages
                    league_Night_RunsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMENIGHT_AVERAGE_RUNS)
                    league_Night_RunsPerGame = float(league_Night_RunsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Night_Runs = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_RUNS)
                    pitcher_Night_Runs = int(pitcher_Night_Runs[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_INNINGSPITCHED)
                    pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_GAMES)
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
                oppTeam_Home_RunsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMEHOME_AVERAGE_RUNS)
                oppTeam_Home_RunsPerGame = float(oppTeam_Home_RunsPerGame[0])
                
                #League Averages
                league_Home_RunsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMEHOME_AVERAGE_RUNS)
                league_Home_RunsPerGame = float(league_Home_RunsPerGame[0])
                
                #Pitcher Home Hits
                pitcher_Away_Runs = get_statData(connection, playerName, "pitcher_away_stats", "Runs")
                
                    
                #Pitcher Home Innings Pitched
                pitcher_Away_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_AWAY_INNINGSPITCHED)
                pitcher_Away_InningsPitched = float(pitcher_Away_InningsPitched[0])
                    
                #Pitcher Home Games Played
                pitcher_Away_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_AWAY_GAMES)
                pitcher_Away_GamesPlayed = int(pitcher_Away_GamesPlayed[0])
            
                if game_Time == "Day":
                    
                    # Opp Team Day Averages
                    oppTeam_Day_RunsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMEDAY_AVERAGE_RUNS)
                    oppTeam_Day_RunsPerGame = float(oppTeam_Day_RunsPerGame[0])
                    
                    #League Day Averages
                    league_Day_RunsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMEDAY_AVERAGE_RUNS)
                    league_Day_RunsPerGame = float(league_Day_RunsPerGame[0])
                    
                    #Pitcher Day Hits
                    pitcher_Day_Runs = getMLBStat(playerName, "Pitcher", PITCHER_DAY_RUNS)
                    pitcher_Day_Runs = int(pitcher_Day_Runs[0])
                        
                    #Pitcher Day Innings Pitched
                    pitcher_Day_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_DAY_INNINGSPITCHED)
                    pitcher_Day_InningsPitched = float(pitcher_Day_InningsPitched[0])
                        
                    #Pitcher Day Games Played
                    pitcher_Day_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_DAY_GAMES)
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
                        oppTeam_Night_RunsPerGame = getMLBStat(teamName, "Team", TEAM_PERGAMENIGHT_AVERAGE_RUNS)
                        oppTeam_Night_RunsPerGame = float(oppTeam_Night_RunsPerGame[0])
                        
                        #League Day Averages
                        league_Night_RunsPerGame = getMLBStat("League", "League", LEAGUE_PERGAMENIGHT_AVERAGE_RUNS)
                        league_Night_RunsPerGame = float(league_Night_RunsPerGame[0])
                        
                        #Pitcher Day Hits
                        pitcher_Night_Runs = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_RUNS)
                        pitcher_Night_Runs = int(pitcher_Night_Runs[0])
                            
                        #Pitcher Day Innings Pitched
                        pitcher_Night_InningsPitched = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_INNINGSPITCHED)
                        pitcher_Night_InningsPitched = float(pitcher_Night_InningsPitched[0])
                            
                        #Pitcher Day Games Played
                        pitcher_Night_GamesPlayed = getMLBStat(playerName, "Pitcher", PITCHER_NIGHT_GAMES)
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
             
            # Add one to counter  
            pitcherStat_Count +=1
        
        # Close connection at the end of loop    
        close_connection(connection)  
        
        # Return all stats requested     
        return statsToReturn
    
    if category == "Batter":           
        
        batterStat_Count = 0
        
        for stat in userChoices:
            connection = create_connection("mlb_stats")
            
            # Batter Total Stats
            #________________________________________________________________
            if userChoices[batterStat_Count] == BATTER_TOTAL_GAMES:
                
                batter_total_games = int(get_statData(connection, playerName,"batter_total_stats", "Games_Played"))
               
                statsToReturn.append(batter_total_games)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_ATBATS:
                
                batter_total_atbats = int(get_statData(connection, playerName,"batter_total_stats", "AtBats"))
               
                statsToReturn.append(batter_total_atbats)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_RUNS:
                
                batter_total_runs = int(get_statData(connection, playerName,"batter_total_stats", "Runs"))
               
                statsToReturn.append(batter_total_runs)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_HITS:
                
                batter_total_hits = int(get_statData(connection, playerName,"batter_total_stats", "Hits"))
               
                statsToReturn.append(batter_total_hits)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_DOUBLES:
                
                batter_total_doubles = int(get_statData(connection, playerName,"batter_total_stats", "Doubles"))
               
                statsToReturn.append(batter_total_doubles)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_TRIPLES:
                
                batter_total_triples = int(get_statData(connection, playerName,"batter_total_stats", "Triples"))
               
                statsToReturn.append(batter_total_triples)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_HOMERUNS:
                
                batter_total_homeruns = int(get_statData(connection, playerName,"batter_total_stats", "Homeruns"))
               
                statsToReturn.append(batter_total_homeruns)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_RBIS:
                
                batter_total_rbis = int(get_statData(connection, playerName,"batter_total_stats", "RBIs"))
               
                statsToReturn.append(batter_total_rbis)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_WALKS:
                
                batter_total_walks = int(get_statData(connection, playerName,"batter_total_stats", "Walks"))
               
                statsToReturn.append(batter_total_walks)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_STRIKEOUTS:
                
                batter_total_strikeouts = int(get_statData(connection, playerName,"batter_total_stats", "Strikeouts"))
               
                statsToReturn.append(batter_total_strikeouts)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_STOLENBASES:
                
                batter_total_stolenbases = int(get_statData(connection, playerName,"batter_total_stats", "StolenBases"))
               
                statsToReturn.append(batter_total_stolenbases)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_BATTINGAVG:
                
                batter_total_battingAVG = float(get_statData(connection, playerName,"batter_total_stats", "Batting_AVG"))
               
                statsToReturn.append(batter_total_battingAVG)
                
            if userChoices[batterStat_Count] == BATTER_TOTAL_ONBASEPERCENT:
                
                batter_total_onbasePercent = float(get_statData(connection, playerName,"batter_total_stats", "OnBase_Percent"))
               
                statsToReturn.append(batter_total_onbasePercent)
            
            
            # Batter Home Stats
            #________________________________________________________________
            if userChoices[batterStat_Count] == BATTER_HOME_GAMES:
                
                batter_home_games = int(get_statData(connection, playerName,"batter_home_stats", "Games_Played"))
               
                statsToReturn.append(batter_home_games)
                
            if userChoices[batterStat_Count] == BATTER_HOME_ATBATS:
                
                batter_home_atbats = int(get_statData(connection, playerName,"batter_home_stats", "AtBats"))
               
                statsToReturn.append(batter_home_atbats)
                
            if userChoices[batterStat_Count] == BATTER_HOME_RUNS:
                
                batter_home_runs = int(get_statData(connection, playerName,"batter_home_stats", "Runs"))
               
                statsToReturn.append(batter_home_runs)
                
            if userChoices[batterStat_Count] == BATTER_HOME_HITS:
                
                batter_home_hits = int(get_statData(connection, playerName,"batter_home_stats", "Hits"))
               
                statsToReturn.append(batter_home_hits)
                
            if userChoices[batterStat_Count] == BATTER_HOME_DOUBLES:
                
                batter_home_doubles = int(get_statData(connection, playerName,"batter_home_stats", "Doubles"))
               
                statsToReturn.append(batter_home_doubles)
                
            if userChoices[batterStat_Count] == BATTER_HOME_TRIPLES:
                
                batter_home_triples = int(get_statData(connection, playerName,"batter_home_stats", "Triples"))
               
                statsToReturn.append(batter_home_triples)
                
            if userChoices[batterStat_Count] == BATTER_HOME_HOMERUNS:
                
                batter_home_homeruns = int(get_statData(connection, playerName,"batter_home_stats", "Homeruns"))
               
                statsToReturn.append(batter_home_homeruns)
                
            if userChoices[batterStat_Count] == BATTER_HOME_RBIS:
                
                batter_home_rbis = int(get_statData(connection, playerName,"batter_home_stats", "RBIs"))
               
                statsToReturn.append(batter_home_rbis)
                
            if userChoices[batterStat_Count] == BATTER_HOME_WALKS:
                
                batter_home_walks = int(get_statData(connection, playerName,"batter_home_stats", "Walks"))
               
                statsToReturn.append(batter_home_walks)
                
            if userChoices[batterStat_Count] == BATTER_HOME_STRIKEOUTS:
                
                batter_home_strikeouts = int(get_statData(connection, playerName,"batter_home_stats", "Strikeouts"))
               
                statsToReturn.append(batter_home_strikeouts)
                
            if userChoices[batterStat_Count] == BATTER_HOME_STOLENBASES:
                
                batter_home_stolenbases = int(get_statData(connection, playerName,"batter_home_stats", "StolenBases"))
               
                statsToReturn.append(batter_home_stolenbases)
                
            if userChoices[batterStat_Count] == BATTER_HOME_BATTINGAVG:
                
                batter_home_battingAVG = float(get_statData(connection, playerName,"batter_home_stats", "Batting_AVG"))
               
                statsToReturn.append(batter_home_battingAVG)
                
            if userChoices[batterStat_Count] == BATTER_HOME_ONBASEPERCENT:
                
                batter_home_onbasePercent = float(get_statData(connection, playerName,"batter_home_stats", "OnBase_Percent"))
               
                statsToReturn.append(batter_home_onbasePercent)
            
            # Batter Away Stats
            #________________________________________________________________
            if userChoices[batterStat_Count] == BATTER_AWAY_GAMES:
                
                batter_away_games = int(get_statData(connection, playerName,"batter_away_stats", "Games_Played"))
               
                statsToReturn.append(batter_away_games)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_ATBATS:
                
                batter_away_atbats = int(get_statData(connection, playerName,"batter_away_stats", "AtBats"))
               
                statsToReturn.append(batter_away_atbats)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_RUNS:
                
                batter_away_runs = int(get_statData(connection, playerName,"batter_away_stats", "Runs"))
               
                statsToReturn.append(batter_away_runs)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_HITS:
                
                batter_away_hits = int(get_statData(connection, playerName,"batter_away_stats", "Hits"))
               
                statsToReturn.append(batter_away_hits)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_DOUBLES:
                
                batter_away_doubles = int(get_statData(connection, playerName,"batter_away_stats", "Doubles"))
               
                statsToReturn.append(batter_away_doubles)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_TRIPLES:
                
                batter_away_triples = int(get_statData(connection, playerName,"batter_away_stats", "Triples"))
               
                statsToReturn.append(batter_away_triples)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_HOMERUNS:
                
                batter_away_homeruns = int(get_statData(connection, playerName,"batter_away_stats", "Homeruns"))
               
                statsToReturn.append(batter_away_homeruns)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_RBIS:
                
                batter_away_rbis = int(get_statData(connection, playerName,"batter_away_stats", "RBIs"))
               
                statsToReturn.append(batter_away_rbis)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_WALKS:
                
                batter_away_walks = int(get_statData(connection, playerName,"batter_away_stats", "Walks"))
               
                statsToReturn.append(batter_away_walks)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_STRIKEOUTS:
                
                batter_away_strikeouts = int(get_statData(connection, playerName,"batter_away_stats", "Strikeouts"))
               
                statsToReturn.append(batter_away_strikeouts)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_STOLENBASES:
                
                batter_away_stolenbases = int(get_statData(connection, playerName,"batter_away_stats", "StolenBases"))
               
                statsToReturn.append(batter_away_stolenbases)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_BATTINGAVG:
                
                batter_away_battingAVG = float(get_statData(connection, playerName,"batter_away_stats", "Batting_AVG"))
               
                statsToReturn.append(batter_away_battingAVG)
                
            if userChoices[batterStat_Count] == BATTER_AWAY_ONBASEPERCENT:
                
                batter_away_onbasePercent = float(get_statData(connection, playerName,"batter_away_stats", "OnBase_Percent"))
               
                statsToReturn.append(batter_away_onbasePercent)
            
            # Batter Day Stats
            #________________________________________________________________
            if userChoices[batterStat_Count] == BATTER_DAY_GAMES:
                
                batter_day_games = int(get_statData(connection, playerName,"batter_day_stats", "Games_Played"))
               
                statsToReturn.append(batter_day_games)
                
            if userChoices[batterStat_Count] == BATTER_DAY_ATBATS:
                
                batter_day_atbats = int(get_statData(connection, playerName,"batter_day_stats", "AtBats"))
               
                statsToReturn.append(batter_day_atbats)
                
            if userChoices[batterStat_Count] == BATTER_DAY_RUNS:
                
                batter_day_runs = int(get_statData(connection, playerName,"batter_day_stats", "Runs"))
               
                statsToReturn.append(batter_day_runs)
                
            if userChoices[batterStat_Count] == BATTER_DAY_HITS:
                
                batter_day_hits = int(get_statData(connection, playerName,"batter_day_stats", "Hits"))
               
                statsToReturn.append(batter_day_hits)
                
            if userChoices[batterStat_Count] == BATTER_DAY_DOUBLES:
                
                batter_day_doubles = int(get_statData(connection, playerName,"batter_day_stats", "Doubles"))
               
                statsToReturn.append(batter_day_doubles)
                
            if userChoices[batterStat_Count] == BATTER_DAY_TRIPLES:
                
                batter_day_triples = int(get_statData(connection, playerName,"batter_day_stats", "Triples"))
               
                statsToReturn.append(batter_day_triples)
                
            if userChoices[batterStat_Count] == BATTER_DAY_HOMERUNS:
                
                batter_day_homeruns = int(get_statData(connection, playerName,"batter_day_stats", "Homeruns"))
               
                statsToReturn.append(batter_day_homeruns)
                
            if userChoices[batterStat_Count] == BATTER_DAY_RBIS:
                
                batter_day_rbis = int(get_statData(connection, playerName,"batter_day_stats", "RBIs"))
               
                statsToReturn.append(batter_day_rbis)
                
            if userChoices[batterStat_Count] == BATTER_DAY_WALKS:
                
                batter_day_walks = int(get_statData(connection, playerName,"batter_day_stats", "Walks"))
               
                statsToReturn.append(batter_day_walks)
                
            if userChoices[batterStat_Count] == BATTER_DAY_STRIKEOUTS:
                
                batter_day_strikeouts = int(get_statData(connection, playerName,"batter_day_stats", "Strikeouts"))
               
                statsToReturn.append(batter_day_strikeouts)
                
            if userChoices[batterStat_Count] == BATTER_DAY_STOLENBASES:
                
                batter_day_stolenbases = int(get_statData(connection, playerName,"batter_day_stats", "StolenBases"))
               
                statsToReturn.append(batter_day_stolenbases)
                
            if userChoices[batterStat_Count] == BATTER_DAY_BATTINGAVG:
                
                batter_day_battingAVG = float(get_statData(connection, playerName,"batter_day_stats", "Batting_AVG"))
               
                statsToReturn.append(batter_day_battingAVG)
                
            if userChoices[batterStat_Count] == BATTER_DAY_ONBASEPERCENT:
                
                batter_day_onbasePercent = float(get_statData(connection, playerName,"batter_day_stats", "OnBase_Percent"))
               
                statsToReturn.append(batter_day_onbasePercent)
                
            # Batter Night Stats
            #________________________________________________________________
            if userChoices[batterStat_Count] == BATTER_NIGHT_GAMES:
                
                batter_night_games = int(get_statData(connection, playerName,"batter_night_stats", "Games_Played"))
               
                statsToReturn.append(batter_night_games)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_ATBATS:
                
                batter_night_atbats = int(get_statData(connection, playerName,"batter_night_stats", "AtBats"))
               
                statsToReturn.append(batter_night_atbats)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_RUNS:
                
                batter_night_runs = int(get_statData(connection, playerName,"batter_night_stats", "Runs"))
               
                statsToReturn.append(batter_night_runs)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_HITS:
                
                batter_night_hits = int(get_statData(connection, playerName,"batter_night_stats", "Hits"))
               
                statsToReturn.append(batter_night_hits)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_DOUBLES:
                
                batter_night_doubles = int(get_statData(connection, playerName,"batter_night_stats", "Doubles"))
               
                statsToReturn.append(batter_night_doubles)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_TRIPLES:
                
                batter_night_triples = int(get_statData(connection, playerName,"batter_night_stats", "Triples"))
               
                statsToReturn.append(batter_night_triples)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_HOMERUNS:
                
                batter_night_homeruns = int(get_statData(connection, playerName,"batter_night_stats", "Homeruns"))
               
                statsToReturn.append(batter_night_homeruns)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_RBIS:
                
                batter_night_rbis = int(get_statData(connection, playerName,"batter_night_stats", "RBIs"))
               
                statsToReturn.append(batter_night_rbis)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_WALKS:
                
                batter_night_walks = int(get_statData(connection, playerName,"batter_night_stats", "Walks"))
               
                statsToReturn.append(batter_night_walks)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_STRIKEOUTS:
                
                batter_night_strikeouts = int(get_statData(connection, playerName,"batter_night_stats", "Strikeouts"))
               
                statsToReturn.append(batter_night_strikeouts)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_STOLENBASES:
                
                batter_night_stolenbases = int(get_statData(connection, playerName,"batter_night_stats", "StolenBases"))
               
                statsToReturn.append(batter_night_stolenbases)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_BATTINGAVG:
                
                batter_night_battingAVG = float(get_statData(connection, playerName,"batter_night_stats", "Batting_AVG"))
               
                statsToReturn.append(batter_night_battingAVG)
                
            if userChoices[batterStat_Count] == BATTER_NIGHT_ONBASEPERCENT:
                
                batter_night_onbasePercent = float(get_statData(connection, playerName,"batter_night_stats", "OnBase_Percent"))
               
                statsToReturn.append(batter_night_onbasePercent)
            
            # Batter Vs Left Stats
            #________________________________________________________________
            
            if userChoices[batterStat_Count] == BATTER_LEFT_GAMES:
                
                batter_left_games = int(get_statData(connection, playerName,"batter_vsleft_stats", "Games_Played"))
               
                statsToReturn.append(batter_left_games)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_ATBATS:
                
                batter_left_atbats = int(get_statData(connection, playerName,"batter_vsleft_stats", "AtBats"))
               
                statsToReturn.append(batter_left_atbats)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_HITS:
                
                batter_left_hits = int(get_statData(connection, playerName,"batter_vsleft_stats", "Hits"))
               
                statsToReturn.append(batter_left_hits)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_DOUBLES:
                
                batter_left_doubles = int(get_statData(connection, playerName,"batter_vsleft_stats", "Doubles"))
               
                statsToReturn.append(batter_left_doubles)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_TRIPLES:
                
                batter_left_triples = int(get_statData(connection, playerName,"batter_vsleft_stats", "Triples"))
               
                statsToReturn.append(batter_left_triples)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_HOMERUNS:
                
                batter_left_homeruns = int(get_statData(connection, playerName,"batter_vsleft_stats", "HomeRuns"))
               
                statsToReturn.append(batter_left_homeruns)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_RBIS:
                
                batter_left_rbis = int(get_statData(connection, playerName,"batter_vsleft_stats", "RBIs"))
               
                statsToReturn.append(batter_left_rbis)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_WALKS:
                
                batter_left_walks = int(get_statData(connection, playerName,"batter_vsleft_stats", "Walks"))
               
                statsToReturn.append(batter_left_walks)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_STRIKEOUTS:
                
                batter_left_strikeouts = int(get_statData(connection, playerName,"batter_vsleft_stats", "Strikeouts"))
               
                statsToReturn.append(batter_left_strikeouts)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_BATTINGAVG:
                
                batter_left_battingAvg = float(get_statData(connection, playerName,"batter_vsleft_stats", "Batting_AVG"))
               
                statsToReturn.append(batter_left_battingAvg)
                
            if userChoices[batterStat_Count] == BATTER_LEFT_ONBASEPERCENT:
                
                batter_left_onbasePercent = float(get_statData(connection, playerName,"batter_vsleft_stats", "OnBase_Percent"))
               
                statsToReturn.append(batter_left_onbasePercent)
            
            # Batter Vs Right Stats
            #________________________________________________________________
            
            if userChoices[batterStat_Count] == BATTER_RIGHT_GAMES:
                
                batter_right_games = int(get_statData(connection, playerName,"batter_vsright_stats", "Games_Played"))
               
                statsToReturn.append(batter_right_games)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_ATBATS:
                
                batter_right_atbats = int(get_statData(connection, playerName,"batter_vsright_stats", "AtBats"))
               
                statsToReturn.append(batter_right_atbats)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_HITS:
                
                batter_right_hits = int(get_statData(connection, playerName,"batter_vsright_stats", "Hits"))
               
                statsToReturn.append(batter_right_hits)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_DOUBLES:
                
                batter_right_doubles = int(get_statData(connection, playerName,"batter_vsright_stats", "Doubles"))
               
                statsToReturn.append(batter_right_doubles)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_TRIPLES:
                
                batter_right_triples = int(get_statData(connection, playerName,"batter_vsright_stats", "Triples"))
               
                statsToReturn.append(batter_right_triples)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_HOMERUNS:
                
                batter_right_homeruns = int(get_statData(connection, playerName,"batter_vsright_stats", "HomeRuns"))
               
                statsToReturn.append(batter_right_homeruns)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_RBIS:
                
                batter_right_rbis = int(get_statData(connection, playerName,"batter_vsright_stats", "RBIs"))
               
                statsToReturn.append(batter_right_rbis)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_WALKS:
                
                batter_right_walks = int(get_statData(connection, playerName,"batter_vsright_stats", "Walks"))
               
                statsToReturn.append(batter_right_walks)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_STRIKEOUTS:
                
                batter_right_strikeouts = int(get_statData(connection, playerName,"batter_vsright_stats", "Strikeouts"))
               
                statsToReturn.append(batter_right_strikeouts)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_BATTINGAVG:
                
                batter_right_battingAvg = float(get_statData(connection, playerName,"batter_vsright_stats", "Batting_AVG"))
               
                statsToReturn.append(batter_right_battingAvg)
                
            if userChoices[batterStat_Count] == BATTER_RIGHT_ONBASEPERCENT:
                
                batter_right_onbasePercent = float(get_statData(connection, playerName,"batter_vsright_stats", "OnBase_Percent"))
               
                statsToReturn.append(batter_right_onbasePercent)    
            
            # Close connection at the end of loop    
            close_connection(connection)  
            batterStat_Count +=1   
             
    if category == "Team":           
        
        teamStat_Count = 0
        
        for stat in userChoices:
            connection = create_connection("mlb_stats")
            # Team Total Stats
            #________________________________________________________________    
            if userChoices[teamStat_Count] == TEAM_TOTAL_GAMES:
                
                team_total_games = int(get_teamStatData(connection, teamName, "team_total_stats", "Games_Played"))
                    
                statsToReturn.append(team_total_games)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_ATBATS:
                
                team_total_atbats = int(get_teamStatData(connection, teamName, "team_total_stats", "AtBats"))
                    
                statsToReturn.append(team_total_atbats)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_RUNS:
                
                team_total_runs = int(get_teamStatData(connection, teamName, "team_total_stats", "Runs"))
                    
                statsToReturn.append(team_total_runs)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_HITS:
                
                team_total_hits = int(get_teamStatData(connection, teamName, "team_total_stats", "Hits"))
                    
                statsToReturn.append(team_total_hits)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_DOUBLES:
                
                team_total_doubles = int(get_teamStatData(connection, teamName, "team_total_stats", "Doubles"))
                    
                statsToReturn.append(team_total_doubles)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_TRIPLES:
                
                team_total_triples = int(get_teamStatData(connection, teamName, "team_total_stats", "Triples"))
                    
                statsToReturn.append(team_total_triples)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_HOMERUNS:
                
                team_total_homeruns = int(get_teamStatData(connection, teamName, "team_total_stats", "HomeRuns"))
                    
                statsToReturn.append(team_total_homeruns)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_RBIS:
                
                team_total_RBIs = int(get_teamStatData(connection, teamName, "team_total_stats", "RBIs"))
                    
                statsToReturn.append(team_total_RBIs)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_WALKS:
                
                team_total_walks = int(get_teamStatData(connection, teamName, "team_total_stats", "Walks"))
                    
                statsToReturn.append(team_total_walks)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_STRIKEOUTS:
                
                team_total_strikeouts = int(get_teamStatData(connection, teamName, "team_total_stats", "Strikeouts"))
                    
                statsToReturn.append(team_total_strikeouts)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_STOLENBASES:
                
                team_total_stolenbases = int(get_teamStatData(connection, teamName, "team_total_stats", "StolenBases"))
                    
                statsToReturn.append(team_total_stolenbases)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_BATTINGAVG:
                
                team_total_battingAVG = float(get_teamStatData(connection, teamName, "team_total_stats", "Batting_AVG"))
                    
                statsToReturn.append(team_total_battingAVG)
                
            if userChoices[teamStat_Count] == TEAM_TOTAL_ONBASEPERCENT:
                
                team_total_onBasePercent = float(get_teamStatData(connection, teamName, "team_total_stats", "OnBase_Percent"))
                    
                statsToReturn.append(team_total_onBasePercent)
            
            # Team Home Stats
            #________________________________________________________________
            if userChoices[teamStat_Count] == TEAM_HOME_GAMES:
                
                team_home_games = int(get_teamStatData(connection, teamName, "team_home_stats", "Games_Played"))
                    
                statsToReturn.append(team_home_games)
                
            if userChoices[teamStat_Count] == TEAM_HOME_ATBATS:
                
                team_home_atbats = int(get_teamStatData(connection, teamName, "team_home_stats", "AtBats"))
                    
                statsToReturn.append(team_home_atbats)
                
            if userChoices[teamStat_Count] == TEAM_HOME_RUNS:
                
                team_home_runs = int(get_teamStatData(connection, teamName, "team_home_stats", "Runs"))
                    
                statsToReturn.append(team_home_runs)
                
            if userChoices[teamStat_Count] == TEAM_HOME_HITS:
                
                team_home_hits = int(get_teamStatData(connection, teamName, "team_home_stats", "Hits"))
                    
                statsToReturn.append(team_home_hits)
                
            if userChoices[teamStat_Count] == TEAM_HOME_DOUBLES:
                
                team_home_doubles = int(get_teamStatData(connection, teamName, "team_home_stats", "Doubles"))
                    
                statsToReturn.append(team_home_doubles)
                
            if userChoices[teamStat_Count] == TEAM_HOME_TRIPLES:
                
                team_home_triples = int(get_teamStatData(connection, teamName, "team_home_stats", "Triples"))
                    
                statsToReturn.append(team_home_triples)
                
            if userChoices[teamStat_Count] == TEAM_HOME_HOMERUNS:
                
                team_home_homeruns = int(get_teamStatData(connection, teamName, "team_home_stats", "HomeRuns"))
                    
                statsToReturn.append(team_home_homeruns)
                
            if userChoices[teamStat_Count] == TEAM_HOME_RBIS:
                
                team_home_RBIs = int(get_teamStatData(connection, teamName, "team_home_stats", "RBIs"))
                    
                statsToReturn.append(team_home_RBIs)
                
            if userChoices[teamStat_Count] == TEAM_HOME_WALKS:
                
                team_home_walks = int(get_teamStatData(connection, teamName, "team_home_stats", "Walks"))
                    
                statsToReturn.append(team_home_walks)
                
            if userChoices[teamStat_Count] == TEAM_HOME_STRIKEOUTS:
                
                team_home_strikeouts = int(get_teamStatData(connection, teamName, "team_home_stats", "Strikeouts"))
                    
                statsToReturn.append(team_home_strikeouts)
                
            if userChoices[teamStat_Count] == TEAM_HOME_STOLENBASES:
                
                team_home_stolenbases = int(get_teamStatData(connection, teamName, "team_home_stats", "StolenBases"))
                    
                statsToReturn.append(team_home_stolenbases)
                
            if userChoices[teamStat_Count] == TEAM_HOME_BATTINGAVG:
                
                team_home_battingAVG = float(get_teamStatData(connection, teamName, "team_home_stats", "Batting_AVG"))
                    
                statsToReturn.append(team_home_battingAVG)
                
            if userChoices[teamStat_Count] == TEAM_HOME_ONBASEPERCENT:
                
                team_home_onBasePercent = float(get_teamStatData(connection, teamName, "team_home_stats", "OnBase_Percent"))
                    
                statsToReturn.append(team_home_onBasePercent)
                
            
            # Team Away Stats
            #________________________________________________________________
            if userChoices[teamStat_Count] == TEAM_AWAY_GAMES:
                
                team_away_games = int(get_teamStatData(connection, teamName, "team_away_stats", "Games_Played"))
                    
                statsToReturn.append(team_away_games)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_ATBATS:
                
                team_away_atbats = int(get_teamStatData(connection, teamName, "team_away_stats", "AtBats"))
                    
                statsToReturn.append(team_away_atbats)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_RUNS:
                
                team_away_runs = int(get_teamStatData(connection, teamName, "team_away_stats", "Runs"))
                    
                statsToReturn.append(team_away_runs)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_HITS:
                
                team_away_hits = int(get_teamStatData(connection, teamName, "team_away_stats", "Hits"))
                    
                statsToReturn.append(team_away_hits)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_DOUBLES:
                
                team_away_doubles = int(get_teamStatData(connection, teamName, "team_away_stats", "Doubles"))
                    
                statsToReturn.append(team_away_doubles)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_TRIPLES:
                
                team_away_triples = int(get_teamStatData(connection, teamName, "team_away_stats", "Triples"))
                    
                statsToReturn.append(team_away_triples)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_HOMERUNS:
                
                team_away_homeruns = int(get_teamStatData(connection, teamName, "team_away_stats", "HomeRuns"))
                    
                statsToReturn.append(team_away_homeruns)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_RBIS:
                
                team_away_RBIs = int(get_teamStatData(connection, teamName, "team_away_stats", "RBIs"))
                    
                statsToReturn.append(team_away_RBIs)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_WALKS:
                
                team_away_walks = int(get_teamStatData(connection, teamName, "team_away_stats", "Walks"))
                    
                statsToReturn.append(team_away_walks)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_STRIKEOUTS:
                
                team_away_strikeouts = int(get_teamStatData(connection, teamName, "team_away_stats", "Strikeouts"))
                    
                statsToReturn.append(team_away_strikeouts)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_STOLENBASES:
                
                team_away_stolenbases = int(get_teamStatData(connection, teamName, "team_away_stats", "StolenBases"))
                    
                statsToReturn.append(team_away_stolenbases)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_BATTINGAVG:
                
                team_away_battingAVG = float(get_teamStatData(connection, teamName, "team_away_stats", "Batting_AVG"))
                    
                statsToReturn.append(team_away_battingAVG)
                
            if userChoices[teamStat_Count] == TEAM_AWAY_ONBASEPERCENT:
                
                team_away_onBasePercent = float(get_teamStatData(connection, teamName, "team_away_stats", "OnBase_Percent"))
                    
                statsToReturn.append(team_away_onBasePercent)
                
                
            # Team Day Stats
            #________________________________________________________________
            if userChoices[teamStat_Count] == TEAM_DAY_GAMES:
                
                team_day_games = int(get_teamStatData(connection, teamName, "team_day_stats", "Games_Played"))
                    
                statsToReturn.append(team_day_games)
                
            if userChoices[teamStat_Count] == TEAM_DAY_ATBATS:
                
                team_day_atbats = int(get_teamStatData(connection, teamName, "team_day_stats", "AtBats"))
                    
                statsToReturn.append(team_day_atbats)
                
            if userChoices[teamStat_Count] == TEAM_DAY_RUNS:
                
                team_day_runs = int(get_teamStatData(connection, teamName, "team_day_stats", "Runs"))
                    
                statsToReturn.append(team_day_runs)
                
            if userChoices[teamStat_Count] == TEAM_DAY_HITS:
                
                team_day_hits = int(get_teamStatData(connection, teamName, "team_day_stats", "Hits"))
                    
                statsToReturn.append(team_day_hits)
                
            if userChoices[teamStat_Count] == TEAM_DAY_DOUBLES:
                
                team_day_doubles = int(get_teamStatData(connection, teamName, "team_day_stats", "Doubles"))
                    
                statsToReturn.append(team_day_doubles)
                
            if userChoices[teamStat_Count] == TEAM_DAY_TRIPLES:
                
                team_day_triples = int(get_teamStatData(connection, teamName, "team_day_stats", "Triples"))
                    
                statsToReturn.append(team_day_triples)
                
            if userChoices[teamStat_Count] == TEAM_DAY_HOMERUNS:
                
                team_day_homeruns = int(get_teamStatData(connection, teamName, "team_day_stats", "HomeRuns"))
                    
                statsToReturn.append(team_day_homeruns)
                
            if userChoices[teamStat_Count] == TEAM_DAY_RBIS:
                
                team_day_RBIs = int(get_teamStatData(connection, teamName, "team_day_stats", "RBIs"))
                    
                statsToReturn.append(team_day_RBIs)
                
            if userChoices[teamStat_Count] == TEAM_DAY_WALKS:
                
                team_day_walks = int(get_teamStatData(connection, teamName, "team_day_stats", "Walks"))
                    
                statsToReturn.append(team_day_walks)
                
            if userChoices[teamStat_Count] == TEAM_DAY_STRIKEOUTS:
                
                team_day_strikeouts = int(get_teamStatData(connection, teamName, "team_day_stats", "Strikeouts"))
                    
                statsToReturn.append(team_day_strikeouts)
                
            if userChoices[teamStat_Count] == TEAM_DAY_STOLENBASES:
                
                team_day_stolenbases = int(get_teamStatData(connection, teamName, "team_day_stats", "StolenBases"))
                    
                statsToReturn.append(team_day_stolenbases)
                
            if userChoices[teamStat_Count] == TEAM_DAY_BATTINGAVG:
                
                team_day_battingAVG = float(get_teamStatData(connection, teamName, "team_day_stats", "Batting_AVG"))
                    
                statsToReturn.append(team_day_battingAVG)
                
            if userChoices[teamStat_Count] == TEAM_DAY_ONBASEPERCENT:
                
                team_day_onBasePercent = float(get_teamStatData(connection, teamName, "team_day_stats", "OnBase_Percent"))
                    
                statsToReturn.append(team_day_onBasePercent)
                
                
            # Team Day Stats
            #________________________________________________________________
            if userChoices[teamStat_Count] == TEAM_DAY_GAMES:
                
                team_day_games = int(get_teamStatData(connection, teamName, "team_day_stats", "Games_Played"))
                    
                statsToReturn.append(team_day_games)
                
            if userChoices[teamStat_Count] == TEAM_DAY_ATBATS:
                
                team_day_atbats = int(get_teamStatData(connection, teamName, "team_day_stats", "AtBats"))
                    
                statsToReturn.append(team_day_atbats)
                
            if userChoices[teamStat_Count] == TEAM_DAY_RUNS:
                
                team_day_runs = int(get_teamStatData(connection, teamName, "team_day_stats", "Runs"))
                    
                statsToReturn.append(team_day_runs)
                
            if userChoices[teamStat_Count] == TEAM_DAY_HITS:
                
                team_day_hits = int(get_teamStatData(connection, teamName, "team_day_stats", "Hits"))
                    
                statsToReturn.append(team_day_hits)
                
            if userChoices[teamStat_Count] == TEAM_DAY_DOUBLES:
                
                team_day_doubles = int(get_teamStatData(connection, teamName, "team_day_stats", "Doubles"))
                    
                statsToReturn.append(team_day_doubles)
                
            if userChoices[teamStat_Count] == TEAM_DAY_TRIPLES:
                
                team_day_triples = int(get_teamStatData(connection, teamName, "team_day_stats", "Triples"))
                    
                statsToReturn.append(team_day_triples)
                
            if userChoices[teamStat_Count] == TEAM_DAY_HOMERUNS:
                
                team_day_homeruns = int(get_teamStatData(connection, teamName, "team_day_stats", "HomeRuns"))
                    
                statsToReturn.append(team_day_homeruns)
                
            if userChoices[teamStat_Count] == TEAM_DAY_RBIS:
                
                team_day_RBIs = int(get_teamStatData(connection, teamName, "team_day_stats", "RBIs"))
                    
                statsToReturn.append(team_day_RBIs)
                
            if userChoices[teamStat_Count] == TEAM_DAY_WALKS:
                
                team_day_walks = int(get_teamStatData(connection, teamName, "team_day_stats", "Walks"))
                    
                statsToReturn.append(team_day_walks)
                
            if userChoices[teamStat_Count] == TEAM_DAY_STRIKEOUTS:
                
                team_day_strikeouts = int(get_teamStatData(connection, teamName, "team_day_stats", "Strikeouts"))
                    
                statsToReturn.append(team_day_strikeouts)
                
            if userChoices[teamStat_Count] == TEAM_DAY_STOLENBASES:
                
                team_day_stolenbases = int(get_teamStatData(connection, teamName, "team_day_stats", "StolenBases"))
                    
                statsToReturn.append(team_day_stolenbases)
                
            if userChoices[teamStat_Count] == TEAM_DAY_BATTINGAVG:
                
                team_day_battingAVG = float(get_teamStatData(connection, teamName, "team_day_stats", "Batting_AVG"))
                    
                statsToReturn.append(team_day_battingAVG)
                
            if userChoices[teamStat_Count] == TEAM_DAY_ONBASEPERCENT:
                
                team_day_onBasePercent = float(get_teamStatData(connection, teamName, "team_day_stats", "OnBase_Percent"))
                    
                statsToReturn.append(team_day_onBasePercent)
                
                
            # Team Night Stats
            #________________________________________________________________
            if userChoices[teamStat_Count] == TEAM_NIGHT_GAMES:
                
                team_night_games = int(get_teamStatData(connection, teamName, "team_night_stats", "Games_Played"))
                    
                statsToReturn.append(team_night_games)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_ATBATS:
                
                team_night_atbats = int(get_teamStatData(connection, teamName, "team_night_stats", "AtBats"))
                    
                statsToReturn.append(team_night_atbats)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_RUNS:
                
                team_night_runs = int(get_teamStatData(connection, teamName, "team_night_stats", "Runs"))
                    
                statsToReturn.append(team_night_runs)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_HITS:
                
                team_night_hits = int(get_teamStatData(connection, teamName, "team_night_stats", "Hits"))
                    
                statsToReturn.append(team_night_hits)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_DOUBLES:
                
                team_night_doubles = int(get_teamStatData(connection, teamName, "team_night_stats", "Doubles"))
                    
                statsToReturn.append(team_night_doubles)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_TRIPLES:
                
                team_night_triples = int(get_teamStatData(connection, teamName, "team_night_stats", "Triples"))
                    
                statsToReturn.append(team_night_triples)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_HOMERUNS:
                
                team_night_homeruns = int(get_teamStatData(connection, teamName, "team_night_stats", "HomeRuns"))
                    
                statsToReturn.append(team_night_homeruns)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_RBIS:
                
                team_night_RBIs = int(get_teamStatData(connection, teamName, "team_night_stats", "RBIs"))
                    
                statsToReturn.append(team_night_RBIs)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_WALKS:
                
                team_night_walks = int(get_teamStatData(connection, teamName, "team_night_stats", "Walks"))
                    
                statsToReturn.append(team_night_walks)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_STRIKEOUTS:
                
                team_night_strikeouts = int(get_teamStatData(connection, teamName, "team_night_stats", "Strikeouts"))
                    
                statsToReturn.append(team_night_strikeouts)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_STOLENBASES:
                
                team_night_stolenbases = int(get_teamStatData(connection, teamName, "team_night_stats", "StolenBases"))
                    
                statsToReturn.append(team_night_stolenbases)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_BATTINGAVG:
                
                team_night_battingAVG = float(get_teamStatData(connection, teamName, "team_night_stats", "Batting_AVG"))
                    
                statsToReturn.append(team_night_battingAVG)
                
            if userChoices[teamStat_Count] == TEAM_NIGHT_ONBASEPERCENT:
                
                team_night_onBasePercent = float(get_teamStatData(connection, teamName, "team_night_stats", "OnBase_Percent"))
                    
                statsToReturn.append(team_night_onBasePercent)
                
            # Team 1st Inning Stats
            #________________________________________________________________
            if userChoices[teamStat_Count] == TEAM_1STINNING_GAMES:
                
                team_1stinning_games = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "Games_Played"))
                    
                statsToReturn.append(team_1stinning_games)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_ATBATS:
                
                team_1stinning_atbats = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "AtBats"))
                    
                statsToReturn.append(team_1stinning_atbats)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_RUNS:
                
                team_1stinning_runs = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "Runs"))
                    
                statsToReturn.append(team_1stinning_runs)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_HITS:
                
                team_1stinning_hits = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "Hits"))
                    
                statsToReturn.append(team_1stinning_hits)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_DOUBLES:
                
                team_1stinning_doubles = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "Doubles"))
                    
                statsToReturn.append(team_1stinning_doubles)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_TRIPLES:
                
                team_1stinning_triples = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "Triples"))
                    
                statsToReturn.append(team_1stinning_triples)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_HOMERUNS:
                
                team_1stinning_homeruns = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "HomeRuns"))
                    
                statsToReturn.append(team_1stinning_homeruns)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_RBIS:
                
                team_1stinning_RBIs = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "RBIs"))
                    
                statsToReturn.append(team_1stinning_RBIs)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_WALKS:
                
                team_1stinning_walks = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "Walks"))
                    
                statsToReturn.append(team_1stinning_walks)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_STRIKEOUTS:
                
                team_1stinning_strikeouts = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "Strikeouts"))
                    
                statsToReturn.append(team_1stinning_strikeouts)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_STOLENBASES:
                
                team_1stinning_stolenbases = int(get_teamStatData(connection, teamName, "team_1stinning_stats", "StolenBases"))
                    
                statsToReturn.append(team_1stinning_stolenbases)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_BATTINGAVG:
                
                team_1stinning_battingAVG = float(get_teamStatData(connection, teamName, "team_1stinning_stats", "Batting_AVG"))
                    
                statsToReturn.append(team_1stinning_battingAVG)
                
            if userChoices[teamStat_Count] == TEAM_1STINNING_ONBASEPERCENT:
                
                team_1stinning_onBasePercent = float(get_teamStatData(connection, teamName, "team_1stinning_stats", "OnBase_Percent"))
                    
                statsToReturn.append(team_1stinning_onBasePercent)
             
                
            
            # Close connection at the end of loop    
            close_connection(connection)    
            teamStat_Count +=1    
    
    if category == "League":           
        
        leagueStat_Count = 0
        
        for stat in userChoices:        
            connection = create_connection("mlb_stats")   
             
            close_connection(connection)
            
          
    return statsToReturn


def checkPitcherExist(name):
    
    connection = create_connection("mlb_stats")
    cursor = connection.cursor()

    tables_to_check = [
        "pitcher_total_stats",
        "pitcher_home_stats",
        "pitcher_away_stats",
        "pitcher_day_stats",
        "pitcher_night_stats"
    ]

    for table in tables_to_check:
        query = f"SELECT * FROM {table} WHERE Name = %s"
        cursor.execute(query, (name,))
        result = cursor.fetchone()

        if not result:  # If no result found in any table, return False
            cursor.close()
            connection.close()
            return False

    cursor.close()
    connection.close()
    return True

def checkBatterExist(name):
    
    connection = create_connection("mlb_stats")
    cursor = connection.cursor()

    tables_to_check = [
        "batter_total_stats",
        "batter_home_stats",
        "batter_away_stats",
        "batter_day_stats",
        "batter_night_stats",
        "batter_vsleft_stats",
        "batter_vsright_stats"
    ]

    for table in tables_to_check:
        query = f"SELECT * FROM {table} WHERE Name = %s"
        cursor.execute(query, (name,))
        result = cursor.fetchone()

        if not result:  # If no result found in any table, return False
            cursor.close()
            connection.close()
            return False

    cursor.close()
    connection.close()
    return True
        
def get_MLB_GamesData(date):
    
    # Set Up webdriver
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    driver = webdriver.Chrome(options=chrome_options)
    driver.get("https://www.mlb.com/probable-pitchers/" + str(date))
    
    # Sleep for 5 seconds to let content load
    time.sleep(2)
    
    # Set up beautifulsoup
    html_content = driver.page_source
    soup =BeautifulSoup(html_content, 'html.parser')
    
    count = 0
    awayTeamNames = []
    homeTeamNames = []
    awayTeamPitchers = []
    homeTeamPitchers = []
    gameTimes = []
    
    # Find team name div
    
    team_names_div = (soup.find_all('div', class_='probable-pitchers__team-names'))
    
    for div in team_names_div:
        away_team_names = div.find('span', class_='probable-pitchers__team-name probable-pitchers__team-name--away')
        home_team_names = div.find('span', class_='probable-pitchers__team-name probable-pitchers__team-name--home')
        awayName = away_team_names.get_text(strip=True) if away_team_names else "TBD"
        homeName = home_team_names.get_text(strip=True) if home_team_names else "TBD"
        awayTeamNames.append(awayName)
        homeTeamNames.append(homeName)


    starting_pitcher_names_div = soup.find_all('div', class_='probable-pitchers__pitcher-name')
    
    pitcherCount = 0
    for div in starting_pitcher_names_div:
        
        pitcherName_aLink = div.find('a', class_='probable-pitchers__pitcher-name-link')
        pitcherName = pitcherName_aLink.get_text(strip=True) if pitcherName_aLink else "TBD"
        if len(awayTeamPitchers) == len(homeTeamPitchers):
            awayTeamPitchers.append(pitcherName)
        else:
            homeTeamPitchers.append(pitcherName)
            
    gameTime_div = soup.find_all('div', class_='probable-pitchers__game-date-time')
    

    for div in gameTime_div:
        time_element = div.find('time')  # Find the <time> element within the current div
        if time_element:
            time_text = time_element.get_text(strip=True)
            time_start_index = time_text.find('•') + 1
            time_end_index = time_text.find('EDT')
            gameTimes.append(time_text[time_start_index:time_end_index].strip())
    
        
    return homeTeamNames, homeTeamPitchers, awayTeamNames, awayTeamPitchers, gameTimes

def get_VsPitcherData(batterNameList):
    
    plateApperences = []
    atBats = []
    Hits = []
    HomeRuns = []
    Walks = []
    Strikeouts =[]
    batters_AVGs = []
    chrome_options = Options()
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-dev-shm-usage")
    chrome_options.add_argument("--headless")
    driver = webdriver.Chrome(options=chrome_options)
    driver.set_window_size(1080, 1200)
    wait = WebDriverWait(driver, 10)
    
    driver.get("https://ballparkpal.com/Matchups.php")
    
    time.sleep(1)
    
    for batter in batterNameList:
        try: 
            # Find the input field by its CSS selector or XPath
            input_field = driver.find_element(By.XPATH, '//*[@id="table_id_filter"]/label/input') 

            
            # Type text into the input field
            input_field.send_keys(batter)
            
            time.sleep(1)
            # Locate the button by its text
            button = driver.find_element(By.XPATH, '//*[@id="table_id_wrapper"]/div[2]/div/button[3]')

            # Click the button
            button.click()
            
            html_content = driver.page_source
            
            # Parse the HTML using BeautifulSoup
            soup = BeautifulSoup(html_content, 'html.parser')

            # Find the table rows (tr elements) within the tbody
            rows = soup.find('tbody').find_all('tr')

            # Loop through each row and extract data from each column
            for row in rows:
                try:
                    # Extract data from each column (td elements)
                    columns = row.find_all('td')

                    plate_Apperences = int(columns[4].get_text())
                    at_Bats = int(columns[5].get_text())
                    hits = int(columns[6].get_text())
                    homeRuns = int(columns[7].get_text())
                    walks = int(columns[8].get_text())
                    strikeouts = int(columns[9].get_text())
                    batting_AVG = float(columns[-1].get_text())

                    plateApperences.append(plate_Apperences)
                    atBats.append(at_Bats)
                    Hits.append(hits)
                    HomeRuns.append(homeRuns)
                    Walks.append(walks)
                    Strikeouts.append(strikeouts)
                    batters_AVGs.append(batting_AVG)
                
                except IndexError:
                    # Handle the IndexError here (e.g., append "N/A" or perform other actions)
                    plateApperences.append("N/A")
                    atBats.append("N/A")
                    Hits.append("N/A")
                    HomeRuns.append("N/A")
                    Walks.append("N/A")
                    Strikeouts.append("N/A")
                    batters_AVGs.append("N/A")
                
                    # Add a continue statement here to skip the remaining rows in the current loop
                    continue
                
            input_field.clear()
        
        except IndexError:
            
            plateApperences.append("N/A")
            atBats.append("N/A")
            Hits.append("N/A")
            HomeRuns.append("N/A")
            Walks.append("N/A")
            Strikeouts.append("N/A")
            batters_AVGs.append("N/A")
            
            input_field.clear()
            continue
    driver.quit()

    return plateApperences, atBats, Hits, HomeRuns, Walks, Strikeouts, batters_AVGs

def formatTeamNames(teamName):
    
    teamNames = ["Arizona Diamondbacks", "Atlanta Braves", "Baltimore Orioles", "Boston Red Sox", "Chicago Cubs", "Chicago White Sox", "Cincinnati Reds", "Cleveland Guardians", "Colorado Rockies",
                 "Colorado Rockies","Detroit Tigers", "Houston Astros", "Kansas City Royals", "Los Angeles Angels", "Los Angeles Dodgers", "Miami Marlins", "Milwaukee Brewers", "Minnesota Twins",
                 "New York Mets", "New York Yankees", "Oakland Athletics", "Philadelphia Phillies", "Pittsburgh Pirates", "San Diego Padres", "Seattle Mariners", "San Francisco Giants",
                 "St. Louis Cardinals", "Tampa Bay Rays", "Texas Rangers", "Toronto Blue Jays", "Washington Nationals"]

    teamShortNames = ["CHW","CLE","DET","KC","MIN","BAL","BOS","NYY","TB","TOR","HOU","LAA","OAK","SEA","TEX","CHC","CIN","MIL","PIT","STL","ATL","MIA","NYM","PHI","WAS","ARI","COL","LAD","SD","SF"]
    
    if teamName == "D-backs":
        
        teamName = "Arizona Diamondbacks"
        
    elif teamName == "Braves":
        
        teamName = "Atlanta Braves"
        
    elif teamName == "Orioles":
        
        teamName = "Baltimore Orioles"
        
    elif teamName == "Red Sox":
        
        teamName = "Boston Red Sox"
        
    elif teamName == "Cubs":
        
        teamName = "Chicago Cubs"
        
    elif teamName == "White Sox":
        
        teamName = "Chicago White Sox"
        
    elif teamName == "Reds":
        
        teamName = "Cincinnati Reds"
        
    elif teamName == "Guardians":
        
        teamName = "Cleveland Guardians"
        
    elif teamName == "Rockies":
        
        teamName = "Colorado Rockies"
        
    elif teamName == "Tigers":
        
        teamName = "Detroit Tigers"
             
    elif teamName == "Astros":
        
        teamName = "Houston Astros"
        
    elif teamName == "Royals":
        
        teamName = "Kansas City Royals"
        
    elif teamName == "Angels":
        
        teamName = "Los Angeles Angels"
        
    elif teamName == "Dodgers":
        
        teamName = "Los Angeles Dodgers"
        
    elif teamName == "Marlins":
        
        teamName = "Miami Marlins"
        
    elif teamName == "Brewers":
        
        teamName = "Milwaukee Brewers"
        
    elif teamName == "Twins":
        
        teamName = "Minnesota Twins"
        
    elif teamName == "Mets":
        
        teamName = "New York Mets"
    
    elif teamName == "Yankees":
        
        teamName = "New York Yankees"   
        
    elif teamName == "Athletics":
        
        teamName = "Oakland Athletics" 
        
    elif teamName == "Phillies":
        
        teamName = "Philadelphia Phillies"
        
    elif teamName == "Pirates":
        
        teamName = "Pittsburgh Pirates"
        
    elif teamName == "Padres":
        
        teamName = "San Diego Padres"
        
    elif teamName == "Mariners":
        
        teamName = "Seattle Mariners"
        
    elif teamName == "Giants":
        
        teamName = "San Francisco Giants"
        
    elif teamName == "Cardinals":
        
        teamName = "St. Louis Cardinals"
        
    elif teamName == "Rays":
        
        teamName = "Tampa Bay Rays"
        
    elif teamName == "Rangers":
        
        teamName = "Texas Rangers"
        
    elif teamName == "Blue Jays":
        
        teamName = "Toronto Blue Jays"
        
    elif teamName == "Nationals":
        
        teamName = "Washington Nationals"
        
    
    return teamName
 
def formatTeam_DatabaseName(teamName):
    
    teamShortNames = ["CHW","CLE","DET","KC","MIN","BAL","BOS","NYY","TB","TOR","HOU","LAA","OAK","SEA","TEX","CHC","CIN","MIL","PIT","STL","ATL","MIA","NYM","PHI","WAS","ARI","COL","LAD","SD","SF"]   
    
    tableName = ""
    
    if teamName == "CHW" or teamName == "White Sox":
        
        tableName = "whitesox_roster_batters"
        
    elif teamName == "CLE" or teamName == "Guardians":
        
        tableName = "guardians_roster_batters"
        
    elif teamName == "DET" or teamName == "Tigers":
        
        tableName = "tigers_roster_batters"
        
    elif teamName == "KC" or teamName == "Royals":
        
        tableName = "royals_roster_batters"
        
    elif teamName == "MIN" or teamName == "Twins":
        
        tableName = "twins_roster_batters"
        
    elif teamName == "BAL" or teamName == "Orioles":
        
        tableName = "orioles_roster_batters"
        
    elif teamName == "BOS" or teamName == "Red Sox":
        
        tableName = "redsox_roster_batters"
        
    elif teamName == "NYY" or teamName == "Yankees":
        
        tableName = "yankees_roster_batters"
        
    elif teamName == "TB" or teamName == "Rays":
        
        tableName = "rays_roster_batters"
        
    elif teamName == "TOR" or teamName == "Blue Jays":
        
        tableName = "bluejays_roster_batters"
        
    elif teamName == "HOU" or teamName == "Astros":
        
        tableName = "astros_roster_batters"
        
    elif teamName == "LAA" or teamName == "Angels":
        
        tableName = "angels_roster_batters"
        
    elif teamName == "OAK" or teamName == "Athletics":
        
        tableName = "athletics_roster_batters"
        
    elif teamName == "SEA" or teamName == "Mariners":
        
        tableName = "mariners_roster_batters"
        
    elif teamName == "TEX" or teamName == "Rangers":
        
        tableName = "rangers_roster_batters"
        
    elif teamName == "CHC" or teamName == "Cubs":
        
        tableName = "cubs_roster_batters"
        
    elif teamName == "CIN" or teamName == "Reds":
        
        tableName = "reds_roster_batters"
        
    elif teamName == "MIL" or teamName == "Brewers":
        
        tableName = "brewers_roster_batters"
        
    elif teamName == "PIT" or teamName == "Pirates":
        
        tableName = "pirates_roster_batters"
        
    elif teamName == "STL" or teamName == "Cardinals":
        
        tableName = "cardinals_roster_batters"
        
    elif teamName == "ATL" or teamName == "Braves":
        
        tableName = "braves_roster_batters"
        
    elif teamName == "MIA" or teamName == "Marlins":
        
        tableName = "marlins_roster_batters"
        
    elif teamName == "NYM" or teamName == "Mets":
        
        tableName = "mets_roster_batters"
        
    elif teamName == "PHI" or teamName == "Phillies":
        
        tableName = "phillies_roster_batters"
        
    elif teamName == "WAS" or teamName == "Nationals" or teamName == "WSH":
        
        tableName = "nationals_roster_batters"
        
    elif teamName == "ARI" or teamName == "D-backs":
        
        tableName = "diamondbacks_roster_batters"
        
    elif teamName == "COL" or teamName == "Rockies":
        
        tableName = "rockies_roster_batters"
        
    elif teamName == "LAD" or teamName == "Dodgers":
        
        tableName = "dodgers_roster_batters"
        
    elif teamName == "SD" or teamName == "Padres":
        
        tableName = "padres_roster_batters"
        
    elif teamName == "SF" or teamName == "Giants":
        
        tableName = "giants_roster_batters"
        
    return tableName

def getMLBRoster(teamName):
    
    # Connect to your MySQL database
    db_host = '127.0.0.1'  # Replace with your database host
    db_user = 'root'  # Replace with your database username
    db_password = 'root'  # Replace with your database password
    db_name = 'mlb_stats'  # Replace with your database name

    conn = mysql.connector.connect(
        host=db_host,
        user=db_user,
        password=db_password,
        database=db_name
    )

    cursor = conn.cursor()
    
    tableName = formatTeam_DatabaseName(teamName)
    
    # Define the SQL query to select names from the "Name" column
    select_query = "SELECT Name FROM " + str(tableName)

    # Execute the query
    cursor.execute(select_query)

    # Fetch all rows as a list of tuples
    name_rows = cursor.fetchall()

    # Close the cursor and the connection
    cursor.close()
    conn.close()
    
    # Extract names from the list of tuples and create a list of names
    playerNames = [row[0] for row in name_rows]
    
    return playerNames


# NFL Section Of Library

def getNFLStat(*args):
    
    teamNames = ["Arizona", "Atlanta", "Baltimore", "Buffalo", "Carolina", "Chicago", "Cincinnati", "Cleveland", "Dallas", "Denver", "Detroit",
                 "Green Bay", "Houston", "Indianapolis", "Jacksonville", "Kansas City", "LA Chargers", "LA Rams", "Las Vegas", "Miami", "Minnesota",
                 "New England", "New Orleans", "NY Giants", "NY Jets", "Philadelphia", "Pittsburgh", "San Francisco", "Seattle", "Tampa Bay", "Tennessee", 
                 "Washington"]
    
    
    userChoices = []
    statsToReturn = []
    
    if args[0] in teamNames:
        
        teamName = args[0]
        
        category = args[1]
        
        for arg in args[2:]:
            userChoices.append(arg)
        
    else:
        
        playerName = args[0]
        category = args[1]
        
        for arg in args[2:]:
            userChoices.append(arg)   
    
    #-- Quarterback Stats -- 
    
    # Quarterback Total Stats
    QB_TOTAL_PASSYARDS = "QB_Total_PassYards"
    QB_TOTAL_YARDSPERATTEMPT = "QB_Total_YPA" # Yards Per Attempt
    QB_TOTAL_ATTEMPTS = "QB_Total_Attempts"
    QB_TOTAL_COMPLETIONS = "QB_Total_Completions"
    QB_TOTAL_COMPLETIONPERC = "QB_Total_CompletionPerc"
    QB_TOTAL_TOUCHDOWNS = "QB_Total_Touchdowns"
    QB_TOTAL_INTERCEPTIONS = "QB_Total_Interceptions"
    QB_TOTAL_SACKS = "QB_Total_Sacks"
    QB_TOTAL_SACKSLOSTYARDS = "QB_Total_SLY" # Sacks Lost Yards
    QB_TOTAL_GAMESPLAYED = "QB_Total_GamesPlayed"
    QB_TOTAL_RATING = "QB_Total_Rating"
    
    # Quarterback Home Stats
    QB_HOME_PASSYARDS = "QB_Home_PassYards"
    QB_HOME_YARDSPERATTEMPT = "QB_Home_YPA" # Yards Per Attempt
    QB_HOME_ATTEMPTS = "QB_Home_Attempts"
    QB_HOME_COMPLETIONS = "QB_Home_Completions"
    QB_HOME_COMPLETIONPERC = "QB_Home_CompletionPerc"
    QB_HOME_TOUCHDOWNS = "QB_Home_Touchdowns"
    QB_HOME_INTERCEPTIONS = "QB_Home_Interceptions"
    QB_HOME_SACKS = "QB_Home_Sacks"
    QB_HOME_SACKSLOSTYARDS = "QB_Home_SLY" # Sacks Lost Yards
    QB_HOME_GAMESPLAYED = "QB_Home_GamesPlayed"
    QB_HOME_RATING = "QB_Home_Rating"
    
    # Quarterback Away Stats
    QB_AWAY_PASSYARDS = "QB_Away_PassYards"
    QB_AWAY_YARDSPERATTEMPT = "QB_Away_YPA" # Yards Per Attempt
    QB_AWAY_ATTEMPTS = "QB_Away_Attempts"
    QB_AWAY_COMPLETIONS = "QB_Away_Completions"
    QB_AWAY_COMPLETIONPERC = "QB_Away_CompletionPerc"
    QB_AWAY_TOUCHDOWNS = "QB_Away_Touchdowns"
    QB_AWAY_INTERCEPTIONS = "QB_Away_Interceptions"
    QB_AWAY_SACKS = "QB_Away_Sacks"
    QB_AWAY_SACKSLOSTYARDS = "QB_Away_SLY" # Sacks Lost Yards
    QB_AWAY_GAMESPLAYED = "QB_Away_GamesPlayed"
    QB_AWAY_RATING = "QB_Away_Rating"
    
    #-- Runningback Stats -- 
    
    # Runningback Total Stats
    RB_TOTAL_GAMESPLAYED = "RB_Total_GamesPlayed"
    RB_TOTAL_ATTEMPTS = "RB_Total_Attempts"
    RB_TOTAL_YARDS = "RB_Total_Yards"
    RB_TOTAL_YPA = "RB_Total_YPA"
    RB_TOTAL_TOUCHDOWNS = "RB_Total_Touchdowns"
    RB_TOTAL_FIRSTDOWNS = "RB_Total_Firstdowns"
    
    
    # Runningback Home Stats
    RB_HOME_GAMESPLAYED = "RB_Home_GamesPlayed"
    RB_HOME_ATTEMPTS = "RB_Home_Attempts"
    RB_HOME_YARDS = "RB_Home_Yards"
    RB_HOME_YPA = "RB_Home_YPA"
    RB_HOME_TOUCHDOWNS = "RB_Home_Touchdowns"
    RB_HOME_FIRSTDOWNS = "RB_Home_Firstdowns"
    
    # Runningback Away Stats
    RB_AWAY_GAMESPLAYED = "RB_Away_GamesPlayed"
    RB_AWAY_ATTEMPTS = "RB_Away_Attempts"
    RB_AWAY_YARDS = "RB_Away_Yards"
    RB_AWAY_YPA = "RB_Away_YPA"
    RB_AWAY_TOUCHDOWNS = "RB_Away_Touchdowns"
    RB_AWAY_FIRSTDOWNS = "RB_Away_Firstdowns"
    
    #-- Wide Receiver Stats -- 
    
    # Wide Receiver Total Stats
    WR_TOTAL_GAMESPLAYED = "WR_Total_GamesPlayed"
    WR_TOTAL_YARDS = "WR_Total_Yards"
    WR_TOTAL_YPR = "WR_Total_YardsPerReception"
    WR_TOTAL_YPT = "WR_Total_YardsPerTarget"
    WR_TOTAL_TARGETS = "WR_Total_Targets"
    WR_TOTAL_TOUCHDOWNS = "WR_Total_Touchdowns"
    WR_TOTAL_CATCHPERC = "WR_Total_CatchPerc"
    WR_TOTAL_CATCHES = "WR_Total_Catches"
    WR_TOTAL_FIRSTDOWNCATCHES = "WR_Total_FirstdownCatches"
    
    # Wide Receiver Home Stats
    WR_HOME_GAMESPLAYED = "WR_Home_GamesPlayed"
    WR_HOME_YARDS = "WR_Home_Yards"
    WR_HOME_YPR = "WR_Home_YardsPerReception"
    WR_HOME_YPT = "WR_Home_YardsPerTarget"
    WR_HOME_TARGETS = "WR_Home_Targets"
    WR_HOME_TOUCHDOWNS = "WR_Home_Touchdowns"
    WR_HOME_CATCHPERC = "WR_Home_CatchPerc"
    WR_HOME_CATCHES = "WR_Home_Catches"
    WR_HOME_FIRSTDOWNCATCHES = "WR_Home_FirstdownCatches"
    
    # Wide Receiver Away Stats
    WR_AWAY_GAMESPLAYED = "WR_Away_GamesPlayed"
    WR_AWAY_YARDS = "WR_Away_Yards"
    WR_AWAY_YPR = "WR_Away_YardsPerReception"
    WR_AWAY_YPT = "WR_Away_YardsPerTarget"
    WR_AWAY_TARGETS = "WR_Away_Targets"
    WR_AWAY_TOUCHDOWNS = "WR_Away_Touchdowns"
    WR_AWAY_CATCHPERC = "WR_Away_CatchPerc"
    WR_AWAY_CATCHES = "WR_Away_Catches"
    WR_AWAY_FIRSTDOWNCATCHES = "WR_Away_FirstdownCatches"
    
    #-- Defensive Player Stats -- 
    
    # Defensive Player Total Stats
    
    # Defensive Player Home Stats
    
    # Defensive Player Away Stats
    
    #-- Defense Team Passing Stats -- 
    
    # Defense Team Passing Total Stats
    DEFTEAM_PASSATTEMPTS_PERGAME = "DefTeam_PassAttempts_PerGame"
    DEFTEAM_COMPLETIONS_PERGAME = "DefTeam_Completions_PerGame"
    DEFTEAM_COMPLETION_PERC = "DefTeam_Completion_Perc"
    DEFTEAM_PASSYARDS_PERGAME = "DefTeam_PassYards_PerGame"
    DEFTEAM_PASSYARDS_PERATTEMPT = "DefTeam_PassYards_PerAttempt"
    DEFTEAM_PASSYARDS_PERCOMPLETION = "DefTeam_PassYards_PerCompletion"
    DEFTEAM_PASSFIRSTDOWNS_PERGAME = "DefTeam_PassFirstdowns_PerGame"
    DEFTEAM_PASSTOUCHDOWNS_PERGAME = "DefTeam_PassTouchdowns_PerGame"
    DEFTEAM_SACKS_PERGAME = "DefTeam_Sacks_PerGame"
    
    
    
    # Defense Team Passing Home Stats
    
    # Defense Team Passing Away Stats
    
    #-- Defense Team Rushing Stats -- 
    
    # Defense Team Rushing Total Stats
    DEFTEAM_RUSHATTEMPTS_PERGAME = "DefTeam_RushAttempts_PerGame"
    DEFTEAM_RUSHYARDS_PERGAME = "DefTeam_RushYards_PerGame"
    DEFTEAM_RUSHFIRSTDOWNS_PERGAME = "DefTeam_RushFirstdowns_PerGame"
    DEFTEAM_RUSHTOUCHDOWNS_PERGAME = "DefTeam_RushTouchdowns_PerGame"
    DEFTEAM_RUSHYARDS_PERATTEMPT = "DefTeam_RushYards_PerAttempt"
    
    # Defense Team Rushing Home Stats
    
    # Defense Team Rushing Away Stats
    
    
    if category == "Quarterback":
        
        quarterback_Count = 0
        connection = create_connection("nfl_stats")
        for stat in userChoices:
            
            # Quarterback Totals
            if userChoices[quarterback_Count] == QB_TOTAL_PASSYARDS:
                
                QB_Total_PassYards = get_statData(connection, playerName, "qb_total_stats", "Pass_Yards")
                    
                statsToReturn.append(QB_Total_PassYards)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_YARDSPERATTEMPT:
                
                QB_Total_YPA = get_statData(connection, playerName,"qb_total_stats", "Yards_Per_Attempt")
                
                statsToReturn.append(QB_Total_YPA)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_ATTEMPTS:
                
                QB_Total_Attempts = get_statData(connection, playerName,"qb_total_stats", "Attempts")
                
                statsToReturn.append(QB_Total_Attempts)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_COMPLETIONS:
                
                QB_Total_Completions = get_statData(connection, playerName,"qb_total_stats", "Completions")
                
                statsToReturn.append(QB_Total_Completions)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_COMPLETIONPERC:
                
                QB_Total_CompletionPerc = get_statData(connection, playerName,"qb_total_stats", "Completion_Perc")
                
                statsToReturn.append(QB_Total_CompletionPerc)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_TOUCHDOWNS:
                
                QB_Total_Touchdowns = get_statData(connection, playerName,"qb_total_stats", "Touchdowns")
                
                statsToReturn.append(QB_Total_Touchdowns)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_INTERCEPTIONS:
                
                QB_Total_Interceptions = get_statData(connection, playerName,"qb_total_stats", "Interceptions")
                
                statsToReturn.append(QB_Total_Interceptions)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_SACKS:
                
                QB_Total_Sacks = get_statData(connection, playerName,"qb_total_stats", "Sacks")
                
                statsToReturn.append(QB_Total_Sacks)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_SACKSLOSTYARDS:
                
                QB_Total_SLY = get_statData(connection, playerName,"qb_total_stats", "Sacks_LostYards")
                
                statsToReturn.append(QB_Total_SLY)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_GAMESPLAYED:
                
                QB_Total_GamesPlayed = get_statData(connection, playerName,"qb_total_stats", "Games_Played")
                
                statsToReturn.append(QB_Total_GamesPlayed)
                
            elif userChoices[quarterback_Count] == QB_TOTAL_RATING:
                
                QB_Total_Rating = get_statData(connection, playerName,"qb_total_stats", "Rating")
                
                statsToReturn.append(QB_Total_Rating)

            # Quarterback Home Stats
            elif userChoices[quarterback_Count] == QB_HOME_PASSYARDS:
                
                QB_Home_PassYards = get_statData(connection, playerName, "qb_home_stats", "Pass_Yards")
                    
                statsToReturn.append(QB_Home_PassYards)
                
            elif userChoices[quarterback_Count] == QB_HOME_YARDSPERATTEMPT:
                
                QB_Home_YPA = get_statData(connection, playerName,"qb_home_stats", "Yards_Per_Attempt")
                
                statsToReturn.append(QB_Home_YPA)
                
            elif userChoices[quarterback_Count] == QB_HOME_ATTEMPTS:
                
                QB_Home_Attempts = get_statData(connection, playerName,"qb_home_stats", "Attempts")
                
                statsToReturn.append(QB_Home_Attempts)
                
            elif userChoices[quarterback_Count] == QB_HOME_COMPLETIONS:
                
                QB_Home_Completions = get_statData(connection, playerName,"qb_home_stats", "Completions")
                
                statsToReturn.append(QB_Home_Completions)
                
            elif userChoices[quarterback_Count] == QB_HOME_COMPLETIONPERC:
                
                QB_Home_CompletionPerc = get_statData(connection, playerName,"qb_home_stats", "Completion_Perc")
                
                statsToReturn.append(QB_Home_CompletionPerc)
                
            elif userChoices[quarterback_Count] == QB_HOME_TOUCHDOWNS:
                
                QB_Home_Touchdowns = get_statData(connection, playerName,"qb_home_stats", "Touchdowns")
                
                statsToReturn.append(QB_Home_Touchdowns)
                
            elif userChoices[quarterback_Count] == QB_HOME_INTERCEPTIONS:
                
                QB_Home_Interceptions = get_statData(connection, playerName,"qb_home_stats", "Interceptions")
                
                statsToReturn.append(QB_Home_Interceptions)
                
            elif userChoices[quarterback_Count] == QB_HOME_SACKS:
                
                QB_Home_Sacks = get_statData(connection, playerName,"qb_home_stats", "Sacks")
                
                statsToReturn.append(QB_Home_Sacks)
                
            elif userChoices[quarterback_Count] == QB_HOME_SACKSLOSTYARDS:
                
                QB_Home_SLY = get_statData(connection, playerName,"qb_home_stats", "Sacks_LostYards")
                
                statsToReturn.append(QB_Home_SLY)
                
            elif userChoices[quarterback_Count] == QB_HOME_GAMESPLAYED:
                
                QB_Home_GamesPlayed = get_statData(connection, playerName,"qb_home_stats", "Games_Played")
                
                statsToReturn.append(QB_Home_GamesPlayed)
                
            elif userChoices[quarterback_Count] == QB_HOME_RATING:
                
                QB_Home_Rating = get_statData(connection, playerName,"qb_home_stats", "Rating")
                
                statsToReturn.append(QB_Home_Rating)
                
            # Quarterback Away Stats
            elif userChoices[quarterback_Count] == QB_AWAY_PASSYARDS:
                
                QB_Away_PassYards = get_statData(connection, playerName, "qb_away_stats", "Pass_Yards")
                
                statsToReturn.append(QB_Away_PassYards)
                
            elif userChoices[quarterback_Count] == QB_AWAY_YARDSPERATTEMPT:
                
                QB_Away_YPA = get_statData(connection, playerName, "qb_away_stats", "Yards_Per_Attempt")
                
                statsToReturn.append(QB_Away_YPA)
                
            elif userChoices[quarterback_Count] == QB_AWAY_ATTEMPTS:
                
                QB_Away_Attempts = get_statData(connection, playerName, "qb_away_stats", "Attempts")
                
                statsToReturn.append(QB_Away_Attempts)
                
            elif userChoices[quarterback_Count] == QB_AWAY_COMPLETIONS:
                
                QB_Away_Completions = get_statData(connection, playerName, "qb_away_stats", "Completions")
                
                statsToReturn.append(QB_Away_Completions)
                
            elif userChoices[quarterback_Count] == QB_AWAY_COMPLETIONPERC:
                
                QB_Away_CompletionPerc = get_statData(connection, playerName, "qb_away_stats", "Completion_Perc")
                
                statsToReturn.append(QB_Away_CompletionPerc)
                
            elif userChoices[quarterback_Count] == QB_AWAY_TOUCHDOWNS:
                
                QB_Away_Touchdowns = get_statData(connection, playerName, "qb_away_stats", "Touchdowns")
                
                statsToReturn.append(QB_Away_Touchdowns)
                
            elif userChoices[quarterback_Count] == QB_AWAY_INTERCEPTIONS:
                
                QB_Away_Interceptions = get_statData(connection, playerName, "qb_away_stats", "Interceptions")
                
                statsToReturn.append(QB_Away_Interceptions)
                
            elif userChoices[quarterback_Count] == QB_AWAY_SACKS:
                
                QB_Away_Sacks = get_statData(connection, playerName, "qb_away_stats", "Sacks")
                
                statsToReturn.append(QB_Away_Sacks)
                
            elif userChoices[quarterback_Count] == QB_AWAY_SACKSLOSTYARDS:
                
                QB_Away_SLY = get_statData(connection, playerName, "qb_away_stats", "Sacks_LostYards")
                
                statsToReturn.append(QB_Away_SLY)
                
            elif userChoices[quarterback_Count] == QB_AWAY_GAMESPLAYED:
                
                QB_Away_GamesPlayed = get_statData(connection, playerName, "qb_away_stats", "Games_Played")
                
                statsToReturn.append(QB_Away_GamesPlayed)
                
            elif userChoices[quarterback_Count] == QB_AWAY_RATING:
                
                QB_Away_Rating = get_statData(connection, playerName, "qb_away_stats", "Rating")
                
                statsToReturn.append(QB_Away_Rating)
                
            
            
        
            # Add one to counter  
            quarterback_Count +=1
            
        # Close connection at the end of loop    
        close_connection(connection)
                
        return statsToReturn
    
    elif category == "Runningback":
        
        runningback_Count = 0
        connection = create_connection("nfl_stats")
        
        for stat in userChoices:
            
            # Runningbacks Totals
            if userChoices[runningback_Count] == RB_TOTAL_GAMESPLAYED:
                
                RB_Total_GamesPlayed = get_statData(connection, playerName, "rb_total_stats", "Games_Played")
                
                statsToReturn.append(RB_Total_GamesPlayed)
                
            elif userChoices[runningback_Count] == RB_TOTAL_ATTEMPTS:
                
                RB_Total_Attempts = get_statData(connection, playerName, "rb_total_stats", "Attempts")
                
                statsToReturn.append(RB_Total_Attempts)
                
            elif userChoices[runningback_Count] == RB_TOTAL_YARDS:
                
                RB_Total_Yards = get_statData(connection, playerName, "rb_total_stats", "Yards")
                
                statsToReturn.append(RB_Total_Yards)
                
            elif userChoices[runningback_Count] == RB_TOTAL_YPA:
                
                RB_Total_YPA = get_statData(connection, playerName, "rb_total_stats", "Yards_PerAttempt")
                
                statsToReturn.append(RB_Total_YPA)
                
            elif userChoices[runningback_Count] == RB_TOTAL_TOUCHDOWNS:
                
                RB_Total_Touchdowns = get_statData(connection, playerName, "rb_total_stats", "Touchdowns")
                
                statsToReturn.append(RB_Total_Touchdowns)
                
            elif userChoices[runningback_Count] == RB_TOTAL_FIRSTDOWNS:
                
                RB_Total_Firstdowns = get_statData(connection, playerName, "rb_total_stats", "FirstDown_Runs")
                
                statsToReturn.append(RB_Total_Firstdowns)
                
            # Runningbacks Home Stats 
            elif userChoices[runningback_Count] == RB_HOME_GAMESPLAYED:
                
                RB_Home_GamesPlayed = get_statData(connection, playerName, "rb_home_stats", "Games_Played")
                
                statsToReturn.append(RB_Home_GamesPlayed)
                
            elif userChoices[runningback_Count] == RB_HOME_ATTEMPTS:
                
                RB_Home_Attempts = get_statData(connection, playerName, "rb_home_stats", "Attempts")
                
                statsToReturn.append(RB_Home_Attempts)
                
            elif userChoices[runningback_Count] == RB_HOME_YARDS:
                
                RB_Home_Yards = get_statData(connection, playerName, "rb_home_stats", "Yards")
                
                statsToReturn.append(RB_Home_Yards)
                
            elif userChoices[runningback_Count] == RB_HOME_YPA:
                
                RB_Home_YPA = get_statData(connection, playerName, "rb_home_stats", "Yards_PerAttempt")
                
                statsToReturn.append(RB_Home_YPA)
                
            elif userChoices[runningback_Count] == RB_HOME_TOUCHDOWNS:
                
                RB_Home_Touchdowns = get_statData(connection, playerName, "rb_home_stats", "Touchdowns")
                
                statsToReturn.append(RB_Home_Touchdowns)
                
            elif userChoices[runningback_Count] == RB_HOME_FIRSTDOWNS:
                
                RB_Home_Firstdowns = get_statData(connection, playerName, "rb_home_stats", "FirstDown_Runs")
                
                statsToReturn.append(RB_Home_Firstdowns)   
                
            # Runningback Away Stats
            elif userChoices[runningback_Count] == RB_AWAY_GAMESPLAYED:
                
                RB_Away_GamesPlayed = get_statData(connection, playerName, "rb_away_stats", "Games_Played")
                
                statsToReturn.append(RB_Away_GamesPlayed)
                
            elif userChoices[runningback_Count] == RB_AWAY_ATTEMPTS:
                
                RB_Away_Attempts = get_statData(connection, playerName, "rb_away_stats", "Attempts")
                
                statsToReturn.append(RB_Away_Attempts)
                
            elif userChoices[runningback_Count] == RB_AWAY_YARDS:
                
                RB_Away_Yards = get_statData(connection, playerName, "rb_away_stats", "Yards")
                
                statsToReturn.append(RB_Away_Yards)
                
            elif userChoices[runningback_Count] == RB_AWAY_YPA:
                
                RB_Away_YPA = get_statData(connection, playerName, "rb_away_stats", "Yards_PerAttempt")
                
                statsToReturn.append(RB_Away_YPA)
                
            elif userChoices[runningback_Count] == RB_AWAY_TOUCHDOWNS:
                
                RB_Away_Touchdowns = get_statData(connection, playerName, "rb_away_stats", "Touchdowns")
                
                statsToReturn.append(RB_Away_Touchdowns)
                
            elif userChoices[runningback_Count] == RB_AWAY_FIRSTDOWNS:
                
                RB_Away_Firstdowns = get_statData(connection, playerName, "rb_away_stats", "FirstDown_Runs")
                
                statsToReturn.append(RB_Away_Firstdowns)

            
            # Add one to counter  
            runningback_Count +=1
            
        # Close connection at the end of loop    
        close_connection(connection)
                
        return statsToReturn
    
    elif category == "Wide_Receiver":
        
        wideReceiver_Count = 0
        connection = create_connection("nfl_stats")
        
        for stat in userChoices:
            
            # Wide Receiver Totals
            if userChoices[wideReceiver_Count] == WR_TOTAL_GAMESPLAYED:
                
                WR_Total_GamesPlayed = get_statData(connection, playerName, "wr_total_stats", "Games_Played")
                
                statsToReturn.append(WR_Total_GamesPlayed)
                
            elif userChoices[wideReceiver_Count] == WR_TOTAL_YARDS:
                
                WR_Total_Yards = get_statData(connection, playerName, "wr_total_stats", "Yards")
                
                statsToReturn.append(WR_Total_Yards)
                
            elif userChoices[wideReceiver_Count] == WR_TOTAL_YPR:
                
                WR_Total_YPR = get_statData(connection, playerName, "wr_total_stats", "Yards_PerReception")
                
                statsToReturn.append(WR_Total_YPR)
                
            elif userChoices[wideReceiver_Count] == WR_TOTAL_YPT:
                
                WR_Total_YPT = get_statData(connection, playerName, "wr_total_stats", "Yards_PerTarget")
                
                statsToReturn.append(WR_Total_YPT)
                
            elif userChoices[wideReceiver_Count] == WR_TOTAL_TARGETS:
                
                WR_Total_Targets = get_statData(connection, playerName, "wr_total_stats", "Targets")
                
                statsToReturn.append(WR_Total_Targets)
                
            elif userChoices[wideReceiver_Count] == WR_TOTAL_TOUCHDOWNS:
                
                WR_Total_Touchdowns = get_statData(connection, playerName, "wr_total_stats", "Touchdowns")
                
                statsToReturn.append(WR_Total_Touchdowns)
                
            elif userChoices[wideReceiver_Count] == WR_TOTAL_CATCHPERC:
                
                WR_Total_CatchPerc = get_statData(connection, playerName, "wr_total_stats", "Catch_Perc")
                
                statsToReturn.append(WR_Total_CatchPerc)
                
            elif userChoices[wideReceiver_Count] == WR_TOTAL_CATCHES:
                
                WR_Total_Catches = get_statData(connection, playerName, "wr_total_stats", "Catches")
                
                statsToReturn.append(WR_Total_Catches)
                
            elif userChoices[wideReceiver_Count] == WR_TOTAL_FIRSTDOWNCATCHES:
                
                WR_Total_FirstDownCatches = get_statData(connection, playerName, "wr_total_stats", "FirstDown_Catches")
                
                statsToReturn.append(WR_Total_FirstDownCatches)
                
            # Wide Receiver Home Stats
            elif userChoices[wideReceiver_Count] == WR_HOME_GAMESPLAYED:
                WR_Home_GamesPlayed = get_statData(connection, playerName, "wr_home_stats", "Games_Played")
                statsToReturn.append(WR_Home_GamesPlayed)

            elif userChoices[wideReceiver_Count] == WR_HOME_YARDS:
                WR_Home_Yards = get_statData(connection, playerName, "wr_home_stats", "Yards")
                statsToReturn.append(WR_Home_Yards)

            elif userChoices[wideReceiver_Count] == WR_HOME_YPR:
                WR_Home_YPR = get_statData(connection, playerName, "wr_home_stats", "Yards_PerReception")
                statsToReturn.append(WR_Home_YPR)

            elif userChoices[wideReceiver_Count] == WR_HOME_YPT:
                WR_Home_YPT = get_statData(connection, playerName, "wr_home_stats", "Yards_PerTarget")
                statsToReturn.append(WR_Home_YPT)

            elif userChoices[wideReceiver_Count] == WR_HOME_TARGETS:
                WR_Home_Targets = get_statData(connection, playerName, "wr_home_stats", "Targets")
                statsToReturn.append(WR_Home_Targets)

            elif userChoices[wideReceiver_Count] == WR_HOME_TOUCHDOWNS:
                WR_Home_Touchdowns = get_statData(connection, playerName, "wr_home_stats", "Touchdowns")
                statsToReturn.append(WR_Home_Touchdowns)

            elif userChoices[wideReceiver_Count] == WR_HOME_CATCHPERC:
                WR_Home_CatchPerc = get_statData(connection, playerName, "wr_home_stats", "Catch_Perc")
                statsToReturn.append(WR_Home_CatchPerc)

            elif userChoices[wideReceiver_Count] == WR_HOME_CATCHES:
                WR_Home_Catches = get_statData(connection, playerName, "wr_home_stats", "Catches")
                statsToReturn.append(WR_Home_Catches)

            elif userChoices[wideReceiver_Count] == WR_HOME_FIRSTDOWNCATCHES:
                WR_Home_FirstDownCatches = get_statData(connection, playerName, "wr_home_stats", "FirstDown_Catches")
                statsToReturn.append(WR_Home_FirstDownCatches)
                
            # Wide Receiver Away Stats
            elif userChoices[wideReceiver_Count] == WR_AWAY_GAMESPLAYED:
                WR_Away_GamesPlayed = get_statData(connection, playerName, "wr_away_stats", "Games_Played")
                statsToReturn.append(WR_Away_GamesPlayed)

            elif userChoices[wideReceiver_Count] == WR_AWAY_YARDS:
                WR_Away_Yards = get_statData(connection, playerName, "wr_away_stats", "Yards")
                statsToReturn.append(WR_Away_Yards)

            elif userChoices[wideReceiver_Count] == WR_AWAY_YPR:
                WR_Away_YPR = get_statData(connection, playerName, "wr_away_stats", "Yards_PerReception")
                statsToReturn.append(WR_Away_YPR)

            elif userChoices[wideReceiver_Count] == WR_AWAY_YPT:
                WR_Away_YPT = get_statData(connection, playerName, "wr_away_stats", "Yards_PerTarget")
                statsToReturn.append(WR_Away_YPT)

            elif userChoices[wideReceiver_Count] == WR_AWAY_TARGETS:
                WR_Away_Targets = get_statData(connection, playerName, "wr_away_stats", "Targets")
                statsToReturn.append(WR_Away_Targets)

            elif userChoices[wideReceiver_Count] == WR_AWAY_TOUCHDOWNS:
                WR_Away_Touchdowns = get_statData(connection, playerName, "wr_away_stats", "Touchdowns")
                statsToReturn.append(WR_Away_Touchdowns)

            elif userChoices[wideReceiver_Count] == WR_AWAY_CATCHPERC:
                WR_Away_CatchPerc = get_statData(connection, playerName, "wr_away_stats", "Catch_Perc")
                statsToReturn.append(WR_Away_CatchPerc)

            elif userChoices[wideReceiver_Count] == WR_AWAY_CATCHES:
                WR_Away_Catches = get_statData(connection, playerName, "wr_away_stats", "Catches")
                statsToReturn.append(WR_Away_Catches)

            elif userChoices[wideReceiver_Count] == WR_AWAY_FIRSTDOWNCATCHES:
                WR_Away_FirstDownCatches = get_statData(connection, playerName, "wr_away_stats", "FirstDown_Catches")
                statsToReturn.append(WR_Away_FirstDownCatches)
            
            
            # Add one to counter  
            wideReceiver_Count +=1
            
        # Close connection at the end of loop    
        close_connection(connection)
                
        return statsToReturn
    
    elif category == "Defensive_Player":
        
        pass
    
    elif category == "Defense_Team_Passing":
        
        DefTeam_Count = 0
        connection = create_connection("nfl_stats")
        
        for stat in userChoices:
            
           # Def Team Passing Totals
            if userChoices[DefTeam_Count] == DEFTEAM_PASSATTEMPTS_PERGAME:
                passAttempts_PerGame = get_statData(connection, teamName, "defteam_passing_stats", "PassAttempts_PerGame")
                statsToReturn.append(float(passAttempts_PerGame))
                
            elif userChoices[DefTeam_Count] == DEFTEAM_COMPLETIONS_PERGAME:
                completions_PerGame = get_statData(connection, teamName, "defteam_passing_stats", "Completions_PerGame")
                statsToReturn.append(float(completions_PerGame))
                
            elif userChoices[DefTeam_Count] == DEFTEAM_COMPLETION_PERC:
                completion_Perc = get_statData(connection, teamName, "defteam_passing_stats", "Completion_Perc")
                statsToReturn.append(float(completion_Perc))
                
            elif userChoices[DefTeam_Count] == DEFTEAM_PASSYARDS_PERGAME:
                passYards_PerGame = get_statData(connection, teamName, "defteam_passing_stats", "PassYards_PerGame")
                statsToReturn.append(float(passYards_PerGame))
                
            elif userChoices[DefTeam_Count] == DEFTEAM_PASSYARDS_PERATTEMPT:
                passYards_PerAttempt = get_statData(connection, teamName, "defteam_passing_stats", "PassYards_PerAttempt")
                statsToReturn.append(float(passYards_PerAttempt))
                
            elif userChoices[DefTeam_Count] == DEFTEAM_PASSYARDS_PERCOMPLETION:
                passYards_PerCompletion = get_statData(connection, teamName, "defteam_passing_stats", "PassYards_PerCompletion")
                statsToReturn.append(float(passYards_PerCompletion))
                
            elif userChoices[DefTeam_Count] == DEFTEAM_PASSFIRSTDOWNS_PERGAME:
                passFirstDowns_PerGame = get_statData(connection, teamName, "defteam_passing_stats", "PassFirstDown_PerGame")
                statsToReturn.append(float(passFirstDowns_PerGame))
                
            elif userChoices[DefTeam_Count] == DEFTEAM_PASSTOUCHDOWNS_PERGAME:
                passTouchdowns_PerGame = get_statData(connection, teamName, "defteam_passing_stats", "PassTouchdowns_PerGame")
                statsToReturn.append(float(passTouchdowns_PerGame))
                
            elif userChoices[DefTeam_Count] == DEFTEAM_SACKS_PERGAME:
                sacks_PerGame = get_statData(connection, teamName, "defteam_passing_stats", "Sacks_PerGame")
                statsToReturn.append(float(sacks_PerGame))
            
            # Add one to counter  
            DefTeam_Count +=1
            
        # Close connection at the end of loop    
        close_connection(connection)
                
        return statsToReturn
    
    elif category == "Defense_Team_Rushing":
        
        DefTeam_Count = 0
        connection = create_connection("nfl_stats")
        
        for stat in userChoices:
            
            # Def Team Rushing Totals
            # Def Team Rushing Totals
            if userChoices[DefTeam_Count] == DEFTEAM_RUSHATTEMPTS_PERGAME:
                rushAttempts_PerGame = get_statData(connection, teamName, "defteam_rushing_stats", "RushAttempts_PerGame")
                statsToReturn.append(float(rushAttempts_PerGame))
                    
            elif userChoices[DefTeam_Count] == DEFTEAM_RUSHYARDS_PERGAME:
                rushYards_PerGame = get_statData(connection, teamName, "defteam_rushing_stats", "RushYards_PerGame")
                statsToReturn.append(float(rushYards_PerGame))
                    
            elif userChoices[DefTeam_Count] == DEFTEAM_RUSHFIRSTDOWNS_PERGAME:
                rushFirstDowns_PerGame = get_statData(connection, teamName, "defteam_rushing_stats", "RushFirstDowns_PerGame")
                statsToReturn.append(float(rushFirstDowns_PerGame))
                    
            elif userChoices[DefTeam_Count] == DEFTEAM_RUSHTOUCHDOWNS_PERGAME:
                rushTouchdowns_PerGame = get_statData(connection, teamName, "defteam_rushing_stats", "RushTouchdowns_PerGame")
                statsToReturn.append(float(rushTouchdowns_PerGame))
                    
            elif userChoices[DefTeam_Count] == DEFTEAM_RUSHYARDS_PERATTEMPT:
                rushYards_PerAttempt = get_statData(connection, teamName, "defteam_rushing_stats", "RushYards_PerAttempt")
                statsToReturn.append(float(rushYards_PerAttempt))
            
            # Add one to counter  
            DefTeam_Count +=1
            
        # Close connection at the end of loop    
        close_connection(connection)
                
        return statsToReturn

    elif category == "Offense_Team_Passing":
        
        pass
    
    elif category == "Offense_Team_Rushing":
        
        pass

def get_NFL_GamesData(week):
    
    homeTeams = []
    awayTeams = []
    gameTimes = []
    
    
    # Set Up webdriver
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    driver = webdriver.Chrome(options=chrome_options)
    driver.get("https://www.cbssports.com/nfl/schedule/2023/regular/" +str(week) + "/")
    
    # Sleep for 5 seconds to let content load
    time.sleep(2)
    
    # Set up beautifulsoup
    html_content = driver.page_source
    soup =BeautifulSoup(html_content, 'html.parser')


    tables = soup.find_all('table', class_ = "TableBase-table")
    
    gameTimes1 = tables[0].find_all('div', class_="CellGame")
    gameTimes2 = tables[1].find_all('div', class_="CellGame")
    gameTimes3 = tables[2].find_all('div', class_="CellGame")
    
    teamName_elements1 =  tables[0].find_all('span', class_="TeamName")
    teamName_elements2 =  tables[1].find_all('span', class_="TeamName")
    teamName_elements3 =  tables[2].find_all('span', class_="TeamName")
    
    element_count = 0
    for element in teamName_elements1:
        
        if element_count % 2 == 0 or element_count == 0:
            
            awayTeams.append(teamName_elements1[element_count].get_text())
            
            element_count +=1
            
        else:
            
            homeTeams.append(teamName_elements1[element_count].get_text())
            
            element_count +=1
    
    element_count = 0    
    for element in teamName_elements2:
        
        if element_count % 2 == 0 or element_count == 0:
            
            awayTeams.append(teamName_elements2[element_count].get_text())
            
            element_count +=1
            
        else:
            
            homeTeams.append(teamName_elements2[element_count].get_text())
            
            element_count +=1
    
    element_count = 0    
    for element in teamName_elements3:
        
        if element_count % 2 == 0 or element_count == 0:
            
            awayTeams.append(teamName_elements3[element_count].get_text())
            
            element_count +=1
            
        else:
            
            homeTeams.append(teamName_elements3[element_count].get_text())
            
            element_count +=1

    gameTime_Count = 0
    for times in gameTimes1:
        
        gameTimes.append(gameTimes1[gameTime_Count].get_text())
        
        gameTime_Count += 1
        
        
    gameTime_Count = 0    
    for times in gameTimes2:
        
        gameTimes.append(gameTimes2[gameTime_Count].get_text())
        
        gameTime_Count += 1
        
    gameTime_Count = 0    
    for times in gameTimes3:
        
        gameTimes.append(gameTimes3[gameTime_Count].get_text())
        
        gameTime_Count += 1
        
    cleanTimes = [item.split(" am")[0] + " am" if "am" in item else item.split(" pm")[0] + " pm" for item in gameTimes]

    return awayTeams, homeTeams, cleanTimes

def formatNFLTeamLists(teamList):
    
    for i in range(len(teamList)):
        if teamList[i] == "L.A. Rams":
            teamList[i] = "LA Rams"
        elif teamList[i] == "L.A. Chargers":
            teamList[i] = "LA Chargers"
        elif teamList[i] == "N.Y. Jets":
            teamList[i] = "NY Jets"
        elif teamList[i] == "N.Y. Giants":
            teamList[i] = "NY Giants"
    return teamList
            

# Create Connection To Database
def create_connection(database):
    connection = None
    
    if database == "mlb_stats":
        try:
            connection = mysql.connector.connect(
                host='127.0.0.1',
                database='mlb_stats',
                user='root',
                password='root'
            )
            if connection.is_connected():
                print("connected")
        except Error as e:
            print(f"Error connecting to MySQL database: {e}")
        
        return connection
    
    elif database == "nfl_stats":

        try:
            connection = mysql.connector.connect(
                host='127.0.0.1',
                database='nfl_stats',
                user='root',
                password='root'
            )
            if connection.is_connected():
                pass
        except Error as e:
            print(f"Error connecting to MySQL database: {e}")
        
        return connection

# Close Connection To Database
def close_connection(connection):
    if connection is not None and connection.is_connected():
        connection.close()

def get_NamesFromDatabase(database_Name, table_Name):
    connection = create_connection(database_Name)
    
    if connection is not None:
        try:
            query = "SELECT Name FROM {}".format(table_Name)
            cursor = connection.cursor()
            cursor.execute(query)
            
            result = cursor.fetchall()
            
            names = [row[0] for row in result]
            
        except:
            pass
        connection.close()
        return names
    else:
        print("Database connection failed.")
        return []
           
# Get Player Data From Database
def get_statData(connection, name, table, stat):
    stat_value = None
    if connection is not None:
        try:
            # Use a parameterized query to avoid SQL injection
            query = "SELECT {} FROM {} WHERE Name = %s".format(stat, table)
            cursor = connection.cursor()
            cursor.execute(query, (name,))

            # Fetch the value from the result set
            result = cursor.fetchone()
            if result:
                stat_value = result[0]

        except Error as e:
            print(f"Error fetching data: {e}")
    else:
        print("Connection is None")
    return stat_value

# Get Team Data From Database
def get_teamStatData(connection, name, table, stat):
    stat_value = None
    if connection is not None:
        try:
            # Use a parameterized query to avoid SQL injection
            query = "SELECT {} FROM {} WHERE Team_Name = %s".format(stat, table)
            cursor = connection.cursor()
            cursor.execute(query, (name,))

            # Fetch the value from the result set
            result = cursor.fetchone()
            if result:
                stat_value = result[0]

        except Error as e:
            print(f"Error fetching data: {e}")
    else:
        print("Connection is None")
    return stat_value