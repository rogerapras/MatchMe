CREATE TABLE cityCatalog
  (
    cityID                   NUMBER (3) NOT NULL ,
    cityName                 VARCHAR2 (50) NOT NULL ,
    countryID                NUMBER (3)
  ) ;
ALTER TABLE cityCatalog ADD CONSTRAINT cityPK PRIMARY KEY ( cityID ) ;

ALTER TABLE cityCatalog ADD CONSTRAINT cityCatalog_countryCatalog_FK FOREIGN KEY ( countryID ) REFERENCES countryCatalog ( countryID );
