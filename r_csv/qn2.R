#install.packages("XML")
#install.packages("RCurl")

#Clear environment
rm(list=ls())

library(XML)
library(xml2)
library(RCurl)
library(rvest)


#rvest#

url <- "https://en.wikipedia.org/wiki/Comma-separated_values"
readurl <- read_html(url) #read the webpage 
rtables <- html_nodes(readurl,"table") #extracts elements under <table> node
read_cars <- html_table(rtables[2])
cars_df <- as.data.frame(read_cars) #put into data frame
cars_df

write.csv(cars_df,"C:\\Users\\chery\\ST2195\\st2915_assignment_2\\r_csv\\cars.csv")

#XML#
'
url <- xmlParse("https://en.wikipedia.org/wiki/Comma-separated_values")
XML_tables <- readHTMLTable(url)
XML_tables

length(XML_tables) #how many tables extracted from webpage
xmlToDataFrame(XML_tables)
str(XML_tables) 
'