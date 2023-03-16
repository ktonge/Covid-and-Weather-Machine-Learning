-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

-- Group 2 Database Schema Outline
CREATE TABLE [Covid_Data] (
    [date] int  NOT NULL ,
    [city] string  NOT NULL ,
    [total_cases] int  NOT NULL ,
    [new_cases] int  NOT NULL ,
    [delta7] int  NOT NULL ,
    [delta14] int  NOT NULL ,
    CONSTRAINT [PK_Covid_Data] PRIMARY KEY CLUSTERED (
        [date] ASC,[city] ASC,[total_cases] ASC,[new_cases] ASC,[delta7] ASC,[delta14] ASC
    )
)

CREATE TABLE [Weather_Data] (
    [date] int  NOT NULL ,
    [city] string  NOT NULL ,
    [temp] int  NOT NULL ,
    [windmph] int  NOT NULL ,
    [humidity] int  NOT NULL ,
    [precip] int  NOT NULL ,
    CONSTRAINT [PK_Weather_Data] PRIMARY KEY CLUSTERED (
        [temp] ASC,[windmph] ASC,[humidity] ASC,[precip] ASC
    )
)

ALTER TABLE [Weather_Data] WITH CHECK ADD CONSTRAINT [FK_Weather_Data_date_city] FOREIGN KEY([date], [city])
REFERENCES [Covid_Data] ([date], [city])

ALTER TABLE [Weather_Data] CHECK CONSTRAINT [FK_Weather_Data_date_city]

COMMIT TRANSACTION QUICKDBD