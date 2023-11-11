# Outliers in Canadian Hockey Players: An Analysis Inspired by Malcolm Gladwell's "Outliers"

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
- [License](#license)

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

Our analysis reveals a statistically significant difference in birth quarter distributions for Canadian players, affirming the impact of birth months on NHL success. The project's findings challenge traditional narratives of merit-based success.

## Usage

To utilize this code or reproduce the analysis, follow the steps outlined in the [Setup](#setup) section. Feel free to adapt the code for different datasets or explore related research questions.

## Contributing

Contributions to enhance or extend this project are welcome. Please follow established guidelines for contributing, report any issues, or suggest improvements. Together, we can refine our understanding of success factors in sports.
