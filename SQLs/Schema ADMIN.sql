-- Schema solo se puede conectar desde system
CREATE USER ADMINISTRATOR
  IDENTIFIED BY ADMINISTRATOR
  DEFAULT TABLESPACE  ADMIN_Data
  QUOTA 10M ON ADMIN_Data
  TEMPORARY TABLESPACE temp
  QUOTA 5M ON system ;
  -------------------
  CREATE ROLE ADMINISTRATOR --no funciono
  IDENTIFIED BY ADMINISTRATOR;
  
  -------------------Permisos------------------------
  
  GRANT CONNECT TO ADMINISTRATOR;
  
  -------------------
  grant create session to ADMINISTRATOR;
  grant create table to ADMINISTRATOR;

---para poder crear los indices

  grant create any index to ADMINISTRATOR;  
  
  ---para poder hacer insert en los tablespace.
  
  grant unlimited tablespace to ADMINISTRATOR;
  
  GRANT CREATE VIEW TO ADMINISTRATOR;
  
  GRANT CREATE ANY INDEX TO ADMINISTRATOR;
  
  GRANT DROP PUBLIC SYNONYM TO ADMINISTRATOR;
  
  GRANT UNLIMITED TABLESPACE TO ADMINISTRATOR;
  
  GRANT CREATE PROCEDURE TO ADMINISTRATOR;
  GRANT EXECUTE ON UTILS TO ADMINISTRATOR; --no funciona
  GRANT DEBUG CONNECT SESSION TO ADMINISTRATOR;
  
  GRANT CREATE sequence TO ADMINISTRATOR;
  
  -------------------------------------------------------------------
  --de aqui en adelante son pruebas para la picture
  GRANT create any directory TO ge;
  GRANT drop any directory TO ge;
  CREATE OR REPLACE DIRECTORY imagen_prueba AS 'D:\';
  GRANT READ ON DIRECTORY imagen_prueba TO ge WITH GRANT OPTION;
  GRANT WRITE ON DIRECTORY imagen_prueba TO ge;
  GRANT READ ON DIRECTORY imagen_prueba to PUBLIC;
  
GRANT CREATE sequence TO ge;

--secuencia para manejo de id picture

CREATE SEQUENCE pictureId_seq
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  START WITH 1
  INCREMENT BY 1
  CACHE 20;
