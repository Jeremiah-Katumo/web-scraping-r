library(rvest)

page <- read_html ("https://en.wikipedia.org/wiki/Web_scraping")

page %>% html_nodes("h1")

page %>% 
  html_nodes("h1") %>%
  html_text()

page %>% 
  html_nodes("h2") %>%
  html_text()

paragraphs <- page %>%
  html_nodes("p")
length(paragraphs)
paragraphs[1:6]

paragraph_text <- page %>%
  html_nodes("p") %>%
  html_text()
paragraph_text[1]
