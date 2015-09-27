CREATE OR REPLACE PACKAGE BODY inserts AS
-------------------------------------------------------------------------------
procedure AgeRangeCat (pRangeID number, pAgeRange varchar2)
  --inserta en la tabla AgeRangeCat de rango de edad
as
       BEGIN
         insert into agerangecatalog (rangeID,ageRange)
         values(pRangeID,pAgeRange);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Age Range ID error ');
         --WHEN OTHERS THEN
           --   DBMS_OUTPUT.PUT_LINE ('Unexpected error');
             -- RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure BodyTypeCat (pBodyTypeID number, pBodyTypeName varchar2)
    --inserta en la tabla BodyTypeCat los tipos de cuerpos
as
       BEGIN
         insert into bodyTypeCatalog (BodyTypeID,BodyTypeName)
         values(pBodyTypeID,pBodyTypeName);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Body Type ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure CityCat(pCityName varchar2, pCountryID varchar2)
   --inserta en la tabla CityCat las ciudades ligados a paises
as
       BEGIN
         insert into cityCatalog (cityid,cityName,countryID)
         values(cityID_seq.Nextval,pCityName,pCountryID);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('City error ');
         --WHEN OTHERS THEN
           --   DBMS_OUTPUT.PUT_LINE ('Unexpected error');
             -- RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
 procedure Country (pCountryID varchar2, pCountryName varchar2)
    --inserta en la tabla CityCat las ciudades ligados a paises  
