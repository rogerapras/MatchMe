CREATE TABLE bodyTypeCatalog
  (
    bodyTypeID   NUMBER (1) NOT NULL ,
    bodyTypeName VARCHAR2 (30) NOT NULL
  ) ;
ALTER TABLE bodyTypeCatalog ADD CONSTRAINT bodyTypeCatalogPK PRIMARY KEY ( bodyTypeID ) ;
