from main_Library import *
from MLB_Stats_Updater import supplyTable_Arm_Pitcher
from MLB_Stats_Updater import supplyTable_Arm_Batter
from MLB_Stats_Updater import updateAllMLBTables
from MLB_Stats_Updater import supplyTable_Pitcher_Totals
from MLB_Stats_Updater import supplyTable_Pitcher_Home
from MLB_Stats_Updater import supplyTable_Pitcher_Away
from MLB_Stats_Updater import supplyTable_Pitcher_Day
from MLB_Stats_Updater import supplyTable_Pitcher_Night
from MLB_Stats_Updater import supplyTable_Pitcher_VsLeft
from MLB_Stats_Updater import supplyTable_Pitcher_VsRight
from MLB_Stats_Updater import supplyTable_TeamRoster
from MLB_Stats_Updater import supplyTable_Batter_Total
from MLB_Stats_Updater import supplyTable_Batter_Home
from MLB_Stats_Updater import supplyTable_Batter_Away
from MLB_Stats_Updater import supplyTable_Batter_Day
from MLB_Stats_Updater import supplyTable_Batter_Night
from MLB_Stats_Updater import supplyTable_Batter_vsLeft
from MLB_Stats_Updater import supplyTable_Batter_vsRight
from MLB_Stats_Updater import supplyTable_Team_Total
from MLB_Stats_Updater import supplyTable_Team_Home
from MLB_Stats_Updater import supplyTable_Team_Away
from MLB_Stats_Updater import supplyTable_Team_Day
from MLB_Stats_Updater import supplyTable_Team_Night
from MLB_Stats_Updater import supplyTable_Team_1stInning
from calculation_Library import getMLBCalc
from calculation_Library import getNFLCalc
from calculation_Library import getNBACalc
from prediction_Library import getMLBPred
from prediction_Library import getNFLPred
from prediction_Library import getNBAPred
from MLB_Stats_Updater import newSupplyTable_TeamRoster
from NFL_Stats_Updater import *
from NBA_Stats_Updater import *
import datetime

from update_WebDriver import *
"""
player = "Milwaukee"
VS_Team = "LA Clippers"

stat = getNBAPred(player, "Offense",VS_Team, "Player_Pred_Threes3")
stat = stat[0]

print(str(player) + " should make " + str(round(stat)) + " threes tonight")
"""
#supplyTable_NBA_TeamRoster()
#supplyTable_NBAPlayer_GameLogs("Stephen Curry")

#roster = get_NamesFrom_NBARoster("bos")

#print(roster)

#stat = getNBAPred("De'Aaron Fox", "Offense","San Antonio", "Player_Pred_Points")
#stat = getNBAStat("Houston", "Team_Defensive_Scoring", "Team_Opp_Points_PerGame")
#stat = getNBACalc("Stephen Curry", "Player", "Player_Points_PerMinute")
"""
info = getNBAPred("Brooklyn", "Team", "Atlanta", "Team_Pred_Points")
info2 = getNBAPred("Brooklyn", "Team", "Atlanta", "Team_Pred_Points_Test")
info3 = getNBAPred("Brooklyn", "Team", "Atlanta", "Team_Pred_Points_Test2")
print(str(info) + " vs " + str(info2) + " vs " + str(info3))
"""

team_1 = "Minnesota"
team_2 = "LA Lakers"
score_1 = getNBAPred(team_1, "Team", team_2, "Team_Pred_MoneyLine")
score_2 = getNBAPred(team_2, "Team", team_1, "Team_Pred_MoneyLine")

print(str(team_1) + ": " + str(score_1) + " | " + str(team_2) + ": " +str(score_2))

#print(stat)

