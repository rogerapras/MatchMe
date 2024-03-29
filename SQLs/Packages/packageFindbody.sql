CREATE OR REPLACE PACKAGE BODY find AS
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
procedure findName (pName in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pname all person when pname is in firstName
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country        
  from person, citycatalog, countrycatalog
  where firstName like '%' || pName || '%'
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end findName;
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

procedure lastName (pLastName in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter lastName all person when pLastName is in lastName
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country        
  from person, citycatalog, countrycatalog
  where lastName1 like '%' || pLastName || '%'
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end lastName;
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

procedure lastName2 (pLastName2 in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pLastName2 all person when pLastName2 is in lastName2
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country        
  from person, citycatalog, countrycatalog
  where lastName2 like '%' || pLastName2 || '%'
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end lastName2;
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

procedure nickName (pNickName in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pNickName all person when pNickName is in nickName
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2, person.nickname as nName,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country        
  from person, citycatalog, countrycatalog
  where nickName like '%' || pNickName || '%'
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end nickName;
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

procedure city (pCity in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pCity all person when pCity is in City
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country        
  from person, citycatalog, countrycatalog
  where citycatalog.cityname like '%' || pCity || '%'
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end city;

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

procedure country (pCountry in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pCountry all person when pCountry is in Country
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country        
  from person, citycatalog, countrycatalog
  where countrycatalog.countryname like '%' || pCountry || '%'
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end country;
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

procedure hobbie (pHobbieID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pHobbieID all person when pHobbieID is in HobbieID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country     
  from person, citycatalog, countrycatalog, hobbiesbyperson
  where hobbiesbyperson.hobbieid = pHobbieID
  and person.usernameid = hobbiesbyperson.personid
  and citycatalog.cityid = person.cityid 
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
 
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');

end hobbie;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
procedure ageRange (pAgeRangeID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pAgeRangeID all person when pAgeRangeID is in ageRange
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, agerangecatalog
  where agerangecatalog.rangeid = pAgeRangeID
  and person.rangeid = pAgeRangeID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end ageRange;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
procedure interest (pInterestID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pInterestID all person when pInterestID is in InterestID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country     
  from person, citycatalog, countrycatalog, interestsbyperson
  where interestsbyperson.interestid = pInterestID
  and person.usernameid = interestsbyperson.personid
  and citycatalog.cityid = person.cityid 
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');

end interest;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
procedure languages (planguageID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter planguageID all person when planguageID is in languageID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country     
  from person, citycatalog, countrycatalog, languagesbyperson
  where languagesbyperson.languagecode = planguageID
  and person.usernameid = languagesbyperson.personid
  and citycatalog.cityid = person.cityid 
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
 
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');

end languages;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
procedure bodyType (pBodyTypeID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pBodyTypeID all person when pBodyTypeID is in BodyTypeID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, bodytypecatalog
  where bodytypecatalog.bodytypeid = pBodyTypeID
  and person.bodytypeid = pBodyTypeID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end bodyType;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
procedure Exercisefrequency (pExercisefrequencyID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pExercisefrequencyID all person when pExercisefrequencyID is in ExercisefrequencyID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, exercisefrequencycatalog
  where exercisefrequencycatalog.exercisefreqid = pExercisefrequencyID
  and person.exercisefreqid = pExercisefrequencyID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end Exercisefrequency;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
procedure eyeColor (peyeColorID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter peyeColorID all person when peyeColorID is in eyeColorID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, eyecolorcatalog
  where eyecolorcatalog.eyecolorid = peyeColorID
  and person.eyecolorid = peyeColorID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end eyeColor;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
procedure gender (pgenderID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pgenderID all person when pgenderID is in genderID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, gendercatalog
  where gendercatalog.genderid = pgenderID
  and person.genderid = pgenderID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end gender;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
procedure hairColor (pHairColorID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pHairColorID all person when pHairColorID is in hairColor
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, haircolorcatalog
  where haircolorcatalog.haircolorid = pHairColorID
  and person.haircolorid = pHairColorID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end hairColor;
------------------------------------------------------------------------------
------------------------------------------------------------------------------

procedure relationshipStatus (pRelationshipStatusID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pRelationshipStatusID all person when pRelationshipStatusID is in RelationshipStatusID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, relationshipstatuscatalog
  where relationshipstatuscatalog.relationshipstatusid = pRelationshipStatusID
  and person.relationshipstatusid = pRelationshipStatusID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end relationshipStatus;
------------------------------------------------------------------------------
------------------------------------------------------------------------------

procedure religion (pReligionID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pReligionID all person when pReligionID is in ReligionID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, religioncatalog
  where religioncatalog.religionid = pReligionID
  and person.religionid = pReligionID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end religion;
------------------------------------------------------------------------------
------------------------------------------------------------------------------

procedure sexualOrientation (pSexualOrientationID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pSexualOrientationID all person when pSexualOrientationID is in SexualOrientationID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, sexualorientationcatalog
  where sexualorientationcatalog.orientationid = pSexualOrientationID
  and person.orientationid = pSexualOrientationID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end sexualOrientation;
------------------------------------------------------------------------------
------------------------------------------------------------------------------

procedure skinColor (pSkinColorID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pSkinColorID all person when pSkinColorID is in SkinColorID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, skincolorcatalog
  where skincolorcatalog.skincolorid = pSkinColorID
  and person.skincolorid = pSkinColorID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end skinColor;
------------------------------------------------------------------------------
------------------------------------------------------------------------------

procedure zodiacSign (pZodiacSignID in varchar2, pUserIDs  out sys_refcursor) as
   --obtein through the parameter pZodiacSignID all person when pZodiacSignID is in ZodiacSignID
   --and return for the out parameter sys_refcursor with the next data
   --Name, lastName, lastName2, age, tagline, city and country .
begin
  open pUserIDs for
  select person.userNameID as UNID, person.firstName as fName, person.lastName1 as lname, person.lastName2 as lName2,
         FLOOR(months_between(TRUNC(sysdate),birthday)/12) as age,
         person.tagline as tag, citycatalog.cityname as city,
         countrycatalog.countryname as country   
  from person, citycatalog, countrycatalog, zodiacsigncatalog
  where zodiacsigncatalog.zodiacsignid = pZodiacSignID
  and person.zodiacsignid = pZodiacSignID
  and citycatalog.cityid = person.cityid
  and countrycatalog.countryid = (select countryid from citycatalog where citycatalog.cityid = person.cityid)
  order by fName,lname;
  
   Exception
     WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE (' ');


end zodiacSign;
------------------------------------------------------------------------------
------------------------------------------------------------------------------
END find;
