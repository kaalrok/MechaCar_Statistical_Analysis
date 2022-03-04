### Deliverable 1 ###################

# Step 3 Load the library
library(dplyr)

# Step 4. Read in the CSV file.
# Working Path set to the Data Folder
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Step 5. Create linear model
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

# Step 6. Use the Summary function to determine the p-value
summary(Mecha_lm)

# r Squared Value
MechaCar_rSquared <- summary(Mecha_lm)$r.squared
MechaCar_rSquared


---
### Deliverable 2 ###################

# Step 2: 
# Working Path set to the Data Folder
Suspension_Coil <- read.csv(file="Suspension_Coil.csv",check.names = F,stringsAsFactors = F)

# Step 3: Create a Total Summary DataFrame
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary

# Step 4: Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
# summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary


### Deliverable 3 ###################
# Note: Level of significance is .05

# Ho: mu = 1500
# Ha: mu <> 1500

t.test(Suspension_Coil$PSI, mu=1500)

# Analysis - p-value (0.06) greater than 0.05 therefore we fail to reject Ho

#t.test by lots
# Lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# Lot 2
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# Lot 3
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)



