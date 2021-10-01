install.packages("dplyr")
library(dplyr)
mpg_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import dataset
head(mpg_table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))#generate summary statistics

suspensioncoil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset

head(suspensioncoil_table)

total_summary <- suspensioncoil_table %>% summarize(Mean = mean(PSI),Median=median(PSI),SD=sd(PSI), Variance=var(PSI), .groups = 'keep') #create summary table 

lot_summary <- suspensioncoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median=median(PSI),SD=sd(PSI), Variance=var(PSI), .groups = 'keep') #create summary table 
