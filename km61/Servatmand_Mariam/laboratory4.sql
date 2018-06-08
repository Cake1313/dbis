-- LABORATORY WORK 4
-- BY Servatmand_Mariam
Создат курсор, который по телефону жителя( citizen )возвращает улицу, где он живет (street)

DECLARE
CURSOR PH_STR_CURSOR(phone_number.citizen.%type)
is
select street.house

from house join citizen
on H_ID.citizen_house=h_id.house
person_id.citizen_house=person_id.citizen
JOIN CITIZEN_HOUSE
		
BEGIN
	OPEN PH_STR_CURSOR('');
LOOP
FETCH PH_STR_CURSOR into street_citizen
if(PH_STR_CURSOR%found) then
dbms_output.put_line('street;'||street_citizen
);
else 
exit
end loop;


2. Создать триггер, который при удалении дома удаляет всех жителей.
CREATE OR REPLACE TRIGGER DELTRIG
AFTER DELETE ON HOUSE
for each row 
declare citizen_name cutizen_trigger_name%TYPE
begin 
citizen_name:=null
end



3. Создать курсор, который при изменении имя жителя(citizen) выселяет всех из дома.
CREATE OR REPLACE TRIGGER CHANGE_DEL_TRIG
AFTER ALTER ON CITIZEN
for each row 
BEGIN
	if(:old.citizen_name!=^new.citizen_name) then 
update street_citizen.house=null
where(person_id.citizen_house=person_id.citizen)
end;
