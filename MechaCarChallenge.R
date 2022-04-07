# 3 - use library func to load dplyr pkg
library(dplyr)
library(jsonlite)
# 4. import & read in mechacr_mpg file as df
mpg_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
# 5. perf lin regression using lm() func. Pass all six vars(i.e. columns) 
# and add df created in step 4 as data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)
# 6. use summary func to determine p-val nad r^2 val
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df))

# DELIVERABLE 2
# 1. Download the Suspension_Coil.csv file
# 2.In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table
coils <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
# 3. Write an RScript that creates a total_summary dataframe using the 
total_summary <- summarize(coils, mean(PSI), median(PSI), var(PSI), sd(PSI))
# summarize() function to get the mean, median, variance, and standard 
# deviation of the suspension coil's PSI column.
# Write RScript that creates lot_summary dataframe using group_by(), summarize()
# funcs to grp each mfg lot by mean, median, variance, sd of sus.gruo coil's PSI column.
mfg_grp <- group_by(coils, Manufacturing_Lot)
lot_summary <- summarize(mfg_grp, mean(PSI), median(PSI), var(PSI), sd(PSI))