# NHL Player Analysis

## Introduction
This analysis explores the distribution of NHL players based on birth quarters and player positions. Two datasets are used: one for all players and another for Canadian players.

## Distribution of Birth Quarters

### Visual Representation
- Bar plot showing the distribution of birth quarters for all players.
  ![Distribution of Birth Quarters for All Players]

- Bar plot showing the distribution of birth quarters for Canadian players.
  ![Distribution of Birth Quarters for Canadian Players]

### Hypothesis Test
- Percentage of each birth quarter in the datasets.
```R
two_way_table <- cbind(percent_table_all, percent_table_canadian)
colnames(two_way_table) <- c("All Players", "Canadian Players")
print(two_way_table)

# Chi-squared test
test_result <- chisq.test(two_way_table)
print(test_result)
```
Fail to reject the null hypothesis; the birth quarter distributions are not statistically different.

## Player Positions

### Relative Tables
- Relative tables for player positions in all players and Canadian players.
```R
print(relative_table_all)
print(relative_table_canadian)
```
No statistically significant differences in player positions for Canadian players.

- Two-way table for player positions.
```R
print(two_way_table_positions)

# Chi-squared test
test_result_positions <- chisq.test(two_way_table_positions)
print(test_result_positions)
```
Fail to reject the null hypothesis; the position distributions are not statistically different.

## Birth Quarter Frequency

### Chi-squared Test
- Table for birth quarters in Canadian players.
```R
print(quarter_table_canadian)

# Chi-squared test
chi_square_result <- chisq.test(quarter_table_canadian)
print(chi_square_result)
```
Reject the null hypothesis; a statistically significant difference in birth quarter distribution for Canadian players.

- Percentage table for birth quarters in Canadian players.
```R
print(percent_df_canadian)
```
There is a cascade pattern in birth quarter frequency.

---

This analysis indicates a potential impact of birth quarters on the likelihood of players making it to the NHL, especially for Canadian players.

[link-to-image-all-players]: insert-link-here
[link-to-image-canadian-players]: insert-link-here
```
