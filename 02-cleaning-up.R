library(rvest)

page <- read_html ("https://en.wikipedia.org/wiki/Web_scraping")

#### Cleaning Up the scraped elements text
page %>%
  html_nodes("mw-content-text") %>%
  html_text() %>%
  strsplit(split = "\n") %>%
  unlist() %>%
  .[. != ""]
