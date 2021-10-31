--Тестовый метод
CREATE OR REPLACE PROCEDURE xmlweb.SQUARE ( parm IN OUT NUMBER)
AS
BEGIN
parm := parm * 2;
END;


declare url varchar2 (1000);
BEGIN
url := 'http://XMLWEB:xmlweb@desktop-jluqgv0:' || dbms_xdb.getHttpPort() || '/orawsv/XMLWEB/SQUARE?wsdl';
dbms_output.put_line (url);
END;
-- Тест
SELECT httpuritype( 'http://XMLWEB:xmlweb@desktop-jluqgv0:' || dbms_xdb.getHttpPort() || '/orawsv/XMLWEB/SQUARE?wsdl' ).getXML() FROM dual;
