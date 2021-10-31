-- Выполнять под SYS
DECLARE
    l_servlet_name      VARCHAR2(32)  := 'orawsv';
BEGIN
    -- Регистрация сервлета orawsv для активации Native Web Services
    DBMS_XDB.deleteServletMapping(l_servlet_name);
    DBMS_XDB.deleteServlet(l_servlet_name);
 
    DBMS_XDB.addServlet( NAME     => l_servlet_name
                       , LANGUAGE => 'C'
                       , DISPNAME => 'Oracle Query Web Service'
                       , DESCRIPT => 'Servlet for issuing queries as a Web Service'
                       , SCHEMA   => 'XDB');
 
    DBMS_XDB.addServletSecRole( SERVNAME => l_servlet_name
                              , ROLENAME => 'XDB_WEBSERVICES'
                              , ROLELINK => 'XDB_WEBSERVICES');
 
    DBMS_XDB.addServletMapping( PATTERN => '/orawsv/*'
                              , NAME    => l_servlet_name);
    COMMIT;
END;
/

