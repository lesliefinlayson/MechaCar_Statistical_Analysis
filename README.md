# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Goal:  using linear regression, determine what metrics affect vehicle performance, as measured by vehicle's mpg.

<img width="425" alt="2021-09-30 (3)" src="https://user-images.githubusercontent.com/84471904/135563439-645c4a82-2b54-4d6f-823b-23e45a00ed3c.png">


Question 1:  Which variables/coefficients provide a non-random amount of variance to the mpg values in the dataset

_This is determined by looking at the individual variable p-values.  In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model_

•	Vehicle length is much smaller than our assumed significance level of 0.05% at 2.60e-12.

•	Ground clearance is much smaller than our assumed significance level of 0.05% at 5.21e-08.

Question 2:  Is the slope of the linear model considered to be zero

_Because this is a multiple linear regression analysis, the equation is not a simple y = mx + b, where m is the slope.  Instead, the multiple linear regression equation becomes y = m1x1 + m2x2 + … + mnxn + b, for all independent x variables and their m coefficients._

Question 3:  Does this linear model effectively predict mpg of MechaCar prototypes 

The r-squared value for the multipe linear regression is .71.  THis suggests that there is a strong positive correlation and we can anticipate that the linear model will perform well.  

## Summary Statistics on Suspension Coils

Background:  The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Question 1: Does the current manufacturing data meet this design specification for all manufacturing lots in total?

<img width="161" alt="2021-10-01 (2)" src="https://user-images.githubusercontent.com/84471904/135667611-51dce5fa-be4a-472b-948a-1ddd53a627be.png">

Looking at the total summary, the variance is approximately 62.29 and therefore meets the design specification.


Question 2: Does the current manufacturing data meet this design specification for each lot individually? 

<img width="235" alt="2021-10-01 (3)" src="https://user-images.githubusercontent.com/84471904/135667793-f9bd88a8-e681-4c66-bd25-21d654b68b96.png">

When looking at the individual lots, the first two lots meet the design specifications at a variance of approximately .98 PSI and 7.47 PSI respectively.  Lot 3, however shows a variance of approximately 170.29 and exceeds the manufacturer's specifications.  

## T-Tests on Suspension Coils

Question1:  Is the PSI for all 3 manufacturing lots combined statistically different from the population mean of 1,500 PSI?

Results:

<img width="241" alt="2021-10-01 (5)" src="https://user-images.githubusercontent.com/84471904/135694695-180bb59b-3285-41f0-b80f-4de89987a61f.png">

With a significance level of .05 percent, the p-value of .06 is above the significance level.  There is not sufficient evidence to reject the null hypotheses.  The two means are statistically similar.  



























