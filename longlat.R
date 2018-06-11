tv2017 <- subset(Traffic_Violations, grepl("2017", Traffic_Violations$Date.Of.Stop))
mass <- c("massachusetts", "MA", "ma", "Ma", "Massachusetts")
tv2017Mass <- subset(tv2017, grepl(mass, tv2017$State))

tv2017Mass <- subset(tv2017, grepl("mass", tv2017$State, ignore.case = TRUE))
tv2017Massa <- subset(tv2017, grepl("massachusetts", tv2017$State, ignore.case = TRUE))
tv2017MD <- subset(tv2017, grepl("MD", tv2017$State, ignore.case = TRUE))

# loading the required packages
#ggmap(USAMap)+
#  geom_point(aes(x = Longitude, y = Latitude), data = tv2017,
#             alpha = .5, color="darkred", size = 3)
#ggmap(USAMap)
#
#marylandMap <- get_map("Rockville",
#                source="google", maptype = "terrain", crop=FALSE)

library(ggplot2)
library(ggmap)

lon <- Traffic_Violations[, 8]
lat <- Traffic_Violations[, 7]

usa_center = as.numeric(geocode("United States"))
USAMap = maryland <- get_map(location = "Rockville, Maryland", 
                          source = "google", maptype = "roadmap", crop = FALSE, zoom = 10)

maryland <- ggmap(USAMap)+
  geom_point(aes(x = Longitude, y = Latitude), data = tv2017,
             alpha = .5, color="darkred", size = 1)
maryland


