#create histogram of number of songs per year
Swift$date <- as.Date(Swift$date, format = "%Y-%m-%d")
Swift$year <- format(Swift$date, "%Y")
dev.new() 
par(mar = c(10, 4, 4, 2) + 0.1, cex.axis = 0.6)
hist(as.numeric(Swift$year),
     breaks = seq(min(as.numeric(Swift$year)), max(as.numeric(Swift$year)), by = 1),
     xlab = "Year",
     ylab = "Count",
     main = "Number of Occurrences per Year",
     xaxt = "n")
axis(1, at = unique(as.numeric(Swift$year)), labels = unique(Swift$year), las = 2)