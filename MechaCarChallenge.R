# 1. download mechacar csv
# 2. create new RScript and name it MechaCarChallenge.RScript
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

# DELIVERABLE 3
# 1. write RScript using t.test() function to determine if PSI across all 
# mfg lots is statistically diff from pop mean of 1,500 lbs/sq. inch
## mfg lots
Lot1 <- subset(mfg_grp, Manufacturing_Lot == "Lot1")
Lot2 <- subset(mfg_grp, Manufacturing_Lot == "Lot2")
Lot3 <- subset(mfg_grp, Manufacturing_Lot == "Lot3")
## means
m_lot1 <- mean(Lot1[['PSI']])
m_lot2 <- mean(Lot2[['PSI']])
m_lot3 <- mean(Lot3[['PSI']])
## t-test
t.test(coils$PSI,mu=1500)
# t.test(lot_summary(mean), 1500)
# 2.Write 3 more RScripts using t.test() function w/ subset() argument to 
# determine if PSI for each mfg lot is statistically diff from pop mean 
  # of 1,500 lbs/sq. inch.
t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)

# DELIVERABLE 4
# 1. In your README, create a subheading ## Study Design: MechaCar vs 
# Competition.
#2. Write short description of statistical study that can quantify how 
# MechaCar performs against competition. In your study design, think 
# critically about what metrics would be of interest to consumer:
# (EX: cost, city or highway fuel efficiency, horsepower, maintenance cost, safety rating)
# Address following questions:
  # What metric or metrics are you going to test?
  # What is the null hypothesis or alternative hypothesis?
  # What statistical test would you use to test the hypothesis? And why?
  # What data is needed to run the statistical test?