"""
player = "Aaron Gordon"
Category = "Player_Misc"
statToGet = "Player_GamesStarted"

gamesPlayed = getNBAStat(player, Category, statToGet)

print(gamesPlayed)
"""
#supplyTable_DefTeam_Scoring()
"""
#Update NBA Tables

supplyTable_DefTeam_Scoring()
time.sleep(5)
supplyTable_DefTeam_Shooting()
time.sleep(5)
supplyTable_Opp_Misc()
time.sleep(5)
supplyTable_Winning_Perc()
time.sleep(5)
supplyTable_Team_Misc()
time.sleep(5)
supplyTable_OffTeam_Shooting()
time.sleep(5)
supplyTable_OffTeam_Scoring()
time.sleep(5)
supplyTable_TeamRoster()
#supplyTable_Player_ReboundsTotals()
time.sleep(5)
#supplyTable_Player_AssistsAndTurnovers()
time.sleep(5)
supplyTable_Player_Blocks()
time.sleep(5)
supplyTable_Player_Fouls()
time.sleep(5)
supplyTable_Player_ScoringTotals()
#time.sleep(5)

#supplyTable_Player_GameLogs()
#time.sleep(5)
"""



"""
supplyTable_Team_OffenseRoster()

time.sleep(10) 
supplyTable_QB_Away()
supplyTable_QB_Home()
supplyTable_QB_Totals()

time.sleep(10) 

supplyTable_RB_Away()
supplyTable_RB_Home()
supplyTable_RB_Totals()

time.sleep(10) 

supplyTable_WR_Away()
supplyTable_WR_Home()
supplyTable_WR_Totals()

time.sleep(10) 

supplyTable_TeamDef_Totals()
supplyTable_TeamOff_Totals()

"""
# Testing NFLPred QB 

"""
homeQB = "Lamar Jackson"
awayTeam = "Cincinnati"

homeQB_stats  = getNFLPred(homeQB,"Quarterback", awayTeam, "QB_Pred_PassYards", "QB_Pred_Touchdowns", "QB_Pred_Completions")
            
homeQB_PassYards_Pred = homeQB_stats[0]
homeQB_PassTouchdowns_Pred = homeQB_stats[1]
homeQB_PassCompletions_Pred = homeQB_stats[2]
            
print("\nQB: " + homeQB)
print(str("\n\t| Pred. Pass Yards: " + str(homeQB_PassYards_Pred))) 
print(str("\n\t| Pred. Pass Touchdowns: " + str(homeQB_PassTouchdowns_Pred)))
print(str("\n\t| Pred. Pass Completions: " + str(homeQB_PassCompletions_Pred)))"""
"""




playerName = "DJ Chark"
team = "Chicago"
homeWR1_RecYards_Pred = getNFLPred(playerName,"WideReciever", team, "WR_Pred_Touchdowns")

print(homeWR1_RecYards_Pred)
"""




#supplyTable_Opp_Misc()
#supplyTable_Team_OffenseRoster()
#download_lastest_chromedriver()

#updateAllMLBTables()

#updateAllNFLTables()



"""
player = "Bryce Young"
team = "Chicago"
category = "Quarterback"
statToGet= "QB_Pred_PassYards"

returnedStats = getNFLPred(player, category, team, statToGet)

for stat in returnedStats:
    
    print(stat)
    
"""
"""  
teamList = ["Carolina", "Houston", "Seattle", "San Francisco", "Cincinnati", "Denver", "Arizona", "Baltimore", "LA Chargers", "Chicago"] 
rbList = ["Dameon Pierce", "Miles Sanders", "Kareem Hunt", "Joe Mixon", "Christian McCaffrey", "Isiah Pacheco", "Gus Edwards", "Emari Demercado", "Roschon Johnson", "Austin Ekeler"]


count = 0
for team in teamList:
    
    rbYards = getNFLPred(rbList[count],"Runningback", teamList[count], "RB_Pred_RushYards")
    rbTouchdowns = getNFLPred(rbList[count],"Runningback", teamList[count], "RB_Pred_Touchdowns")
    rbAttempts = getNFLPred(rbList[count],"Runningback", teamList[count], "RB_Pred_Attempts")
    
    print(rbList[count] + ": " + str(rbYards) + " pass yards/ " + str(rbTouchdowns) + " touchdowns/ " + str(rbAttempts) + "Rush Attempts")
    
    count +=1
"""
#supplyTable_TeamOff_Totals()

