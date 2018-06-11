tv2016 <- subset(Traffic_Violations, grepl("2016", Traffic_Violations$Date.Of.Stop, ignore.case = TRUE))
tv2016C <- sum(tv2016$Violation.Type == "Citation")
tv2016W <- sum(tv2016$Violation.Type == "Warning")
tv2016C
tv2016W
subsets
#n[2][5];
n = matrix(0, 2, 5)
s = 2012
i = 1
n
while (s <= 2017){
  
  subsets <- subset(Traffic_Violations, grepl((toString(s)), Traffic_Violations$Date.Of.Stop, ignore.case = TRUE))
  n(1, i) <- sum(subsets$Violation.Type == "Citation")
  n(2, i) <- sum(subsets$Violation.Type == "Warning")
  s = s+1
  i+1
}
n

i = 1
while(i <= 5){
  n[1][i] = warning
  n[2][i] = citations
}
