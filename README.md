# MechaCar_Statistical_Analysis

## Purpose

The purpose of our project is to review the production data for insights to help Mechacar's manufacturing team. Mechacar is experiencing production troubles and we will be looking to help diagnose these issues.

## Linear Regression

Below are the results of the linear regression analysis performed in order to predict MPG with vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD.

![image](https://user-images.githubusercontent.com/102189324/180646675-9a7d0552-4add-4d76-ab20-c28cb702451a.png)

Based on our analysis we know the following:

* Vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the data set.
* The slope of the linear model is not considered to be zero due to the p-value (5.35e-11) being much smaller than our significance level of 0.01, meaning we can reject the null hypothesis.
* Our model effectively predicts the mpg of Mechacar prototypes as evident by our r-squared value of 0.7149. There is a 71.5% chance future data fits into this model.

## Summary Statistics on Suspension Coils
total_summary DataFrame

![image](https://user-images.githubusercontent.com/102189324/180646715-bb60935d-f970-4da7-a6cb-33aa51eb4701.png)

lot_summary DataFrame

![image](https://user-images.githubusercontent.com/102189324/180646755-4cc86540-e1f0-4320-b2ba-9cf7667e8ab4.png)

Based on our analyses for the three manufacturing lots, we can tell that in total our three lots meet the specifications laid out before us (the variance of the suspension coils must not exceed 100 pounds per square inch) as evident by our total variance level of 62.29 pounds per square inch. However, after looking at the individual lots we can see that Lot 3's variance levels exceed our threshold by over 70 pounds per square inch.

In total our manufacturing lots meet our specifications, but Lot 3 does not. Lot 3 most likely is a big reason why Mechacar is suffering from production troubles.


## T-Tests on Suspension Coils

T-tests were performed to compare all manufacturing lots against our mean PSI of 1500 pounds per square inch. The image below has T-tests for the total number of manufacturing lots, Lot 1, Lot 2, and Lot 3 in that order.

![image](https://user-images.githubusercontent.com/102189324/180647024-093a5bfe-73da-4355-aefb-33d5ff63d4b7.png)

We can see that the t-test for the total number of lots yielded a p-value of 0.06, meaning there is not enough evidence to reject the null hypothesis. We can conclude that that the mean PSI of all manufacturing lots is not statistically different from our population mean.

Lot 1's t-test yielded a p-value of 1, indicating this population's mean is not different from our 1500 PSI mean. We fail to reject the null hypothesis.

Lot 2's t-test yielded a p-value of 0.6, again meaning we fail to reject the null hypothesis at a significance level of 0.05. This population is not statistically differen from our population mean.

Lot 3's t-test yielded a p-value of 0.041. At a significance level of 0.05 we can reject the null hypothesis and conclude this population's mean is statistically differnet from our 1500 PSI population mean.

## Study Design: Mechacar vs Competition

In today's market, gas prices continue to rise and the most fuel efficient vehicles will most likely reign supreme amongst the competition. With this, Mechacar should be testing their vehicles' highway fuel efficiency agains the competition's. We would need the fuel efficiency of each of Mechacar's prototypes and the mean fuel efficiency of the competition's vehicles on the market.

In order to perform this analsis Mechacar would need to perform a T-Test fo each of their different prototypes compared to the population mean fuel efficiency of the other vehicles on the market. In this case, the null hypotheses would be that there is no statistical difference between Mechacar's prototypes' fuel efficiency and the population mean of the rest of the market. The alternative hypotheses would state that there is a statistical difference between Mechacar's prototypes' fuel efficiency and the population mean of the rest of the market.

If we fail to reject the null hypotheses, we can say that Mechacar's fuel efficiency is on par with the competition's. If we reject the null, we can state that Mechacar's fuel efficiency is statistically different then the competition's.
