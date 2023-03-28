#Questions for Dashboard

##Selected Topic and Reasoning:

The selected topic is to combine weather and COVID-19 datasets to determine the effect of weather on the COVID-19 infection rate. The reasoning behind this selection is to investigate whether there is any relationship between weather and the spread of COVID-19. By using multiple linear regression, the team aims to determine the impact of weather on the COVID-19 infection rate.


##Description of the data:
The team used COVID-19 data from Kaggle, which included 1933 and 2484 data points for the dense and sparse county groups, respectively. The data included columns for date, county, state, total_cases, new_cases, future_delta7, and future_delta14. Additionally, weather data was collected for each county by day, including average temperature, precipitation, windspeed, and humidity.

###Questions the team originally planned to answer with the project:

The team planned to answer the following questions through their project:

•	Does weather have a significant impact on COVID-19 cases seen in the next week?
•	Can machine learning models be used to predict the number of COVID-19 cases based on temperature?
•	How does the weather in the past impact COVID-19 cases in the future?

##Dashboard Explainations:

##Worksheet 1: 
the first graph which measures different covid parameters globally. I created a parameter for this shown on the right-hand side as “Covid Parameters”. You can select various measures from this parameter and see them such as ‘Delta 14’ is present in the view now.

##Worksheet 2:
This area chart shows the number of new cases by day. In the title I added the total number of new cases and below that is present percent difference between days. This calculation varies day to day while I just calculated for the latest vs previous day.

##Worksheet 3:
This is the same as worksheet 2, the difference is I used total cases in this but new cases in the previous chart.

##Worksheet 4:
This is a bar chart for different states showing weather measures. I also created a parameter for this named as ‘Weather Parameter’. This parameter will allow you to bring different weather elements into the view of this bar chart.

##Dashboard:
TThe final dashboard which includes all the charts. You can change the view of map or bar chart by using the parameters.