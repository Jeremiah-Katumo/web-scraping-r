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
paragraph_text[5]
paragraph_text[6]

unordered_list <- page %>%
  html_nodes("ul") %>%
  html_text()
length(unordered_list)
unordered_list[1]

list <- page %>%
  html_nodes("li") %>%
  html_text()
list[1:10]
list[100:150]

div <- page %>%
  html_nodes("div") %>%
  html_text()
div
