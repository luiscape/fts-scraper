#### FTS Parser ####
# Author: Luis Capelo | @luiscape | capelo@un.org

# Check the documentation here: http://fts.unocha.org/api/Files/APIUserdocumentation.htm

require(RCurl)
require(jsonlite) # works well in parsing the resulting XML.

fts.query <- function() {
  url <- c("http://fts.unocha.org/api/v1/Contribution/emergency/16440.html")
  x <- fromJSON(getURLContent(url))
  write.csv(x, file = paste("data/fts-",'x.csv', sep = ""), row.names = FALSE)
  return(x)
}