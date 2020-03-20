select * from crime_scene_report where date="20180115" and city="SQL City" and type="murder";
select * from person where address_street_name="Franklin Ave" and name like "Annabel%";
select * from person where address_street_name="Northwestern Dr" order by address_number desc limit 1;
select * from interview where person_id="16371";
select * from interview where person_id="14887";
select * from get_fit_now_check_in where membership_id like "48Z%";
select * from get_fit_now_member where id like "48Z%";
select * from person where id="67318";
select * from drivers_license where id="423327";
select * from interview where person_id="67318";
select * from drivers_license where car_make="Tesla";
select * from person where license_id="202298";
select * from facebook_event_checkin where person_id="99716";
select * from income where ssn="987756388";
select * from income where ssn="961388910";
INSERT INTO solution VALUES (1, 'Jeremy Bowers'); SELECT value FROM solution;
INSERT INTO solution VALUES (1, 'Miranda Priestly'); SELECT value FROM solution;

