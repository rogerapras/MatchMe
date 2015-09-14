Create or replace procedure updatePersonBirthday (pPersonID number, pBirthday date)
as
       BEGIN        
           UPDATE Person
           SET Birthday = pBirthday
           WHERE pPersonID = personID;
         
        Exception
         WHEN NO_DATA_FOUND THEN
              DBMS_OUTPUT.PUT_LINE ('Person no found:' || pPersonID);
         --WHEN OTHERS THEN
           --   DBMS_OUTPUT.PUT_LINE ('Unexpected error');
             -- RAISE;
         commit;

       END;
