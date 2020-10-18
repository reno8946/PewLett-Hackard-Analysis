# PewLett_Hackard_Analysis

## Overview of PewLett Hackard Analysis
The purpose is to determine the number of retiring employees per title of position at the company, and identify employees who are eligible to participate in a mentorship program. The report will then help prepare the manager for the “silver tsunami” as many current employees reach retirement age.

## Resources

-Software: PostgreSQL for Windows x86-64 Version 11.9

## PewLett Hackard Analysis Results

Here is the ERD (Entity Relationship Diagram) we created during the module that was used for the framework of this challenge: 

![image](https://user-images.githubusercontent.com/70483866/96363834-40ce5880-10fc-11eb-8922-46dfbeffb217.png)

Based on the analysis we performed, we compiled the following [counts by title](https://github.com/reno8946/PewLett-Hackard-Analysis/blob/main/Data/retirement_titles.csv) of who will be eligible for retirement:

* 13,651 Senior Engineers
* 12,872 senior staff
* 2,711 Engineers
* 2,022 staff
* 1,609 technique leaders
* 251 Assistant Engineers
* 2 Managers 

Furthermore, based on the directive to see who would be [eligible](https://github.com/reno8946/PewLett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv) for joining a mentoring program, we found that 1,549 employees that are the verge of retiring fit the criteria for the program.

      
## PewLett Hackard Analysis Summary

Based on the analysis we performed, there are some concerns and potential additional queries that we could do to provide more information. One concern is that there is an incredibly large number of retirement-eligible employees that are senior members (Engineers and Staff), which amounts to 80%. However, only a little over 1,500 retirement-eligible employees are eligible to become mentors. One additional query we could do would be to tweak the mentorship eligibility criteria and see how many additional employees they could add to better offset the "silver tsunami".

A second additional would be to look into how many employees are able to mentor based on role instead of age. Looking at the first additional query from a different perspective, we could see if there are ways in which PH could improve their new mentorship program.
