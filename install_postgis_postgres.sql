-- Enable PostGIS (as of 3.0 contains just geometry/geography)
CREATE EXTENSION postgis;
-- enable raster support (for 3+)
CREATE EXTENSION postgis_raster;
-- Enable Topology
CREATE EXTENSION postgis_topology;
-- Enable PostGIS Advanced 3D
-- and other geoprocessing algorithms
-- sfcgal not available with all distributions
CREATE EXTENSION postgis_sfcgal;
-- fuzzy matching needed for Tiger
CREATE EXTENSION fuzzystrmatch;
-- rule based standardizer
CREATE EXTENSION address_standardizer;
-- example rule data set
CREATE EXTENSION address_standardizer_data_us;
-- Enable US Tiger Geocoder
CREATE EXTENSION postgis_tiger_geocoder;

CREATE ROLE admin WITH LOGIN SUPERUSER CREATEDB CREATEROLE PASSWORD 'SOMEPASSWD';
CREATE ROLE bkotewall WITH LOGIN CREATEDB CREATEROLE PASSWORD 'SOMEPASSWD';
CREATE ROLE geogz WITH LOGIN PASSWORD 'geogzChee6tho';
CREATE database geodjangogz ;
GRANT ALL privileges on database geodjangogz to bkotewall ;
GRANT ALL privileges on database geodjangogz to admin ;
GRANT ALL prvilieges on database geodjangogz to geogz ;

