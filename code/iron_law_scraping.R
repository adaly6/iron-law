# Create a vector of NHL team names
nhl_teams <- c("ANA/anaheim-ducks", "ARI/arizona-coyotes", "BOS/boston-bruins", "BUF/buffalo-sabres", "CGY/calgary-flames", 
               "CAR/carolina-hurricanes", "CHI/chicago-blackhawks", "COL/colorado-avalanche", "CLB/columbus-blue-jackets", 
               "DAL/dallas-stars", "DET/detroit-red-wings", "EDM/edmonton-oilers", "FLA/florida-panthers", "LA/los-angeles-kings", 
               "MIN/minnesota-wild", "MON/montreal-canadiens", "NSH/nashville-predators", "NJ/new-jersey-devils", 
               "NYI/new-york-islanders", "NYR/new-york-rangers", "OTT/ottawa-senators", "PHI/philadelphia-flyers", 
               "PIT/pittsburgh-penguins", "SJ/san-jose-sharks", "STL/st-louis-blues", "TB/tampa-bay-lightning", 
               "TOR/toronto-maple-leafs", "VAN/vancouver-canucks", "LV/vegas-golden-knights", 
               "WAS/washington-capitals", "WPG/winnipeg-jets")

# Load necessary library
install.packages("xml2")
library(xml2)

# Initialize empty vectors
all_player_name <- character(0)
all_position <- character(0)
all_birthdate <- character(0)
all_birthplace <- character(0)

# Loop through each NHL team
for (team in nhl_teams) {
  print(team)
  
  # Construct the URL
  url <- paste("https://www.cbssports.com/nhl/teams/", team, "/roster/", sep = "")

  # Fetch the HTML content of the page
  webpage <- read_html(url)
  
  # Extract player information (you may need to adjust the CSS selectors based on the structure of the website)
  player_name <- xml_text(xml_find_all(webpage,"//table/tbody/tr/td[2]/span[2]/span/a"))
  player_position <- xml_text(xml_find_all(webpage,"//table/tbody/tr/td[3]"))
  player_birthdate <- xml_text(xml_find_all(webpage,"//table/tbody/tr/td[7]"))
  player_birthplace <- xml_text(xml_find_all(webpage,"//table/tbody/tr/td[8]"))
  
  # Append the data to the vectors
  all_player_name <- c(all_player_name, player_name)
  all_position <- c(all_position, player_position)
  all_birthdate <- c(all_birthdate, player_birthdate)
  all_birthplace <- c(all_birthplace, player_birthplace)
  
  random_value <- sample(5:15, 1)
  Sys.sleep(random_value)
}

# Print the collected data
NHL_rosters <- data.frame(
  Name = all_player_name,
  Position = all_position,
  Birthdate = all_birthdate,
  Birthplace = all_birthplace
)

NHL_rosters$Name <- trimws(NHL_rosters$Name)
NHL_rosters$Position <- trimws(NHL_rosters$Position)
NHL_rosters$Birthdate <- trimws(NHL_rosters$Birthdate)
NHL_rosters$Birthplace <- trimws(NHL_rosters$Birthplace)

write.csv(NHL_rosters, "NHL_rosters", row.names = FALSE)