as
       BEGIN
         insert into countryCatalog (countryID,countryName)
         values(pCountryID,pCountryName);

        Exception
         WHEN VALUE_ERROR THEN
              DBMS_OUTPUT.PUT_LINE ('Country error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure EmailsByPerson ( pEmail varchar2, pPersonID number)
      --inserta en la tabla EmailsByPerson las personas por 

as
       BEGIN
         insert into emailsByPerson ( emailID, email, personID)
         values(EmailID_seq.Nextval,pEmail,pPersonID);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Email ID error ');
         --WHEN OTHERS THEN
              --DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              --RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure Event ( pEventName varchar2, pEventDate date, pCityID number)
as
       BEGIN
         insert into event (eventID, eventName, eventDate, CityID)
         values(eventID_seq.Nextval,pEventName,pEventDate, pCityID);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Event ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;

-------------------------------------------------------------------------------
 procedure eventsbyperson (pEventID number, pPersonID number)
as
       BEGIN
         insert into eventsbyperson (eventID,personID)
         values(pEventID,pPersonID);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Event by Person error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure ExerciseFrequencyCat (pexercisefreqName varchar2)
as
       BEGIN
         insert into Exercisefrequencycatalog (exercisefreqID,exercisefreqName)
         values(exercisefrequency_seq.nextval,pexercisefreqName);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Exercise Frequency error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure EyeColorCat (pEyeColor varchar2)
as
       BEGIN
         insert into eyeColorCatalog (EyeColorID,EyeColor)
         values(EyeColorID_seq.Nextval,pEyeColor);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Eye Color ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;

-------------------------------------------------------------------------------
 procedure GenderCat ( pGender varchar2)
as
       BEGIN
         insert into genderCatalog (genderID,gender)
         values(genderID_seq.nextval,pGender);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Gender ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure HairColorCat (pHairColor varchar2)
as
       BEGIN
         insert into hairColorCatalog (hairColorID,hairColor)
         values(HairColorID_seq.nextval,pHairColor);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Hair Color ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
 procedure HobbieCat (pHobbieName varchar2)
as
       BEGIN
         insert into hobbieCatalog (HobbieID,HobbieName)
         values(HobbieID_seq.nextval,pHobbieName);

        Exception
         WHEN VALUE_ERROR THEN
              DBMS_OUTPUT.PUT_LINE ('Hobbie ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure HobbiesByPerson (pHobbieID number,pPersonID number)
as
       BEGIN
         insert into HobbiesByPerson (hobbieID,personID)
         values(pHobbieID,pPersonID);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Hobbie ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure InterestCat (pInterestName varchar2)
as
       BEGIN
         insert into interestCatalog (InterestID,InterestName)
         values(InterestID_seq.nextval,pInterestName);

        Exception
         WHEN VALUE_ERROR THEN
              DBMS_OUTPUT.PUT_LINE ('Interest ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
 procedure Interestsbyperson (pInterestID number, pPersonID number)
as
       BEGIN
         insert into interestsbyperson (interestID,personID)
         values(pInterestID,pPersonID);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Interests by Person error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;

-------------------------------------------------------------------------------
procedure LanguageCat (pLanguageCode varchar2, pLanguageName varchar2)
as
       BEGIN
         insert into languagecatalog (LanguageCode,LanguageName)
         values(pLanguageCode,pLanguageName);

        Exception
         WHEN VALUE_ERROR THEN
              DBMS_OUTPUT.PUT_LINE ('Language Code error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure LanguagesByPerson (pLanguageCode varchar2, pPersonID number)
as
       BEGIN
         insert into languagesByPerson (languageCode,personID)
         values(pLanguageCode,pPersonID);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Language ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure MatchedPersons (pMatchedPerson number, pMatcher number)
as
       BEGIN
         insert into matchedPersons (matchedPerson, matcher)
         values(pMatchedPerson,pMatcher);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Matched Person ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure Parameter (pParameterID number, pParameterName varchar2, pParameterValue number, pParameterDescription varchar2)
as
       BEGIN
         insert into parameter (parameterID, parameterName, parameterValue, parameterDescription)
         values(pParameterID,pParameterName, pParameterValue, pParameterDescription);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Parameter ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure RelationShipStatusCat (pRelationShipStatusName varchar2)
as
       BEGIN
         insert into relationShipStatusCatalog (relationShipStatusID,relationShipName)
         values(RelationShipStatusID_seq.nextval,pRelationShipStatusName);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Relationship Status ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure ReligionCat (pReligionName varchar2)
as
       BEGIN
         insert into religionCatalog (ReligionID,ReligionName)
         values(ReligionID_seq.nextval,pReligionName);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Religion ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
 procedure SexualOrientationCat (pOrientationName varchar2)
as
       BEGIN
         insert into sexualOrientationCatalog (OrientationID,OrientationName)
         values(SexualOrientationID_seq.nextval,pOrientationName);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Sexual Orientation ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
procedure SkinColorCat (pSkinColor varchar2)
as
       BEGIN
         insert into skinColorCatalog (skinColorID,skinColor)
         values(SkinColorID_seq.Nextval,pSkinColor);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Skin Color ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;

-------------------------------------------------------------------------------
procedure Visitlog (logDate date, pVisitor number, pVisitedPerson number)
as
       BEGIN
         insert into visitLog (LogNumber,logDate,Visitor,Visitedperson)
         values(VisitLogNumber_seq.nextval,logDate,pVisitor,pVisitedPerson);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Visit Log error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
 procedure Winkperson (pwinker number, pWinkedPerson number)
as
       BEGIN
         insert into winkPerson (WinkID,winker,winkedPerson)
         values(WinkID_seq.nextval,pwinker,pWinkedPerson);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Wink ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;

-------------------------------------------------------------------------------
procedure ZodiacSignCat (pZodiacSignName varchar2)
as
       BEGIN
         insert into zodiacSignCatalog (zodiacSignID,zodiacSignName)
         values(ZodiacSignID_seq.nextval, pZodiacSignName);

        Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Zodiac Sign ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;

-------------------------------------------------------------------------------
 procedure userTypeCat (pUserTypeName Varchar2, puserTypeID number)
as
       BEGIN
         insert into userTypeCatalog (UserTypeName,userTypeID)
         values(pUserTypeName, puserTypeID);

       Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Type UserID error ' || puserTypeID);
        -- WHEN OTHERS THEN
          --    DBMS_OUTPUT.PUT_LINE ('Unexpected error');
            --  RAISE;
         commit;

       END;
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
procedure Person (puserNameID number, pFirstName varchar2, pLastName1 varchar2,
                  pLastName2 varchar2, pBirthday date, pRegisterDate date,
                  pNickName varchar2,pAddress varchar2,pTagline varchar2,
                  pHighSchool varchar2,pUniversity varchar2,pWorkPlace varchar2,  
                  pSalary number,pHeight number,pSmoker number, pNumberOfKids number, 
                  pInterestedInKids number, pLikesPets number,pEyeColorID number,
                  pGenderID number, pOrientationID number, pRangeID number, 
                  pSkinColorID number, pHairColorID number, pReligionID number,
                  pZodiacSignID number, pRelationShipStatusID number, pBodyTypeID number,
                  pExerciseFreqID number, pCityID number,pfoundpartner number,pgotmarried number,
                  pdrinker number)
                                              
                                       
as
       BEGIN
         insert into person (userNameID, firstName, lastName1,
                             lastName2, birthday, registerDate,
                             nickName, address, tagline,
                             highSchool, university, workPlace,  
                             salary, height, smoker, numberOfKids, 
                             interestedInKids, likesPets, eyeColorID,
                             genderID,  orientationID, rangeID,
                             skinColorID, hairColorID, religionID,
                             zodiacSignID, relationShipStatusID,
                             bodyTypeID, exerciseFreqID, cityID,
                             foundpartner,gotmarried,drinker)

         values(puserNameID, pFirstName, pLastName1,
                pLastName2, pBirthday, pRegisterDate,
                pNickName,pAddress,pTagline,
                pHighSchool,pUniversity,pWorkPlace,  
                pSalary,pHeight,pSmoker, pNumberOfKids, 
                pInterestedInKids, pLikesPets,pEyeColorID,
                pGenderID,  pOrientationID,
                pRangeID, pSkinColorID, pHairColorID,
                pReligionID, pZodiacSignID, pRelationShipStatusID,
                pBodyTypeID, pExerciseFreqID, pCityID,
                pfoundpartner,pgotmarried,pdrinker);

       Exception
         WHEN INVALID_NUMBER THEN
              DBMS_OUTPUT.PUT_LINE ('Person ID error ');
         WHEN OTHERS THEN
              DBMS_OUTPUT.PUT_LINE ('Unexpected error');
              RAISE;
         commit;

       END;

-------------------------------------------------------------------------------


END inserts;
