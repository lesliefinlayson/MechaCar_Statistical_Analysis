install.packages("dplyr")
library(dplyr)
mpg_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import dataset
head(mpg_table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))#generate summary statistics

suspensioncoil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset

head(suspensioncoil_table)

total_summary <- suspensioncoil_table %>% summarize(Mean = mean(PSI),Median=median(PSI),SD=sd(PSI), Variance=var(PSI), .groups = 'keep') #create summary table 


t.test((suspensioncoil_table$PSI),mu=1500) #compare sample versus population means

Lot1 <- subset(suspensioncoil_table, Manufacturing_Lot == "Lot1")
t.test((Lot1$PSI), mu=1500)
               
Lot2 <- subset(suspensioncoil_table, Manufacturing_Lot == "Lot2")
t.test((Lot2$PSI), mu=1500)

Lot3 <- subset(suspensioncoil_table, Manufacturing_Lot == "Lot3")
t.test((Lot3$PSI), mu=1500)
