#### Function for plotting FTS. 


# Number of reports using facets.
ggplot(fts.syria, aes(decision_date, amount)) + theme_bw() +
  geom_bar(stat = 'identity', aes(fill = donor)) + 
  #   geom_area(stat = 'bin', fill = '#0988bb', alpha = .3) +
  ylab('Amount') + xlab('Date') +
  scale_x_date(breaks = date_breaks(width = "1 month")) + 
#   facet_wrap(~ country) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1), 
        panel.grid = element_line(colour = "white"), 
        panel.grid.minor = element_line(colour = "white"),
        panel.grid.major = element_line(colour = "white"),
        panel.border = element_rect( colour = "white"),
        panel.border = element_rect(fill = NA, colour = NA),
        strip.background =  element_rect(fill = "#d3d3d3", colour = NA),
        axis.text.x = element_text(angle = 90, hjust = 1)
  )
