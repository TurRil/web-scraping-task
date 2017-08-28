library(tidyverse)
library(tidytext)
library(stringr)
library(lubridate)
library(wordcloud)
library(rvest)
library(magrittr)

uct_page <- read_html("http://www.uct.ac.za/")

uct_center <- html_nodes(uct_page, 'center')


# Using html in conjunction with %>% from magrittr
# You can chain subsetting:
uct_page %>% html_nodes("center") %>% html_nodes("td")
uct_page %>% html_nodes("center") %>% html_nodes("font")



uct_text <- html_text(uct_center, trim = TRUE) 
