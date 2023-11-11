# Load necessary libraries
library(dplyr)
library(ggplot2)
library(tidyr)

# Read the data
canadian_players <- read.csv("canadian_players.csv")
all_players <- read.csv("all_players.csv")

## Explore and visualize the distribution of birth quarters

# Create a bar plot of birth quarters for all players
ggplot(all_players, aes(x = factor(BirthQuarter))) +
  geom_bar() +
  labs(title = "Distribution of Birth Quarters for All Players", y = "Count")

# Create a bar plot of birth quarters for Canadian players
ggplot(canadian_players, aes(x = factor(BirthQuarter))) +
  geom_bar() +
  labs(title = "Distribution of Birth Quarters for Canadian Players", y = "Count")

# The bar plots do not appear to show a significant difference visually


## Hypothesis test to check if the difference in quarters is significant

# Calculate the percentage of each birth quarter in the data frames
percent_table_all <- table(all_players$BirthQuarter) / nrow(all_players) * 100
percent_table_canadian <- table(canadian_players$BirthQuarter) / nrow(canadian_players) * 100

# Create a two-way table
two_way_table <- cbind(percent_table_all, percent_table_canadian)
colnames(two_way_table) <- c("All Players", "Canadian Players")

# Display the two-way table
print(two_way_table)

# Perform a hypothesis test (Chi-squared test) to check if the distributions are significantly different
test_result <- chisq.test(two_way_table)
print(test_result)

# Fail to reject the null hypothesis; the birth quarter distributions in all players and Canadian players are not statistically different


## Explore player positions

# Create a relative table for player positions in all players
relative_table_all <- table(all_players$Position) / nrow(all_players) * 100

# Create a relative table for player positions in Canadian players
relative_table_canadian <- table(canadian_players$Position) / nrow(canadian_players) * 100

# Display the relative tables
print(relative_table_all)
print(relative_table_canadian)

# It does not seem like there are statistically significant differences indicating that Canadian players play a certain position

# Create a table for player positions in all players
position_table_all <- table(all_players$Position)

# Create a table for player positions in Canadian players
position_table_canadian <- table(canadian_players$Position)

# Calculate the percentage of each player position in the data frames
percent_table_all_positions <- position_table_all / sum(position_table_all) * 100
percent_table_canadian_positions <- position_table_canadian / sum(position_table_canadian) * 100

# Create a two-way table for positions
two_way_table_positions <- cbind(percent_table_all_positions, percent_table_canadian_positions)
colnames(two_way_table_positions) <- c("All Players", "Canadian Players")

# Display the two-way table for positions
print(two_way_table_positions)

# Perform a hypothesis test (Chi-squared test) to check if the distributions are significantly different
test_result_positions <- chisq.test(two_way_table_positions)
print(test_result_positions)

# Fail to reject the null hypothesis; the position distributions in all players and Canadian players are not statistically different

## Analyze birth quarter frequency

# Create a table for birth quarters in Canadian players
quarter_table_canadian <- table(canadian_players$BirthQuarter)

# Display the table for birth quarters in Canadian players
print(quarter_table_canadian)

# Perform a chi-squared test for birth quarters in Canadian players
chi_square_result <- chisq.test(quarter_table_canadian)

# Display the chi-squared test result
print(chi_square_result)

# Reject the null hypothesis; the p-value of 7.655e-06 indicates a statistically significant difference in 
# the distribution of players among different birth quarters for Canadian players. This suggests that the birth 
# quarter may have an impact on the likelihood of players making it to the NHL, supporting the observed cascade pattern in birth quarter frequency."

# Calculate the percentage of Canadian players in each birth quarter
percent_table_canadian <- quarter_table_canadian / sum(quarter_table_canadian) * 100

# Create a data frame for the percentage table
percent_df_canadian <- data.frame(Quarter = as.character(seq_along(percent_table_canadian)), Percentage = percent_table_canadian)

# Display the percentage table
print(percent_df_canadian)

# There is a cascade pattern in birth quarter frequency


