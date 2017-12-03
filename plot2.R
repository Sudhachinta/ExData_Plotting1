## Plot 2 - line graph
## type indicates lines, ~ makes the graph aligned in the proper manner
plot(SData$Global_active_power~SData$Datetime, type = 'l', ylab = "Global Active Power (Kilowatts)", xlab = " " )

## Save plot 2
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()