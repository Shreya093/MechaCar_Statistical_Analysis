# MechaCar_Statistical_Analysis

Statistics and R

## Overview

1. Load, clean up, and reshape datasets using tidyverse in R.
2. Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
3. Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
4. Plot and identify distribution characteristics of a given dataset.
5. Formulate null and alternative hypothesis tests for a given data problem.
6. Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
7. Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
8. Implement and evaluate a chi-squared test for a given dataset.
9. Identify key characteristics of A/B and A/A testing.
10. Determine the most appropriate statistical test for a given hypothesis and dataset.

## Linear Regression to Predict MPG

The MechaCar dataset contains a sample size of 50 prototypes measuring the miles per gallon across multiple variables. The linear regression was calculated using R in RStudio.

1. RStudio v.4.1.2 
2. dplyr library v.1.0.7

### Linear Regression

We performed linear regression on several columns of a dataset to get the linear regression value.

<img width="820" alt="D1-Step-5 Perform Linear Reg" src="https://user-images.githubusercontent.com/88418201/144669347-c0dfd1a9-8b34-4048-ba1a-76fbd4a27472.png">

### Summary for the Linear Regression Model

We have used the summary() function, determine the p-value and the r-squared value for the linear regression model of the dataset. In this distribution of the residuals, the dataset fits in with the normal parameters, where the absolute value of the min and max are comparable |-19.47|~|18.58| and the median -.07 is close to zero.

<img width="820" alt="D1-Step-6 Summary Stat" src="https://user-images.githubusercontent.com/88418201/144669588-0b6663de-bb56-45a5-ac26-54f31a6898d7.png">

**1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

A 95% level of confidence was predetermined, meaning the p-value should be compared to alpha = 0.05 level of significance to verify if statistically significant.

Coefficients:
mpg: 0 < 0.05, statistically significant, non-random amount of variance
vehicle length: 0 < 0.05, statistically significant, non-random amount of variance
vehicle weight: 0.08 > 0.05 not statistically significant, random amount of variance
spoiler angle: 0.31 > 0.05 not statistically significant, random amount of variance
ground clearance: 0 > 0.05 statistically significant, non-random amount of variance
AWD: 0.19>=0.05 not statistically significant, random amount of variance

In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.

**2. Is the slope of the linear model considered to be zero? Why or why not?**

Converting from scientific notation, all of the slopes of the variables are shown to be non-zero even though some are close to zero:
Coefficients:
vehicle length: 6.267
vehicle weight: 0.001
spoiler angle: 0.069
ground clearance: 3.546
AWD: -3.411

The multiple linear regression formula for mpg = -0.01 + 6.267(vehicle length)+0.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.

**3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

R-squared is 0.7149, which is a strong correlation for the dataset and shows the dataset is an effective dataset. However, r-squared is not the only consideration for effectiveness. There may be other variables not included in the dataset contributing to the variation in the mpg.

## Summary Statistics on Suspension Coils

### Manufacturing Total Summary

Below is the summary statistics of all of the manufacturing lots. The mean is 1498.78 for this sample and the population mean was determined to be 1500.

<img width="450" alt="tot_summary" src="https://user-images.githubusercontent.com/88418201/144670510-e105fe4d-a0a5-4923-8d21-52ccdb363093.png">

### Summary by Manufacturing Lot Number

The means of the lot numbers are similar to the population mean and the sample mean.

<img width="450" alt="lot_summary" src="https://user-images.githubusercontent.com/88418201/144670586-8d437657-cc4c-4e6a-b2a1-483fc8cd103e.png">

**1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

The variance for the total manufacturing lot is 62 < 100, which is within the expected design specifications of staying under 100 PSI. However, when reviewing the data by Lot number, Lot 3 is a large contributing factor to the variance being high. Lot 3 shows a variance of 170 > 100 and does not meet the design specifications. Lot 1 and Lot 2 have significantly lower variance, 1 and 7 respectively.


## T-Tests on Suspension Coils

### T-test for all Lots :

All Manufacturing Lots: p-value = 0.6028, alpha = 0.05
0.60 > 0.05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

<img width="450" alt="D3-t-test" src="https://user-images.githubusercontent.com/88418201/144670862-59d0bae4-49d6-46ea-b7e9-681ad7a1df4a.png">

### T-test for Lot 1 :

Lot 1: p-value = 1, alpha = 0.05
1 > 0.05, which means Lot 1 is not statistically significant from the normal distribution and norm.

<img width="850" alt="D3-t-test-lot1" src="https://user-images.githubusercontent.com/88418201/144670966-b6f3e9ec-c129-4a1f-916a-490feb572b6c.png">

### T-test for Lot 2 :

Lot 2: p-value = 0.6072, alpha = 0.05

0.60 > 0.05, which means Lot 2 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

<img width="850" alt="D3-t-test-lot2" src="https://user-images.githubusercontent.com/88418201/144671055-67f788f4-44f9-475d-b972-4b5bbd005774.png">

### T-test for Lot 3 :

Lot 3: p-value = 0.04168, alpha = 0.05
0.04 < 0.05, which means it is statistically significant from the normal distribution and normality cannot be assumed. However, the mean falls within the 95% confidence interval.

<img width="850" alt="D3-t-test-lot3" src="https://user-images.githubusercontent.com/88418201/144671451-9af5c097-cd05-445d-ba60-66001b21acf5.png">

The overall manufacturing: Lot 1 and Lot 2 show a normal distribution. Therefore, there is not sufficient evidence to reject the null hypothesis, which shows the two means are statistically similar.

## Study Design: MechaCar vs Competition

When comparing MechaCar to its competitor’s other metrics that could be of interest to a consumer could include cost, car color, city fuel efficiency, highway fuel efficiency, horsepower, maintenance cost, or safety rating.

**1. What metric or metrics are you going to test?**

The next metrics to test should be the safety rating, horsepower, and highway fuel efficiency, which address some safety concerns of consumers.

**2. What is the null hypothesis or alternative hypothesis?**

The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.

**3. What statistical test would you use to test the hypothesis? And why?**

Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.

**4. What data is needed to run the statistical test?**

A random sample of n > 30 for MechaCar and their competitor, would need to be collected including the safety ratings, highway fuel efficiency, and horsepower plus running the data through RStudio.



