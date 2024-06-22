library (rvest)
library(XML)

url <- "http://www.bls.gov/web/empsit/cesbmart.htm"

webpage <- read_html("http://www.bls.gov/web/empsit/cesbmart.htm")

xml_table <- readHTMLTable(url)

tbls <- html_nodes(webpage, "table") 
head (tbls)

# subset list of table nodes for items 3 & 4 
tbls_ls <- webpage %>% 
  html_nodes("table") %>% 
  .[3:4] %>% 
  html_table(fill = TRUE)

# empty list to add table data to 
tbls2_ls <- list () 
# scrape Table 2. Nonfarm employment… 
tbls2_ls$Table1 <- webpage %>% 
  html_nodes("#Table2") %>% 
  html_table(fill = TRUE) %>% 
  .[[1]] 
# Table 3. Net birth/death… 
tbls2_ls$Table2 <- webpage %>% 
  html_nodes("#Table3") %>% 
  html_table() %>% 
  .[[1]] 
str(tbls2_ls)