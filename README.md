# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![D1-results](https://user-images.githubusercontent.com/94420548/162107514-c07d78fe-62ed-4ab0-9ade-4b68b388e801.png)

According to the results, vehicle length and ground clearance have a non-random amount of variance to the mpg values of the MechaCar dataset. The extremely low P-value is what tells us this. Additionally, the slope is not zero because none of the coefficients have an estimated value of zero. This linear model somewhat effectively predicts the mpg of MechaCar prototypes, as can be seen from the adjusted r squared value of 68.25%.

## Summary Statistics on Suspension Coils

#### Total Summary
![d2-results2](https://user-images.githubusercontent.com/94420548/162109573-2c92948e-faf3-4007-9d8e-8cdad39ec5c4.png)

#### Lot Summary
![D2-results](https://user-images.githubusercontent.com/94420548/162109173-64a7a2ba-72b4-4cf7-ba7c-41a3013f9ff7.png)

MechaCar design specifications call for suspension coils not to exceed 100 PSI. According to the results, the manufacutring data does not quite meet this specification. All 3 lots together (Total Summary), and lots 1 and 2 are within the design specifications. However, lot 3 has a variance of well over 100 PSI. Additionally, with lot 3 being so far out of range, it is highly impacting the Total Summary's variance.
## T-tests on Suspension Coils

![overallTtest](https://user-images.githubusercontent.com/94420548/162110602-4e9efe46-7b1f-433a-9fd6-699a66916091.png)

Across all manufacturing lots, we can see from the p-value being greater than 0.05 that there is not a statistical difference in PSI from the population mean of 1500psi.

![lotTtest](https://user-images.githubusercontent.com/94420548/162110644-aaf59adc-27af-46a7-81af-fea7be3abf4d.png)

In lots 2 and 3, we can see from the p-value being greater than 0.05 that there is not a statistical difference in PSI from the population mean of 1500psi. However, in lot 3 we can see that there *is* a statistical difference in PSI from the population mean of 1500psi.
## Study Design: MechaCar vs Competition
