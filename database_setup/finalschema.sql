-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "county_weather" (
    "date" date   NOT NULL,
    "county" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "temp_mean(c)" int ,
    "precip_sum(mm)" int,
    "wind_max(km/h)" int,
    "min_humidity(%)" int,
    "max_humidity(%)" int,
    "mean_humidity(%)" int,
    PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "sparse_county_covid" (
    "date" date   NOT NULL,
    "county" varchar   NOT NULL,
    "state" varchar NOT NULL,
    "total_cases" int,
    "new_cases" int,
    "future_delta7" int,
    "future_delta14" int,
    PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "dense_county_covid" (
    "date" date   NOT NULL,
    "county" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "total_cases" int,
    "new_cases" int,
    "future_delta7" int,
    "future_delta14" int,
    PRIMARY KEY (
        "date"
     )
);

ALTER TABLE "sparse_county_covid" FOREIGN KEY("date", "county", "state")
REFERENCES "county_weather" ("date", "county", "state");

ALTER TABLE "dense_county_covid" FOREIGN KEY("date", "county", "state")
REFERENCES "county_weather" ("date", "county", "state");

