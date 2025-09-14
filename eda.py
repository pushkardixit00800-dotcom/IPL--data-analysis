import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

matches = pd.read_csv("data/cleaned_matches.csv")

# Most successful team
team_wins = matches['winner'].value_counts()
print(team_wins)

# Visualization
plt.figure(figsize=(10,6))
sns.barplot(x=team_wins.index, y=team_wins.values)
plt.xticks(rotation=90)
plt.title("Most Successful IPL Teams")
plt.show()

# Toss decision analysis
toss = matches['toss_decision'].value_counts()
print(toss)
