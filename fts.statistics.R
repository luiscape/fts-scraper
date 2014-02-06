#### Statistics of the FTS Parser ####


x$decision_date <- as.Date(x$decision_date)

ggplot(x, aes(decision_date)) + geom_line(stat = "bin")
