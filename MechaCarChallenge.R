# **************** DELIVERABLE-1 ******************************

# Load package
library(dplyr)

# Read CSV file into dataframe
MechaCar_mpg <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
head(MechaCar_mpg)

# Perform linear regression 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data = MechaCar_mpg)

# Summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data = MechaCar_mpg))

# **************** DELIVERABLE-2 ******************************

# Read CSV file as table
Suspension_Coil <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Stat summary with summarize()
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Stat summary with group_by()
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep') 

# **************** DELIVERABLE-3 ******************************

# t-test for all the lots, pop mu = 1500 psi
t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI))

# t-test for Lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))

# t-test for Lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))

# t-test for Lot 3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))