#updateAllMLBTables()
"""
batterNameList = []
batterNameList.append("Elly De La Cruz")  
batterNameList.append("Freddie Freeman")
gameInfo = ""

plateApperences,atBats, hits, homeRuns, walks, strikeouts,batting_Averages = get_VsPitcherData(batterNameList)
    
count = 0
for batter in batterNameList:
        
    gameInfo += (batter + " Against Pitcher: | BA: " + str(plateApperences[count]) + " | AB: " + str(atBats[count]) + " | Hits: " +str(hits[count]) + " | HRs: " + str(homeRuns[count]) + " | Walks: " + str(walks[count]) + " | Ks: " + str(strikeouts[count]) + " | BA: " + str(batting_Averages[count]) + "\n")
        
    count +=1
    
print(gameInfo)
"""
"""
supplyTable_Team_Total()
supplyTable_Team_Home()
supplyTable_Team_Away()
supplyTable_Team_Day()
supplyTable_Team_Night()
supplyTable_Team_1stInning()
#newSupplyTable_TeamRoster()
"""
"""
Name = "Lance Lynn"
gameTime = "Day"
retrievedStat = getMLBCalc(Name, "Pitcher", gameTime, "Pitcher_CalcAway_BB9")


stat_count = 0
for stat in retrievedStat:
    print(retrievedStat[stat_count])
    
    stat_count +=1

"""

#check = checkBatterExist("Cade Marlowe")
#print(check)

"""
Name = "Bobby Witt Jr."
category = "Batter"
gameTime = "Night"

statToRetrieve = "Batter_CalcHome_BattingAVG"
#statToRetrieve2 = "Pitcher_CalcHome_K9"
#statToRetrieve3= "Pitcher_CalcAway_K9"
#statToRetrieve4 = "Pitcher_CalcDay_K9"
#statToRetrieve5 = "Pitcher_CalcNight_K9"
#statToRetrieve6 = "Pitcher_Calc_InningsPerGame"
#statToRetrieve7 = "Pitcher_CalcHome_InningsPerGame"
#statToRetrieve8 = "Pitcher_CalcAway_InningsPerGame"
#statToRetrieve9 = "Pitcher_CalcDay_InningsPerGame"
#statToRetrieve10 = "Pitcher_CalcNight_InningsPerGame"

#statToRetrieve11 = "Pitcher_CalcHome_InningsPerGame"
#statToRetrieve12 = "Pitcher_CalcAway_InningsPerGame"



retrievedStat = []

"""








"""
Name = "Blake Snell"
category = "Pitcher"
statToRetrieve = "Pitcher_PredHome_Strikeouts"
statToRetrieve2 = "Pitcher_PredAway_Strikeouts"
statToRetrieve3= "Pitcher_PredHome_Hits"
statToRetrieve4 = "Pitcher_PredAway_Hits"
statToRetrieve5 = "Pitcher_PredHome_Runs"
statToRetrieve6 = "Pitcher_PredAway_Runs"

retrieveStat = []

team = "Los Angeles Angels"
game_Time = "Night"

retrieveStat = getMLBPred(Name, category, team, game_Time, statToRetrieve, statToRetrieve2,statToRetrieve3,statToRetrieve4,statToRetrieve5,statToRetrieve6)

stat_count = 0
for stat in retrieveStat:
    print(retrieveStat[stat_count])
    
    stat_count +=1

"""
"""
supplyTable_Pitcher_Totals()
supplyTable_Pitcher_Home()
supplyTable_Pitcher_Away()
supplyTable_Pitcher_Day()
supplyTable_Pitcher_Night()

"""
#updateAllMLBTables()

"""
"""

"""
teamName = "Cristian Javier"
catagory = "Pitcher"
statToRecieve = "Pitcher_CalcAway_WHIP"
team = "Boston Red Sox"
game_Time = "Day"

statRecieved = getMLBCalc(teamName, catagory, team, game_Time, statToRecieve)

print(statRecieved[0])
"""




