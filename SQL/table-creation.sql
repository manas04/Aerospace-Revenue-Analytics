 --  Table creation 
 -- parts table
 
 create table parts(
 part_id varchar(20) primary key,
 part_name varchar(150),
 part_category varchar(100),
 manufacturer varchar(100),
 base_price_usd numeric(12,2),
 competible_models text
 )
 
 -- Airline table
 create table airlines (
 airline varchar(150) primary key,
 country varchar(100),
 region varchar(100),
 fleet_size interval 
 )
 
 
