tv2017 <- subset(Traffic_Violations, grepl("2017", Traffic_Violations$Date.Of.Stop))
mass <- c("massachusetts", "MA", "ma", "Ma", "Massachusetts")
tv2017Mass <- subset(tv2017, grepl(mass, tv2017$State))

tv2017Mass <- subset(tv2017, grepl("mass", tv2017$State, ignore.case = TRUE))
tv2017Massa <- subset(tv2017, grepl("massachusetts", tv2017$State, ignore.case = TRUE))
tv2017MD <- subset(tv2017, grepl("MD", tv2017$State, ignore.case = TRUE))
