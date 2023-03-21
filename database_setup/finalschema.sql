
CREATE TABLE "county_weather" (
	"index" int,
    "date" date   NOT NULL,
    "county" varchar(10)   NOT NULL,
    "state" varchar(10)   NOT NULL,
    "temp_mean(c)" int ,
    "precip_sum(mm)" int,
    "wind_max(km/h)" int,
    "min_humidity(%)" int,
    "max_humidity(%)" int,
    "mean_humidity(%)" int,
	PRIMARY KEY ("date")
);

CREATE TABLE "sparse_county_covid" (
    "date" date   NOT NULL,
    "county" varchar   NOT NULL,
    "state" varchar NOT NULL,
    "total_cases" int,
    "new_cases" int,
    "future_delta7" int,
    "future_delta14" int
);

CREATE TABLE "dense_county_covid" (
    "date" date   NOT NULL,
    "county" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "total_cases" int,
    "new_cases" int,
    "future_delta7" int,
    "future_delta14" int
);
