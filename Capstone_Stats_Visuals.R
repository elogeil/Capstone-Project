"Satellite Map Making (Citation Example)"

dataset <- read.csv("Traffic_Violations.csv")
library(ggplot2)
library(ggmap)

citations <- dataset[dataset$Violation.Type == 'Citation', ]
maryland_map <- get_map(location = "Maryland", maptype="satellite")
locations <- data.frame(citations$Latitude, citations$Longitude, citations$Violation.Type)
Citations_Map <- ggmap(maryland_map, extent = "device") + geom_point(aes(x=citations.Longitude,y = citations.Latitude), colour = "red", alpha = 0.1, size = 2, data = locations)

ESERO <- dataset[dataset$Violation.Type == 'ESERO', ]
locations <- data.frame(ESERO$Latitude, ESERO$Longitude, ESERO$Violation.Type)
ESERO_Map <- ggmap(maryland_map, extent = "device") + geom_point(aes(x=ESERO.Longitude,y = ESERO.Latitude), colour = "yellow", alpha = 0.1, size = 2, data = locations)

warnings <- dataset[dataset$Violation.Type == 'Warning', ]
locations <- data.frame(warnings$Latitude, warnings$Longitude, warnings$Violation.Type)
Warnings_Map <- ggmap(maryland_map, extent = "device") + geom_point(aes(x=warnings.Longitude,y = warnings.Latitude), colour = "blue", alpha = 0.1, size = 2, data = locations)

"Stats/Subsets/Pie Plots"

library(plotly)

gender <- data.frame(dataset$Gender)
gender <-  data.frame(table(gender))
gender_pie <- plot_ly(gender, labels = ~gender, values = ~Freq, type = 'pie', textinfo = 'label+percent')

race <- data.frame(dataset$Race)
race <-  data.frame(table(race))
race_piechart <- plot_ly(race, labels = ~race, values = ~Freq, type = 'pie', textinfo = 'label+percent')


license_plates <- data.frame(dataset$DL.State)
plates <-  data.frame(table(license_plates))
license_pie <- plot_ly(plates, labels = ~license_plates, values = ~Freq, type = 'pie', textinfo = 'label+percent')

car_make <- data.frame(dataset$Make)
car_make <-  data.frame(table(car_make))
carMake_pie <- plot_ly(car_make, labels = ~car_make, values = ~Freq, type = 'pie', textinfo = 'label+percent')

car_color <- data.frame(dataset$Color)
car_color <-  data.frame(table(car_color))
carColor_pie <- plot_ly(car_color, labels = ~car_color, values = ~Freq, type = 'pie', textinfo = 'label+percent')

gender_warnings <- dataset[ which(dataset$Violation.Type =='Warning'), ]
gender_warnings <- data.frame(gender_warnings$Gender)
warning_frequency <- data.frame(table(gender_warnings))
warning_pie <- plot_ly(warning_frequency, labels = ~gender_warnings, values = ~Freq, type = 'pie', textinfo = 'label+percent')

gender_citations <- dataset[ which(dataset$Violation.Type =='Citation'), ]
gender_citations <- data.frame(gender_citations$Gender)
citation_frequency <- data.frame(table(gender_citations))
citation_pie <- plot_ly(citation_frequency, labels = ~gender_citations, values = ~Freq, type = 'pie', textinfo = 'label+percent')

gender_ESERO <- dataset[ which(dataset$Violation.Type =='ESERO'), ]
gender_ESERO <- data.frame(gender_ESERO$Gender)
ESERO_frequency <- data.frame(table(gender_ESERO))
ESERO_pie <- plot_ly(ESERO_frequency, labels = ~gender_ESERO, values = ~Freq, type = 'pie', textinfo = 'label+percent')