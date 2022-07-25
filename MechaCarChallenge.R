# Deliverable 1
# Linear Regression to Predict MPG
library(dplyr)
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))

# Deliverable 2
#Create Visualizations for the Trip Analysis
suspension <- read.csv(file='suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# PSI summary
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
# lot summary
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Deliverable 3
# All lots PSI mean vs population mean
t.test(suspension$PSI,mu=1500)
# Lot1 PSI mean vs population mean
t.test(subset(suspension$PSI,suspension$Manufacturing_Lot=="Lot1"),mu=1500)
# Lot2 PSI mean vs population mean
t.test(subset(suspension$PSI,suspension$Manufacturing_Lot=="Lot2"),mu=1500)
# Lot3 PSI mean vs population mean
t.test(subset(suspension$PSI,suspension$Manufacturing_Lot=="Lot3"),mu=1500)

