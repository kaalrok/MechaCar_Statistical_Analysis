## Deliverable 1

# Step 3 Load the library
library(dplyr)

# Read in the CSV file.
MechaCar <- read.csv(file="MechaCar_mpg.csv")

# Step 3 Load the library
library(dplyr)

# Step 4. Read in the CSV file.
MechaCar <- read.csv(file="MechaCar_mpg.csv")

# Step 5. Create linear model
MechaCar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

# Step 6. Use the Summary function to determine the p-value
summary(MechaCar_lm)

# r Squared Value
MechaCar_rSquared <- summary(MechaCar_lm)$r.squared
MechaCar_rSquared


---
# Deliverable 2

# Step 2: 
MCSuspension <- read.csv(file="Suspension_Coil.csv")

# Step 3: Create a Total Summary DataFrame
total_summary <- MCSuspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary

# Step 4: Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
# summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table

lot_summary <- MCSuspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary

