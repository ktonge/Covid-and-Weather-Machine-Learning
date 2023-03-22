
CREATE TABLE "county_weather" (
	"index" int NOT NUll,
    "date" date   NOT NULL,
    "county" varchar(10)   NOT NULL,
    "state" varchar(10)   NOT NULL,
    "temp_mean(c)" float,
    "precip_sum(mm)" float,
    "wind_max(km/h)" float,
    "min_humidity(%)" float,
    "max_humidity(%)" float,
    "mean_humidity(%)" float,
	PRIMARY KEY ("index")
);

CREATE TABLE "sparse_county_covid" (
    "index" int NOT NULL,
    "date" date NOT NULL,
    "county" varchar NOT NULL,
    "state" varchar NOT NULL,
    "total_cases" int,
    "new_cases" int,
    "future_delta7" int,
    "future_delta14" int
    PRIMARY KEY ("index")
);

CREATE TABLE "dense_county_covid" (
    "index" int NOT NULL,
    "date" date NOT NULL,
    "county" varchar NOT NULL,
    "state" varchar NOT NULL,
    "total_cases" int,
    "new_cases" int,
    "future_delta7" int,
    "future_delta14" int
    PRIMARY KEY ("index")
);
