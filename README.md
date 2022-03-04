# MechaCar_Statistical_Analysis
R and its statistical test capabilities

## Background
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

## Deliverable 1: Linear Regression to Predict MPG
    Preform multiple linear regression analysis to identify which variables in the data set predict the mpg of MechaCar prototypes <br />

    ![Mecha Car Linear Model Summary](./Images/Deliverable1_Results.png)

    - **Q1: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**<br/>
        - **A1:** Using the MechaCar_mpg dataset, vehicle_length and ground_clearance (as well as intercept) are statistically unlikely to providerandom amounts of variance to the linear model. In other words the vehicle_length and ground_clearance have a significant impact on mpg. <br/>
        
    - **Q2: Is the slope of the linear model considered to be zero? Why or why not?**
    - **A2:** The intercept is statistically significant It is less than 0.05, and not zero. This indicates that the intercept term explains a significant amount of variability in the dependent variable when all independent variables are equal to zero. It could mean that the significant features (such as vehicle_weight and ground_clearance) may need scaling or transforming to help improve the preditive power of the model; or there are other variables that can help explain the variability of our dependent variable (mpg) that have not been included in the model. <br/>

    - **Q3: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
    - **A3:** The Multiple R-squared value is 0.71. While the p-value remained significant (very small) indicating the model does an adequate job of predicting mpg.<br/>
   
## Deiverable 2: Summary Statistics on Suspension Coils
    Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

    ![Coil PSI Variance for all Lots](./Images/Deliverable2_Results.png)<br/>

    - **Q1: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**
    - **A1:** In Total the specifications are met with a variance of 62.29 (less than 100).

    ![Coil PSI Variance Grouped by Lot](./Images/Deliverable2_LotSummary.png)<br/>
    - **A2:** 


3. Deliverable 3: T-Test on Suspension Coils
    Run t-tests to determine if the manufacturing lots are statistically different from the mean population

4. Deliverable 4: Design a Study Comparing the MechaCar to the Competition
    Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you'll write a summary interpretation of the findings.

