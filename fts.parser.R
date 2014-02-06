#### FTS Parser ####
# Author: Luis Capelo | @luiscape | capelo@un.org

# Check the documentation here: http://fts.unocha.org/api/Files/APIUserdocumentation.htm

require(RCurl)
require(jsonlite)

a <- c("http://fts.unocha.org/api/v1/Contribution/emergency/16440.html")
x <- fromJSON(getURLContent(a))

