library("kableExtra")
library("tidyverse")

function(input,output,session){
  output$star_narrow <- function () {
    starwars %>%
      select(name, species, homeworld, height) %>%
      arrange(desc(height)) %>%
      kable() %>% #table w/ info name,species etc.
      kable_styling(bootstrap_options = c ("striped","hover")) #created styling for table
  }
  output$star_wide <- function () {
    starwars %>%
      select(name:homeworld) %>%
      arrange(desc(height)) %>%
      kable() %>% 
      kable_styling(bootstrap_options = c ("striped","hover")) 
    
  }
  output$star_lists <- function () {
    
  }
} 