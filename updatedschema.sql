-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Group 2 Database Schema Outline
CREATE TABLE dense_county_covid (
    date date NOT NULL ,
    county varchar(15) NOT NULL ,
    state varchar(12) NOT NULL ,
    total_cases int  NOT NULL ,
    new_cases int,
    delta7 int,
    delta14 int,
    PRIMARY KEY (county));

CREATE TABLE Weather_Data (
    date date NOT NULL ,
    county varchar(15) NOT NULL
    temp int  NOT NULL ,
    windmph int  NOT NULL ,
    humidity int  NOT NULL ,
    precip int  NOT NULL ,
    PRIMARY KEY (county)
    FOREIGN KEY (date) references Covid_Data (date) ,
    FOREIGN KEY (county) references Covid_Data (county));
  