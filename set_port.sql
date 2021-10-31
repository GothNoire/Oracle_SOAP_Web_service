select comp_id, version from dba_registry where comp_id = 'XML'; -- check xml vesrion

SELECT dbms_xdb.gethttpport() AS http_port FROM dual; --Проверка текущего порта для HTTP.
-- устанавливаем порт 8080
Begin
dbms_xdb.sethttpport(8080);
end;

