library (rvest) 
webpage <- read_html ("http://www.bls.gov/web/empsit/cesbmart.htm") 
tbls <- html_nodes (webpage, "table") 
head (tbls)