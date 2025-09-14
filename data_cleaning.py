import pandas as pd

# Load raw datasets
matches = pd.read_csv("data/raw_matches.csv")
deliveries = pd.read_csv("data/raw_deliveries.csv")

# Drop duplicates
matches.drop_duplicates(inplace=True)
deliveries.drop_duplicates(inplace=True)

# Handle missing values
matches.fillna("Unknown", inplace=True)

# Save cleaned data
matches.to_csv("data/cleaned_matches.csv", index=False)
deliveries.to_csv("data/cleaned_deliveries.csv", index=False)
print("Data cleaned and saved successfully!")
