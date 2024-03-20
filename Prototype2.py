from prediction_Library import getNBAPred

def TEAM_PRED_MONEYLINE_BESTOF(home_Teams, awayTeams)

    # Lists for each model in Best Of
    Pred_Points_Model_Picks = []
    Pred_Points_Test_Picks = []
    Pred_Points_Test_Picks2 = []
    Pred_Points_Test_Picks3 = []
    Pred_Points_Test_Picks4 = []
    Pred_Points_Test_Picks5 = []
    Pred_Points_Test_Picks6 = []
    Pred_MoneyLine_Picks = []
    BestOf_Picks = []

    # Team_Pred_Points
    for home_Team, away_Team in zip(home_Teams, awayTeams):
    
        home_score = getNBAPred(home_Team, "Team", away_Team, "Team_Pred_Points")
        away_score = getNBAPred(away_Team, "Team", home_Team, "Team_Pred_Points")

        if home_score > away_score + 3:

            Pred_Points_Test_Picks.append(home_Team)

        elif home_Team + 3 < away_score:

            Pred_Points_Model_Picks.append(away_Team)

    # Team_Pred_Points_Test
    for home_Team, away_Team in zip(home_Teams, awayTeams):

        home_score = getNBAPred(home_Team, "Team", away_Team, "Team_Pred_Points_Test")
        away_score = getNBAPred(away_Team, "Team", home_Team, "Team_Pred_Points_Test")

        if home_score > away_score + 3:

            Pred_Points_Test_Picks.append(home_Team)

        elif home_Team + 3 < away_score:

            Pred_Points_Model_Picks.append(away_Team)

    # Team_Pred_Points_Test2
    for home_Team, away_Team in zip(home_Teams, awayTeams):

        home_score = getNBAPred(home_Team, "Team", away_Team, "Team_Pred_Points_Test2")
        away_score = getNBAPred(away_Team, "Team", home_Team, "Team_Pred_Points_Test2")

        if home_score > away_score + 3:

            Pred_Points_Test_Picks.append(home_Team)

        elif home_Team + 3 < away_score:

            Pred_Points_Model_Picks.append(away_Team)

    # Team_Pred_Points_Test3
    for home_Team, away_Team in zip(home_Teams, awayTeams):

        home_score = getNBAPred(home_Team, "Team", away_Team, "Team_Pred_Points_Test3")
        away_score = getNBAPred(away_Team, "Team", home_Team, "Team_Pred_Points_Test3")

        if home_score > away_score + 3:

            Pred_Points_Test_Picks.append(home_Team)

        elif home_Team + 3 < away_score:

            Pred_Points_Model_Picks.append(away_Team)

    # Team_Pred_Points_Test4
    for home_Team, away_Team in zip(home_Teams, awayTeams):

        home_score = getNBAPred(home_Team, "Team", away_Team, "Team_Pred_Points_Test4")
        away_score = getNBAPred(away_Team, "Team", home_Team, "Team_Pred_Points_Test4")

        if home_score > away_score + 3:

            Pred_Points_Test_Picks.append(home_Team)

        elif home_Team + 3 < away_score:

            Pred_Points_Model_Picks.append(away_Team)

    # Team_Pred_Points_Test5
    for home_Team, away_Team in zip(home_Teams, awayTeams):

        home_score = getNBAPred(home_Team, "Team", away_Team, "Team_Pred_Points_Test5")
        away_score = getNBAPred(away_Team, "Team", home_Team, "Team_Pred_Points_Test5")

        if home_score > away_score + 3:

            Pred_Points_Test_Picks.append(home_Team)

        elif home_Team + 3 < away_score:

            Pred_Points_Model_Picks.append(away_Team)

    # Team_Pred_Points_Test6
    for home_Team, away_Team in zip(home_Teams, awayTeams):

        home_score = getNBAPred(home_Team, "Team", away_Team, "Team_Pred_Points_Test6")
        away_score = getNBAPred(away_Team, "Team", home_Team, "Team_Pred_Points_Test6")

        if home_score > away_score + 3:

            Pred_Points_Test_Picks.append(home_Team)

        elif home_Team + 3 < away_score:

            Pred_Points_Model_Picks.append(away_Team)

    # Team_Pred_MoneyLine
    for home_Team, away_Team in zip(home_Teams, awayTeams):

        home_score = getNBAPred(home_Team, "Team", away_Team, "Team_Pred_MoneyLine")
        away_score = getNBAPred(away_Team, "Team", home_Team, "Team_Pred_MoneyLine")

        if home_score > away_score + 3:

            Pred_Points_Test_Picks.append(home_Team)

        elif home_Team + 3 < away_score:

            Pred_Points_Model_Picks.append(away_Team)

    allListPicks = [Pred_Points_Model_Picks, Pred_Points_Test_Picks, Pred_Points_Test_Picks2, Pred_Points_Test_Picks3,
                    Pred_Points_Test_Picks4, Pred_Points_Test_Picks5, Pred_Points_Test_Picks6, Pred_MoneyLine_Picks]
    
    commonPicks = set(allListPicks[0]).intersection(*allListPicks[1:])

    BestOf_Picks = list(commonPicks)

    print(BestOf_Picks)