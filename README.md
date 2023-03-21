
# Group 2 Final Project 
# Deliverable 1
## Project Design  
As a group we're looking at combining weather and Covid 19 datasets.  We are hoping to use multiple linear regression to determine what, if any effect, does weather have on the covid infection rate. 
When looking at databases, we discovered that our most immediate challenge would be determining scope of the study.  There are massive amounts of weather and covid data. We started doing research into pre-existing papers on the topic. We started out looking at the relationship between weather and the spread of Covid-19, after reviewing existing research, we chose to create three tables: one for county weather data and two for covid data (separated into sparse and dense by population density in the county).  

### Working with the Covid Data
We found our covid data first, which was organized by counties.  We were choosing counties to compare, and initially struggled with what counties to compare.  We chose the following criteria: population density and covid mask mandates. To make our counties all comparable, we only chose counties that did instate a mask mandate. We chose two selections of counties: counties with a population density of 1000-2999 people/square mile as our sparse group, and counties with a population density of 4000-6999 people/square mile as our dense group.  We used data collected by the US census to determine county population density.
Our two county groups were:

Dense Counties: Baltimore City, Maryland; Essex, New Jersey; Cook, Illinois; Union, New Jersey; Norfolk, Virginia; Nassau, New York; Harrisonburg, Virginia
Sparse Counties: Fairfax County, Virginia; Camden County, New Jersey; Harris County, Texas; Franklin County, Ohio; Marion County, Indiana; Dekalb County, Georgia; Duval County, Florida; Wake County, North Carolina; Bexar County, Texas 

We then collected and cleaned the covid data, including creating two new columns, future_delta7 and future_delta14 which represent the change in number of covid cases from today to 7 days and 14 days from today respectively.We were looking to answer questions about how does the weather in the past impact covid cases in the future.  Does the temperature two weeks previously affect the covid infection rate? 

## The Questions
Is there a correlation between temperature and the number of COVID-19 cases?
How does the relationship between temperature and COVID-19 cases differ across different cities or regions?
Can we use machine learning models to predict the number of COVID-19 cases based on temperature and other variables such as population density or public transit use?

