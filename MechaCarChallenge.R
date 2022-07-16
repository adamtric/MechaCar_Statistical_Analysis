# Deliverable 1

library(dplyr) #Load dplyr package

mechacar <- read.csv('Mechacar_mpg.csv') #Import Mechacar_mpg dataset

lm(mpg ~ + vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar) #Perform Linear Regression

mechacar_lin_reg <- lm(mpg ~ + vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar) #Add linear regression to a variable

summary(mechacar_lin_reg) #Summary of linear regression

# Deliverable 2

suspension_coil <- read.csv('Suspension_Coil.csv') #Import Suspension_Coil dataset

total_summary <- suspension_coil %>% summarize('Mean' = mean(PSI), 'Median' = median(PSI), 'Variance' = var(PSI), 'SD' = sd(PSI)) #Summarize the suspsension_coil data

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize('Mean' = mean(PSI), 'Median' = median(PSI), 'Variance' = var(PSI), 'SD' = sd(PSI)) #Create PSI summary by lot

# Deliverable 3

t.test(suspension_coil$PSI, mu = 1500) #T-Test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

t.test(subset(suspension_coil, Manufacturing_Lot == 'Lot1')$PSI, mu = 1500) #T-test to determine if PSI at Lot 1 is statistically different

t.test(subset(suspension_coil, Manufacturing_Lot == 'Lot2')$PSI, mu = 1500) #T-test to determine if PSI at Lot 2 is statistically different

t.test(subset(suspension_coil, Manufacturing_Lot == 'Lot3')$PSI, mu = 1500) #T-Test to determine if PSI at Lot 3 is statistically different