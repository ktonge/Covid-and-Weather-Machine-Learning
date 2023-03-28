-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "county_pop" (
    "index" int   NOT NULL,
    "county" varchar(25) UNIQUE  NOT NULL,
    "state" varchar(25)   NOT NULL,
    "avg_household" FLOAT   NULL,
    "total_pop" INT   NULL,
    "pop_dens(/sqmi)" FLOAT   NULL,
    "nchs_code_2013" INT   NULL,
    PRIMARY KEY ("county")
);

CREATE TABLE "county_weather" (
    "index" int   NOT NULL,
    "date" date   NOT NULL,
    "county" varchar(25)   NOT NULL,
    "state" varchar(25)   NOT NULL,
    "temp_mean(c)" float   NULL,
    "precip_sum(mm)" float   NULL,
    "wind_max(km/h)" float   NULL,
    "min_humidity(%)" float   NULL,
    "max_humidity(%)" float   NULL,
    "mean_humidity(%)" float   NULL,
    FOREIGN KEY("county") REFERENCES "county_pop" ("county")
);

CREATE TABLE "sparse_county_covid" (
    "index" int   NOT NULL,
    "date" date   NOT NULL,
    "county" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "total_cases" int   NULL,
    "new_cases" int   NULL,
    "future_delta7" int   NULL,
    "future_delta14" int   NULL,
    FOREIGN KEY("county") REFERENCES "county_pop" ("county")
);

CREATE TABLE "dense_county_covid" (
    "index" int   NOT NULL,
    "date" date   NOT NULL,
    "county" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "total_cases" int   NULL,
    "new_cases" int   NULL,
    "future_delta7" int   NULL,
    "future_delta14" int   NULL,
    FOREIGN KEY("county") REFERENCES "county_pop" ("county")
);


