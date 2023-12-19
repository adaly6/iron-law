# Anomalies in Canadian Hockey Players: An Analysis Inspired by Malcolm Gladwell's "Outliers"

## Overview

This project delves into the intriguing phenomenon of the relative-age effect in Canadian hockey players, drawing inspiration from Malcolm Gladwell's groundbreaking book, "Outliers." It investigates whether the month of birth significantly influences an athlete's likelihood of long-term success.

## Table of Contents

- [Introduction](#introduction)
- [Setup](#setup)
- [Data Scraping](#data-scraping)
- [Data Editing](#data-editing)
- [Data Analysis](#data-analysis)
- [Results](#results)
- [Usage](#usage)
- [Contributing](#contributing)

## Introduction

In the quest to understand success in Canadian hockey, we explore hidden factors that contribute to outliers, challenging the conventional narrative of individual merit. This project uncovers the impact of birth months on athletes' trajectories, shedding light on the intricate dynamics that influence success.

## Setup

To explore the project locally, follow these steps:

1. **Prerequisites:**
   - R programming language
   - Required R libraries (xml2, dplyr, ggplot2, tidyr)

2. **Installation:**
   - Clone the repository to your local machine.
   - Install the necessary R libraries using `install.packages(c("xml2", "dplyr", "ggplot2", "tidyr"))`.

3. **Execution:**
   - Run the provided R scripts in the following order: `iron_law_scraping`, `iron_law_editing`, `iron_law_analysis`.

## Data Scraping

The `iron_law_scraping` script retrieves data from the web, specifically from [CBSSports](https://www.cbssports.com/nhl/teams/). It compiles information on NHL players, including their names, positions, birthdates, and birthplaces.

## Data Editing

The `iron_law_editing` script preprocesses the scraped data. It removes unnecessary information, extracts birth months, categorizes months into quarters, and creates sub-data frames for Canadian players.

## Data Analysis

The `iron_law_analysis` script conducts a comprehensive analysis. It explores the distribution of birth quarters for all players and Canadian players, performs hypothesis tests on birth quarter distributions, and analyzes player positions. The results uncover intriguing insights into the relative-age effect.

## Results

My analysis reveals a statistically significant difference in birth quarter distributions for Canadian players, affirming the impact of birth months on NHL success. The project's findings challenge traditional narratives of merit-based success. As the inspriation for this project was derived from the book _Outliers_, the script file `iron_law_analysis` includes an output of percent of players in each category. The output of the text analysis shows that **32.2%** of Canadian born NHL players were born in the months of January, Febuary, and March. **28.11%** of Canadian Born NHL players were born in the months of April, May, and June. **24%** of Canadian born NHL players were born in the months of July, August, and September. And finally **15.64%** of Canadian born NHL players were born in the months of October, November, and December.

My analysis reveals similar results to Gladwell's proposal. Gladwell's "iron law of Canadian hockey" says that in any elite group of hockey players, 40% are born between January and March, 30% between April and June, 20% between July and September, and 10% between October and December. As shown in the output of the bar charts in my analysis, this propsoal is mostly consistent, there is a cascade pattern in birth quarters. So, why is this the case and how is this anamoly so apparent? 

The answer comes from the Canada eligibility cutoff for age-class which is January 1st. As the article [Bloody Elbow](https://bloodyelbow.com/2012/01/04/out-liar-what-malcolm-gladwell-gets-wrong-about-the-relative-age/) emphasizes, "Someone born in Febuary therefore has an extra 10 months of growth over a December baby." While this is insignificant to adults, younger-aged kids grow rapidly, giving kids who have that age advantage a greater chance to compete and succeed.

This general thesis does not only apply to Canadian hockey players, as Gladwell says, "There is something profoundly wrong with the way we make sense of success". To leave you with this snowball effect of a thought, here are a few stories and analogies to sink in how we may think about success. 

**Analogy 1: Tallest Tree in the Forest**

Gladwell offers us an analogy in _Outliers_, the tallest tree in the forest came from from a good seed - this is not in question. But it did not become the tallest tree in the forest simply because it grew from a good seed; it became the tallest tree because it was planted in good soil and because no other trees blocked its sunlight.

**Story 2: Bill Gates and the Seeding of Success**

In the narrative of achievement, Bill Gates emerges as a prime example. Dropping out of Harvard in 1975 to establish Microsoft, Gates attributes much of his success to the fertile grounds of Lakeside School. Unlike many high schools at the time, Lakeside uniquely provided computer access, a rare commodity. Introduced to computing in the late 1960s, Gates and his peers were given unprecedented freedom to explore. Instead of conventional teaching, the school opened the gates to unbridled curiosity.

The school's decision to embrace rather than restrict access to computers allowed Gates to cultivate his passion. This early exposure set the stage for Microsoft's founding. Gates emphasizes the pivotal role Lakeside played in shaping his trajectory, expressing gratitude for the opportunities that paved the way for extraordinary success. Much like the tallest tree in the forest analogy, Gates' story illustrates that while talent is crucial, the environment and opportunities provided by Lakeside acted as the fertile soil that fostered his groundbreaking achievements.

**Analogy 2: The Chessboard and Strategic Moves**

Imagine success as a chessboard, where each move represents an opportunity or setback. Like chess pieces, individuals navigate this board, aiming for success. However, not all pieces start in the same position. Some begin closer to the center, with a strategic advantage. Others start on the outskirts, requiring more strategic moves to reach success. This analogy reflects the unequal starting points individuals face in their journeys. Success, much like chess, involves both skillful maneuvering and initial positioning, emphasizing the need to consider the broader landscape in the pursuit of one's goals.

**Story 2: The Marathon and Starting Line Conditions**

Picture success as a marathon, with each participant aiming for the finish line. However, the starting line conditions vary. Some begin at the front, with a clear path ahead, while others start farther back, encountering obstacles. This marathon mirrors the journey to success, where external factors, like birth month in the case of hockey players, influence the ease or difficulty of the race. Just as marathoners face diverse challenges, individuals in their pursuits grapple with different starting conditions that significantly impact their paths to success. Recognizing and addressing these disparities is essential for creating a more equitable playing field.


## Usage

To utilize this code or reproduce the analysis, follow the steps outlined in the [Setup](#setup) section. Feel free to adapt the code for different datasets or explore related research questions.

## Contributing

Contributions to enhance or extend this project are welcome. Please follow established guidelines for contributing, report any issues, or suggest improvements. Together, we can refine our understanding of success factors in sports.
