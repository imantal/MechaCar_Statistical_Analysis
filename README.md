# MechaCar_Statistical_Analysis
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. The objective of this study is to use R language to perform statistical analysis on the production data to provide some insight that may help the manufacturing team. The scope of the analysis includes:  

•	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

•	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

•	Run t-tests to determine if the manufacturing lots are statistically different from the mean population

•	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers 

## Linear regression to predict MPG
The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance were collected for each vehicle. Using R, a linear model that predicts the mpg of MechaCar prototypes using several variables was designed. The results of the linear regression analysis indicates that:

•	The vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model. In other words, the vehicle length and clearance have a significant impact on mpg

•	The slope of linear model is not expected to be zero. Note that the slope coefficients for vehicle length (6.27) and clearance (3.55) are relatively large

•	According to the summary output, the r-squared value is relatively high (0.71) while the p-value is very small (significantly less than the threshold value of 0.05) suggesting a relatively strong relationship between the model (independent variable, mpg) and the dependent variables

![image](https://user-images.githubusercontent.com/103223944/180677071-41599e02-09ae-488d-bb6a-a8febf686941.png)


## Summary statistics on suspension coils
The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R language, a summary statistics table is created for the PSI data across the manufacturing lost:

![image](https://user-images.githubusercontent.com/103223944/180677094-a9db66f0-7b34-4dfc-9f30-98e76b4a7e76.png)

Similarly, a statistics table is created for the PSI data for each manufacturing lot:

![image](https://user-images.githubusercontent.com/103223944/180677105-4dbaea9b-111e-42a9-a261-7a8075985b51.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data indicates that for the total products and for Lot 1 and Lot 2, the production meets this design specification, but it does not meet this design specification for Lot 3 (Note that variance is 170 >150).

## T-Test on Suspension Coils
Using R language, t-tests are performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. 
As shown below, it was first tested if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. Considering the P-value of 0.06 which is greater than significance level of 0.05, the null hypothesis cannot be rejected. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the sample and population mean are statistically similar.
For coils in Lot 1 and Lot 2, similarly, the P-value is very high, noticeably > 0.05, meaning that the sample and population mean values are similar. However, for Lot 3 the P-value is 0.04 which is less than 0.05. As a result, we can conclude that the coils in lot 3 are statically different from the population.

![image](https://user-images.githubusercontent.com/103223944/180677210-11f46683-53f8-481f-8606-a645791d2cf8.png)
![image](https://user-images.githubusercontent.com/103223944/180677216-b13302fb-36e5-4690-b462-1021818e7d7d.png)
![image](https://user-images.githubusercontent.com/103223944/180677218-78359024-e1f7-4752-ac9b-d673c2932955.png)
![image](https://user-images.githubusercontent.com/103223944/180677227-6f526499-ca67-4d8c-852b-fa48cee79319.png)

## Study Design: MechaCar vs Competition

The following statistical study is proposed to quantify the performance of the MechaCar vehicles against performance of vehicles from other manufacturers. 

•	The price can be considered as the independent variable of interest

•	Dependent variables can be fuel efficiency, maintenance cost, horsepower, safety rating and etc.

•	Correlation analysis can be done to reduce the number of the dependent variables 

•	The two-sample t-tests can be performed for the datasets from MechaCar and the competitor for different ranges of the price values and different dependent variables, for instance maintenance cost. 

•	The null and alternative hypotheses are as follows: H0 : for each range of car prices, the mean value of the maintenance cost is lower for the competitor compared to MechaCar. Ha : The mean value of the maintenance cost is similar or larger for the competitor and if that is the case, the performance of MechaCar company is acceptable. Similar analysis can be done for different price ranges and different dependent variables.
