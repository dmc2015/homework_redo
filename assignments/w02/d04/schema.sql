DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS buildings;

CREATE TABLE buildings (
  id integer PRIMARY KEY,
  name varchar(255),
  address varchar(511),
  num_floors integer
);

CREATE TABLE apartments (
  id integer PRIMARY KEY,
  floor integer,
  name varchar(255),
  price integer,
  sqft integer,
  bedrooms integer,
  bathrooms integer,
  building_id integer REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id integer PRIMARY KEY,
  name varchar(255),
  age integer,
  gender varchar(255),
  apartment_id integer REFERENCES apartments(id)
);
