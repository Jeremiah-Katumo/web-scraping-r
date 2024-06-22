library(rvest)
library(tidyverse)

page <- read_html ("https://en.wikipedia.org/wiki/Web_scraping")

#### Cleaning Up the scraped elements text
page %>% 
  html_nodes ("#mw-content-text > div:nth-child(22)") %>% 
  html_text ()

page %>%
  html_nodes("mw-content-text") %>%
  html_text() %>%
  strsplit(split = "\n") %>%
  unlist() %>%
  .[. != ""]

body %>% 
  str_replace_all (pattern = "\n", replacement = " ") %>% 
  str_replace_all (pattern = "[\\^]", replacement = " ") %>% 
  str_replace_all (pattern = "\"", replacement = " ") %>% 
  str_replace_all (pattern = "\\s+", replacement = " ") %>% 
  str_trim (side = "both") %>% 
  substr (start = nchar (body_text)-700, stop = nchar (body_text))
