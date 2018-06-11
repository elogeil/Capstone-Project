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
                          source = "google", maptype = "roadmap", crop = FALSE, zoom = 11)

marylandAll <- ggmap(USAMap)+
  geom_point(aes(x = Longitude, y = Latitude), data = tv2017,
             alpha = .1, color="darkred", size = 1)
marylandBlack <- ggmap(USAMap)+
  geom_point(aes(x = Longitude, y = Latitude), data = tv2017Black,
             alpha = .1, color="darkred", size = 1)
marylandWhite <- ggmap(USAMap)+
  geom_point(aes(x = Longitude, y = Latitude), data = tv2017White,
             alpha = .1, color="darkred", size = 1)
marylandAsian <- ggmap(USAMap)+
  geom_point(aes(x = Longitude, y = Latitude), data = tv2017Asian,
             alpha = .1, color="darkred", size = 1)
marylandNative <- ggmap(USAMap)+
  geom_point(aes(x = Longitude, y = Latitude), data = tv2017Native,
             alpha = .1, color="darkred", size = 1)
marylandHispanic <- ggmap(USAMap)+
  geom_point(aes(x = Longitude, y = Latitude), data = tv2017Hispanic,
             alpha = .1, color="darkred", size = 1)
marylandOther <- ggmap(USAMap)+
  geom_point(aes(x = Longitude, y = Latitude), data = tv2017Other,
             alpha = .1, color="darkred", size = 1)

marylandBlack
marylandWhite
marylandAsian
marylandHispanic
marylandNative
marylandOther

densityAll <- ggmap(USAMap, extent = "device") + geom_density2d(data = tv2017, 
      aes(x = Longitude, y = Latitude), size = 0.5) + 
        stat_density2d(data = tv2017, 
        aes(x = Longitude, y = Latitude, fill = ..level.., alpha = ..level..), size = 0.01, 
        bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
          scale_alpha(range = c(0, 0.3), guide = FALSE)
densityAll

densityBlack <- ggmap(USAMap, extent = "device") + geom_density2d(data = tv2017Black, 
      aes(x = Longitude, y = Latitude), size = 0.5) + 
      stat_density2d(data = tv2017Black, 
      aes(x = Longitude, y = Latitude, fill = ..level.., alpha = ..level..), size = 0.01, 
      bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
      scale_alpha(range = c(0, 0.3), guide = FALSE)
densityBlack

densityWhite <- ggmap(USAMap, extent = "device") + geom_density2d(data = tv2017White, 
  aes(x = Longitude, y = Latitude), size = 0.5) + 
  stat_density2d(data = tv2017White, 
  aes(x = Longitude, y = Latitude, fill = ..level.., alpha = ..level..), size = 0.01, 
  bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
densityWhite

densityAsian <- ggmap(USAMap, extent = "device") + geom_density2d(data = tv2017Asian, 
  aes(x = Longitude, y = Latitude), size = 0.5) + 
  stat_density2d(data = tv2017Asian, 
  aes(x = Longitude, y = Latitude, fill = ..level.., alpha = ..level..), size = 0.01, 
  bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
densityAsian

densityHispanic <- ggmap(USAMap, extent = "device") + geom_density2d(data = tv2017Hispanic, 
  aes(x = Longitude, y = Latitude), size = 0.5) + 
  stat_density2d(data = tv2017Hispanic, 
  aes(x = Longitude, y = Latitude, fill = ..level.., alpha = ..level..), size = 0.01, 
  bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
densityHispanic

densityOther <- ggmap(USAMap, extent = "device") + geom_density2d(data = tv2017Other, 
  aes(x = Longitude, y = Latitude), size = 0.5) + 
  stat_density2d(data = tv2017Other, 
  aes(x = Longitude, y = Latitude, fill = ..level.., alpha = ..level..), size = 0.01, 
  bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
densityOther