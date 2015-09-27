CREATE OR REPLACE PACKAGE BODY getcatalog AS
-------------------------------------------------------------------------------

procedure zodiacSign(pZodiacSignCatalog  out sys_refcursor) as
  -- obtiene todos los tipos de signo zodiacal  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pZodiacSignCatalog for
         select ZODIACSIGNID as typeNameID, ZODIACSIGNNAME as typeName
         from zodiacSignCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       
       END;
       
-------------------------------------------------------------------------------

procedure ageRange(pAgeRangeCatalog  out sys_refcursor) as
  -- obtiene todos los tipos de reango de edad  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pAgeRangeCatalog for
         select rangeID as typeNameID, ageRange as typeName
         from ageRangeCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure bodyType (pBodyTypeCatalog  out sys_refcursor) as
  -- obtiene todos los tipos de cuerpo  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pBodyTypeCatalog for
         select BODYTYPEID as typeNameID, BODYTYPENAME as typeName
         from bodyTypeCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
         
       END;
       
-------------------------------------------------------------------------------

procedure exercisefrequency (pExerciseFrequencyCatalog  out sys_refcursor) as
  -- obtiene todos los tipos de frecuencia de ejercicio  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pExerciseFrequencyCatalog for
         select EXERCISEFREQID as typeNameID, EXERCISEFREQNAME as typeName
         from exerciseFrequencyCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;

-------------------------------------------------------------------------------

procedure eyeColor (pEyeColorCatalog  out sys_refcursor) as
  -- obtiene todos los tipos de color de ojos  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pEyeColorCatalog for
         select EYECOLORID as typeNameID, EYECOLOR as typeName
         from eyeColorCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure gender (pGenderCatalog  out sys_refcursor) as
  -- obtiene todos los tipos de g�nero  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pGenderCatalog for
         select GENDERID as typeNameID, GENDER as typeName
         from genderCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
-------------------------------------------------------------------------------

procedure hairColor (pHairColorCatalog  out sys_refcursor) as
  -- obtiene todos los tipos de color de cabello  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pHairColorCatalog for
         select HAIRCOLORID as typeNameID, HAIRCOLOR as typeName
         from hairColorCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure hobbie (pHobbieCatalog  out sys_refcursor, pHobbie out number) as
  -- obtiene todos los tipos de hobbies  y regresa los nombres en el sys_refcursor.
       BEGIN
         select count(*) into pHobbie
         from hobbieCatalog;
         
         open pHobbieCatalog for
         select HOBBIEID as typeNameID, HOBBIENAME as typeName
         from hobbieCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure interest (pInterestCatalog  out sys_refcursor, pInterest out number) as
  -- obtiene todos los tipos de intereses  y regresa los nombres en el sys_refcursor.
       BEGIN
         select count(*) into pInterest
         from interestCatalog;
         
         open pInterestCatalog for
         select INTERESTID as typeNameID, INTERESTNAME as typeName
         from interestCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure languages (pLanguageCatalog  out sys_refcursor, pLanguages out number) as
 -- obtiene todos los tipos de lenguages  y regresa los nombres en el sys_refcursor.  
       BEGIN
         select count(*) into pLanguages
         from languageCatalog;
         
         
         open pLanguageCatalog for
         select LANGUAGECODE as typeNameID, LANGUAGENAME as typeName
         from languageCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure relationShipStatus (pRelationShipStatusCatalog  out sys_refcursor) as
   -- obtiene todos los tipos de usuarios  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pRelationShipStatusCatalog for
         select RELATIONSHIPSTATUSID as typeNameID, RELATIONSHIPNAME as typeName
         from relationShipStatusCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure religion (pReligionCatalog  out sys_refcursor) as
   -- obtiene todos los tipos de religion y regresa los nombres en el sys_refcursor.
       BEGIN
         open pReligionCatalog for
         select RELIGIONID as typeNameID, RELIGIONNAME as typeName
         from religionCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure sexualOrientation (pSexualOrientationCatalog  out sys_refcursor) as
   -- obtiene todos los tipos de orientacion sexual  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pSexualOrientationCatalog for
         select ORIENTATIONID as typeNameID, ORIENTATIONNAME as typeName
         from sexualOrientationCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure skinColor (pSkinColorCatalog  out sys_refcursor) as
   -- obtiene todos los tipos de color de piel y regresa los nombres en el sys_refcursor.
       BEGIN
         open pSkinColorCatalog for
         select SKINCOLORID as typeNameID, SKINCOLOR as typeName
         from skinColorCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------

procedure userType (pUserTypeCatalog  out sys_refcursor) as
  -- obtiene todos los tipos de usuarios  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pUserTypeCatalog for
         select USERTYPENAME as typeNameID, USERTYPEID as typeName
         from userTypeCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
       
-------------------------------------------------------------------------------
procedure City (pCountryName in varchar2, pcityCatalog  out sys_refcursor) as
  --con el id del pais obtiene todas las ciudades del mismo y las regresa en el sys_refcursor.       
       BEGIN
         open pcityCatalog for
         select cityID as typeNameID, cityName as typeName
         from cityCatalog
         where Citycatalog.Countryid = (select countryid from countrycatalog cc where cc.countryname = pCountryName)
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
-------------------------------------------------------------------------------
procedure Country (pCountryCatalog  out sys_refcursor) as
  -- obtiene todos los paises  y regresa los nombres en el sys_refcursor.
       BEGIN
         open pCountryCatalog for
         select COUNTRYID as typeNameID, COUNTRYNAME as typeName
         from countryCatalog
         order by typeName;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
-------------------------------------------------------------------------------
procedure NumberofCountries (pNumberofCountries  out number) as
  -- obtiene todos los paises  y regresa los nombres en el sys_refcursor.
       BEGIN
         select count(*) into pNumberofCountries
         from countryCatalog;
         Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Catalog no found:');
       END;
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
END getCatalog;
